<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" href="woocss/index.css">
<script type="text/javascript">
	
	$(document).ready(function() {
		n=0;
		$("#icon").click(function(){
			if(n==0)
				{
					$("#main").css('box-shadow','inset 0px 0px 0px 30px black,inset 0px -70px 0px 30px black');
					$("#main").css('background-color','rgba(0,0,0,.2)');
					
					$("#m1").animate({top:'40%'},200);
					$("#m2").animate({top:'40%'},200);
					$("#m3").animate({top:'40%'},200);
					$("#m4").animate({top:'40%'},200);
					$("#m5").animate({top:'40%'},200);
						n=1;
				}
			else{
					$("#main").css('box-shadow','inset 0px 0px 0px 0px black,inset 0px 0px 0px 0px black');
					$("#main").css('background-color','rgba(0,0,0,0)');
					
					$("#m1").animate({top:'100%'},200);
					$("#m2").animate({top:'100%'},200);
					$("#m3").animate({top:'100%'},200);
					$("#m4").animate({top:'100%'},200);
					$("#m5").animate({top:'100%'},200);
						n=0;
				}
		});
	});
</script>
</head>
<body>

<div id="text">FourKet WEBZINE</div>

<div id="main">
	<div id="icon">
		<div id="line">
		</div>
	</div>
	
	<div>
		<div id="menu">
			<div id="m1" class="m" onclick="location.href='mainsunmi.jsp'">SunMi</div>
			<div id="m2" class="m" onclick="location.href='mainbts.jsp'">B-T-S</div>
			<div id="m3" class="m" onclick="location.href='mainchungha.jsp'">ChungHa</div>
			<div id="m4" class="m" onclick="location.href='maincommingsoon.jsp'">....</div>
			<div id="m5" class="m" onclick="location.href='../index.jsp'">home</div>
		</div>
	</div>
	
</div>
</body>
</html>