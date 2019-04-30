/*
   Eclipse Paho MQTT-JS Utility
   by Elliot Williams for Hackaday article,
*/

// Global variables
var client = null;
var pump_is_on = 0;
// These are configs
var hostname = "broker.mqtt-dashboard.com";
var port = "8000";
var clientId = "mqtt_js_" + parseInt(Math.random() * 100000, 10);
var PUB_topic = "topicenter";
var SUB_topic = "Sensor";

// This is called after the webpage is completely loaded
// It is the main entry point into the JS code
function connect() {
    // Set up the client
    client = new Paho.MQTT.Client(hostname, Number(port), clientId);
    console.info('Connecting to Server: Hostname: ', hostname,
        '. Port: ', port, '. Client ID: ', clientId);

    // set callback handlers
    client.onConnectionLost = onConnectionLost;
    client.onMessageArrived = onMessageArrived;

    // see client class docs for all the options
    var options = {
        onSuccess: onConnect, // after connected, subscribes
        onFailure: onFail // useful for logging / debugging
    };
    // connect the client
    client.connect(options);
    console.info('Connecting...');
}


function onConnect(context) {
    console.log("Client Connected");
    options = {
        qos: 0,
        onSuccess: function(context) {
            console.log("subscribed");
        }
    }
    client.subscribe(SUB_topic, options);
}

function onFail(context) {
    console.log("Failed to connect");
}

function onConnectionLost(responseObject) {
    if (responseObject.errorCode !== 0) {
        console.log("Connection Lost: " + responseObject.errorMessage);
        window.alert("Someone else took my websocket!\nRefresh to take it back.");
    }
}

function onMessageArrived(message) {
    console.log(message.destinationName, message.payloadString);
    var data = JSON.parse(message.payloadString);

    var temperature_heading = document.getElementById("Temp_Display");
    temperature_heading.innerHTML = "Temperature : " + data.Temp + " &deg;C";

    var humidity_heading = document.getElementById("Humidity_Display");
    humidity_heading.innerHTML = "Humidity : " + data.Humi + "%";

    var soil_heading = document.getElementById("Soil_Display");
    soil_heading.innerHTML = "Soil Humidity : " + data.soil_humid + "%";

    var watertemp_heading = document.getElementById("Watertemp_Display");
    watertemp_heading.innerHTML = "Water Temperature : " + data.water_temp + " &deg;C";

    var dust_heading = document.getElementById("dust_Display");

        if(data.dust == 1) {
            dust_heading.innerHTML = "Dust : Clean";
        }
        else {
            dust_heading.innerHTML = "Dust : Dirty";
        }

    if (data.pump == 1) {
        pump_is_on = 1;
    } else {
        pump_is_on = 0;
    }
}

function pump_toggle() {
    if (pump_is_on == 1) {
        var payloadString = '{"pump" : "OFF"}';
        pump_is_on = 0;
    } else {
        var payloadString = '{"pump" : "ON"}';
        pump_is_on = 1;
    }
    // Send messgae
    message = new Paho.MQTT.Message(payloadString);
    message.destinationName = PUB_topic;
    message.retained = false;
    client.send(message);
    console.info('sending: ', payloadString);
}

