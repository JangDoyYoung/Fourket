<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>K-POP</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#openMenu").click(function(){
		$("#main").fadeIn(200);
		$("#openMenu").animate({left: "-10%"});
		$("#closeMenu").animate({left: "93%"});
		$(".menu").animate({left: "-1%"},10);
		
	});
	
	$("#closeMenu").click(function(){
		$("#main").fadeOut(200);
		$("#openMenu").animate({left: "0%"});
		$("#closeMenu").animate({left: "100%"});
		$(".menu").animate({left: "-50%"},10);
		
	});
});

</script>
<style type="text/css">
	
	 @font-face{
    font-family: PAC-FONT;
    src:url(font/PAC-FONT.TTF) format('truetype');
	} 
	
	body {
		margin: 0px;
		padding: 0px;
		background-color: #3A3B4C;
	}
	#text{
		font-family: PAC-FONT;
		font-size: 100px;
		color: #DA3F47;
		text-align: center;
		line-height: 95px;
		letter-spacing: 10px;
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%,-50%);
		cursor: pointer;
	}
	#text::before{
		content: "FourKet WEBZINE";
		background: linear-gradient(#FFC929 10%,#E38C41 35%,#FFC929 40%,#E38C41 65%,#FFC929 70%,#E38C41  95%,#FFC929 100%);
		-webkit-background-clip:text;
		-webkit-text-fill-color:transparent;
		position: absolute;
		top: 7px;
		left: 14px;
		opacity: 0;
		z-index: -1;	
	}
	#text:hover{
		background: linear-gradient(#FFC929 10%,#E38C41 35%,#FFC929 40%,#E38C41 65%,#FFC929 70%,#E38C41  95%,#FFC929 100%);
		-webkit-background-clip:text;
		-webkit-text-fill-color:transparent;
		text-shadow: 0px 0px 10px #DA3F47, 0px 0px 25px #DA3F47;
	}
	#text:hover::before{
		opacity: 0.3;
}
	#main{
		height: 100vh;
		width: 100%;
		position: fixed;
		display: none;
	}
	#logoSection{
		height: 100%;
		width: 50%;
		background-color:#FCFCFC;
		box-shadow: 10px 0px 30px rgba(0,0,0,.4);
		position: absolute;
		z-index: 999;
	}
   #logoSection img{
		position: absolute;
	  	top: 50%;
		left: 50%; 
		transform: translate(-50%,-50%);
	}
	#menuSection{
		height: 100%;
		width: 50%;
		background-color: #f1f1f1;
		position: absolute;
		left: 50%;
	}
	#menuSection ul{
		list-style: none;
		margin: 0px;
		padding: 0px;
		position: absolute;
		top: 30%;
		left: -1%;
	}
	#menuSection ul li{
		height: 100px;
		width: 350px;
		font-family: arial black;
		font-size: 60px;
		line-height: 100px;
		cursor: pointer;
	}
	.menu{
		height: 100px;
		width: 0px;
		background-color: #ffc200;
		display: flex;
		position: absolute;
		left: -50%;
		cursor: pointer;
		pointer-events: none;
		transition: all .5s;
	}
	.rotate{
		pointer-events: none;
	}
	#menuSection ul li:hover .menu{
		width: 350px;
	}
	#openMenu,#closeMenu{
		height: 100px;
		width: 100px;
		/* background-color: #262626; */
		position: fixed;
		top: 50%;
		left: 0%;
		transform: translateY(-50%);
		z-index: 999;
		cursor: pointer;	
	}
	#closeMenu{
		left: 100%;
	}
	

</style>

</head>
<body>
<div id="text">FourKet WEBZINE</div>

<div id="openMenu">
	<img alt="" src="image/open.png" style="width: 100px; height: 100px;"/>
</div>
<div id="closeMenu">
	<img alt="" src="image/cross.png"style="width: 100px; height: 100px;"/>
</div>
<div id="main">
	<div id="logoSection">
		<img alt="" src="sunmiimage/sunmi27.jpg"/>
	</div>
	<div id="menuSection">
		<ul>
			<li onmouseover="anim('about')">
				<div id="about" class="menu">
					ABOU
					<div class="rotate">T</div>
				</div>
			</li>	
			<li onmouseover="anim('video')">
				<div id="video" class="menu">
					VIDE
					<div class="rotate">O</div>
				</div>
			</li>
			<li onmouseover="anim('music')">
				<div id="music" class="menu">
					MUSI
					<div class="rotate">C</div>
				</div>
			</li>
			<li onmouseover="anim('photo')">
				<div id="photo" class="menu" onclick="location.href='photo.jsp'">
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