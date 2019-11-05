<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link href="css/login.css" rel="stylesheet"/>
<script type="text/javascript">
	$(document).ready(function(){
		$("#signbtn").click(function(){
			$("#main").animate({left:"22.5%"},400);
			$("#main").animate({left:"30%"},500);
			$("#loginform").css("visibility","hidden");
			$("#loginform").animate({left:"25%"},400);
			
			$("#signform").animate({left:"25%"},400);
			$("#signform").animate({left:"30%"},400);
			$("#signform").css("visibility","visible");
		});
		
		$("#loginbtn").click(function(){
			$("#main").animate({left:"77.5%"},400);
			$("#main").animate({left:"70%"},500);
			$("#signform").css("visibility","hidden");
			$("#signform").animate({left:"75%"},400);
			
			$("#loginform").animate({left:"83.5%"},400);
			$("#loginform").animate({left:"70%"},500);
			$("#loginform").css("visibility","visible");
			
			
		});
	});

</script>
</head>
<body>
	<div id="box">
		<div id="main"></div>
		
		<div id="loginform">
			<h1>LOGIN</h1>
			<input type="text" class="logform" placeholder="ID" required="required"/><br>
			<input type="password"  class="logform" placeholder="Password" required="required"/><br>
			<input type="checkbox" id="chbox" required="required">Remember me
			<button type="button">LOG IN</button>
		</div>
		
		<div id="signform">
			<h1>SIGN UP</h1>
			<input type="text" placeholder="ID" class="sign" id="id" required="required"/>
			<button id="btnid">입력</button>
			<br>
			<input type="password" placeholder="Password" class="sign" id="pass1" required="required"/><br>
			<input type="password" placeholder="비밀번호확인" class="sign" id="pass2" required="required"/>
			<br>
			<input type="text" placeholder="Name" class="sign" required="required"/><br>
			<input type="text" placeholder="Nick Name" class="sign" required="required"/><br>
			<input type="text" placeholder="Email" class="sign" id="email1" required="required"/><br>
			<input type="text" placeholder="@" class="sign" id="email2"/>
				<select id="selemail">
							<option value="@">직접입력</option>
							<option value="@naver.com">네이버</option>
							<option value="@nate.com">네이트</option>
							<option value="@daum.net">다음</option>
							<option value="@gmail.com">구글</option>
				</select>
				<br>
			<button type="submit" id="btnsubmit">회원가입</button>
		</div>
		
		<div id="loginmsg">Have an account?</div>
		<div id="signmsg">Don't have an account?</div>
		
		<button id="loginbtn">LOGIN</button>
		<button id="signbtn">SIGN UP</button>
	</div>
</body>
</html>