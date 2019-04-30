<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>SmartFarm</title>
<link href="css/gg.css" rel="stylesheet">
<link href="css/19TOTY.css" rel="stylesheet">
<link href="css/materialize.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	/* 로그인 버튼 클릭 시 발생하는 함수 */
	$('#l_id').on('click', function(){
		/* 아이디가 ccit이면 */
		if($('#username').val() == 'ccit' && $('#password').val() == 'a1234'){
			alert("스마트팜에 오신걸 환영합니다.");
		/* 아이디가 ccit가 아니면 */
		}else{
			alert("입력하신 정보를 확인해주세요.");
			return false;
		}
		$('form').submit();
	});
});
</script>
</head>

<body>
	<div class="main_section">
		<div class="logo_box">
			<p class="logo_title">SmartFarm</p>
			<p class="sub_title">CCIT Project</p>
			<hr style="width: 50px; height: 2px; background-color: #999999; border: 0; margin: 30px auto;">
			<p class="add_title">Login</p>
		</div>
	</div>
	<div class="user_section">
		<div id="login-page" class="row">
			<div class="col s12 z-depth-4 card-panel" style="margin-top: 0px;">
				<form class="login-form">
					<div class="row margin">
						<div class="input-field col s12">
							<!-- <i class="mdi-social-person-outline prefix"></i> -->
							<img class="login_img" src="img/login_img.png" /> 
							<input id="username" name="username" type="text" style="width: 85%; background-image: url(&amp;quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR4nGP6zwAAAgcBApocMXEAAAAASUVORK5CYII=&amp;quot;); cursor: auto;" />
							<label for="username" data-error="wrong" class="center-align" data-success="right">Username</label>
						</div>
					</div>
					<div class="row margin">
						<div class="input-field col s12">
							<!-- <i class="mdi-action-lock-outline prefix"></i> -->
							<img class="login_img" src="img/password.png" /> 
							<input id="password" name="password" type="password" style="width: 85%; background-image: url(&amp;quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR4nGP6zwAAAgcBApocMXEAAAAASUVORK5CYII=&amp;quot;);" />
							<label for="password">Password</label>
						</div>
					</div>

					
					<div class="row">
						<!-- 로그인 버튼 -->
						<!-- 로그인 버튼 -->
						<!-- 로그인 버튼 -->
						<div class="input-field col s12">
							<a href="http://smart-farm.cf/main"> <input type="button" id="l_id" value="Login"
								style="font-size: 14px; height: 36px; width: 280px; text-align: center; border-radius: 2px; margin-left: -1px; border-style: none; background-color: rgb(46, 70, 88, 1); color: white;">
							</a>
						</div>

						<!-- 새로 추가한 회원가입 버튼 -->
						<!-- 새로 추가한 회원가입 버튼 -->
						<!-- 새로 추가한 회원가입 버튼 -->
						<!-- 새로 추가한 회원가입 버튼 -->
						<div>
							<a href="join.jsp"> <input type="button" id="member_join" value="member_join" style="font-size: 14px; height: 36px; width: 280px; text-align: center; border-radius: 2px; margin-left: -1px; border-style: none; background-color: rgb(46, 70, 88, 1); color: white;">
							</a>
						</div>
						

						<div class="input-field col s12">
							<input type="button" id="authBtn" value="checking..."
								style="font-size: 14px; height: 36px; width: 280px; text-align: center; border-radius: 2px; margin-left: -1px; border-style: none; background-color: rgb(30, 45, 200); color: white;"
								onclick="
                                 if(this.value === 'facebook 로그인'){
                                    // now Logout
                                    FB.login(function(res){
                                       console.log('login =>', res);
                                       checkLoginStatus(res);
                                    });
                                 } else {
                                    // now login
                                    FB.logout(function(res){
                                       console.log('logout =>', res);
                                       checkLoginStatus(res);
                                    });
                                 }
                              ">
						</div>
					</div>

				</form>
			</div>
		</div>
	</div>

	<script src="js/materialize.js"></script>
	<script src="js/materialize.min.js"></script>
	<script src="js/gg.js"></script>
	<script src="js/login.js"></script>
</body>

</html>