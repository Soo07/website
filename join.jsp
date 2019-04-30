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
		if($('.join1').val() == '' || $('.join2').val() == '' || $('.join3').val() == '' || $('.join4').val() == ''){
			alert('정보를 입력해주세요');
			return false;
		}else{
			alert("회원가입이 완료되었습니다.");	
		}
	});
});
</script>
</head>

<body>
	<div class="main_section">
		<div class="logo_box">
			<p class="logo_title"><a href="login.jsp" style="text-decoration: none; color: white;">SmartFarm</a></p>
			<p class="sub_title">CCIT Project</p>
			<hr style="width: 50px; height: 2px; background-color: #999999; border: 0; margin: 30px auto;">
			<p class="add_title">MEMBER_JOIN</p>
		</div>
	</div>
	<div class="user_section">
		<div id="login-page" class="row">
			<div class="col s12 z-depth-4 card-panel" style="margin-top: 0px;">
				<form class="login-form">
					<div class="row margin">
						<div class="input-field col s12">
							<!-- <i class="mdi-action-lock-outline prefix"></i> -->
							<img class="login_img" src="img/password.png" /> 
							<input class="join1" name="password" type="text" style="width: 85%; background-image: url(&amp;quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR4nGP6zwAAAgcBApocMXEAAAAASUVORK5CYII=&amp;quot;);" />
							<label for="password">ID</label>
						</div>
						
						<div class="input-field col s12">
							<!-- <i class="mdi-action-lock-outline prefix"></i> -->
							<img class="login_img" src="img/password.png" /> 
							<input class="join2" name="password" type="password" style="width: 85%; background-image: url(&amp;quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR4nGP6zwAAAgcBApocMXEAAAAASUVORK5CYII=&amp;quot;);" />
							<label for="password">Password</label>
						</div>
						
						<div class="input-field col s12">
							<!-- <i class="mdi-action-lock-outline prefix"></i> -->
							<img class="login_img" src="img/password.png" /> 
							<input class="join3" name="password" type="text" style="width: 85%; background-image: url(&amp;quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR4nGP6zwAAAgcBApocMXEAAAAASUVORK5CYII=&amp;quot;);" />
							<label for="password">NAME</label>
						</div>
						
						<div class="input-field col s12">
							<!-- <i class="mdi-action-lock-outline prefix"></i> -->
							<img class="login_img" src="img/password.png" /> 
							<input class="join4" name="password" type="text" style="width: 85%; background-image: url(&amp;quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR4nGP6zwAAAgcBApocMXEAAAAASUVORK5CYII=&amp;quot;);" />
							<label for="password">REGION</label>
						</div>
					</div>

					
					<div class="row">
						<!-- 로그인 버튼 -->
						<!-- 로그인 버튼 -->
						<!-- 로그인 버튼 -->
						<div class="input-field col s12">
							<a href="login.jsp"> <input type="button" id="l_id" value="회원가입"
								style="font-size: 14px; height: 36px; width: 280px; text-align: center; border-radius: 2px; margin-left: -1px; border-style: none; background-color: rgb(46, 70, 88, 1); color: white;">
							</a>
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