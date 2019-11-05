<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<style type="text/css">
	body {
		margin: 0px;
		padding: 0px;
	}
	#bg{
		height: 100vh;
		width: 100%;
		position: absolute;
		overflow: hidden;
	}
	#bg img{
		height: 120vh;
		width: 105%;
		-webkit-fillter:blur(20px);
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%,-50%);
		z-index: 1;
	}
	#blackLayer{
		height: 100vh;
		width: 100%;
		background-color: rgba(0,0,0,.2);
		position: absolute;
		z-index: 99;
	}
	#main{
		width: 50%;
		height: 50%;
		background-color: #fff;
		border-radius: 5px;
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%,-50%);
		z-index: 999;
	}
	#image img{
		height: 300px;
		width: 100%;
		margin-top: -5px;
		border-top-left-radius: 5px;
		border-top-right-radius: 5px;
	}
	#player{
		padding: 25px;
		color: #333;
	}
	#songTitle{
		font-family: monospace;
		font-size: 20px;
		position: absolute;
		top: 60%;
		left: 50%;
		transform: translate(-50%,-50%);
	}
	#button{
		height: 50px;
		width: 100%;
		margin-top: 50px;
		position: relative;
		top: 10%;
		left: 50%;
		transform: translate(-50%,-50%);
	}
	#play{
		width: 50px;
		height: 50px;
		border: 0;
		background-color: royalblue;
		border-radius: 50%;
		outline: none;
		cursor: pointer;
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%,-50%);
	}
	#next{
		width: 30px;
		height: 30px;
		left: 30%;
	}
	#pre{
		width: 30px;
		height: 30px;
		left: 30%;
	}
	#play img,#next img,#pre img{
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%,-50%);
	}

</style>
</head>
<body>
<div id="bg">
	<div id="blackLayer"></div>
	<img alt="" src="sunmi1.jpg"/>
</div>

<div id="main">
	<div id="image">
		<img alt="" src="sunmi1.jpg"/>
	</div>
	
	<div id="player">
		<div id="songTitle"></div>
			<div id="button">
				<button id="pre"><img alt="" src="previous.png" height="90%" width="90%"/></button>
				<button id="play"><img alt="" src="play1.png"></button>
				<button id="next"><img alt="" src="next1.png"height="90%" width="90%"/></button>
			</div>
		
		<div id="seekbar">
			<div id="fill"></div>
			<div id="handle"></div>
		</div>
	</div>
</div>	
</body>
</html>