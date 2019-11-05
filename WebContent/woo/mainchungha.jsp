<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" href="woocss/main.css">
<script type="text/javascript">
$(document).ready(function(){

	$("#closeMenu").click(function(){
		$("#main").fadeOut(200);
		$("#closeMenu").animate({left: "100%"});
		$(".menu").animate({left: "-50%"},10);		
	});
});

</script>
</head>
<body>

<div id="closeMenu" onclick="location.href='index.jsp'">
	<img alt="" src="image/cross1.png"style="width: 100px; height: 100px;"/>
</div>

<div id="main">

	<div id="logoSection">
		<img alt="" src="chunghaimage/chungha5.jpg" style="width: 1500px; height: 1500px;"/>
	</div>
	<div id="menuSection">
		<ul>
			<li onmouseover="anim('about')" onclick="location.href='about2.jsp'">
				<div id="about" class="menu">
					ABOU
					<div class="rotate">T</div>
				</div>
			</li>	
			<li onmouseover="anim('video')" onclick="window.open('MV2.html')">
				<div id="video" class="menu">
					VIDE
					<div class="rotate">O</div>
				</div>
			</li>
			<li onmouseover="anim('music')" onclick="window.open('music/index.html','musicplayer','width=700,height=700');">
				<div id="music" class="menu">
					MUSI
					<div class="rotate">C</div>
				</div>
			</li>
			<li onmouseover="anim('photo')" onclick="location.href='photo2.jsp'">
				<div id="photo" class="menu" >
					PHOT
					<div class="rotate">O</div>
				</div>
			</li>
		</ul>
	</div>
</div>

</body>
<script type="text/javascript">
		
		function anim(targetedDiv){
			
			var targetedLetter = $("#"+targetedDiv+" .rotate").text();
			
			var asciiValue = targetedLetter.charCodeAt(0); //return ascii value
			
			var pointer = 65; //Ascii of 'A' (Starting Point)
			
			changeChar();
			
			function changeChar(){
				
				if(pointer <= asciiValue){
					$("#"+targetedDiv+" .rotate").text(String.fromCharCode(pointer));
					
					//fromCharCode function conver pointer value in character such as 65=A
					
					pointer++;
					setTimeout(changeChar,20);  //call the function after every 20MS		
				}else{
					$(this).stop;
					
				}
			} 
		}
</script>
</html>