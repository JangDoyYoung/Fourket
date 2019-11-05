<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<style type="text/css">

	body {
		margin: 0px;
		padding: 0px;
		background-color: #ef5350;
}
	#main{
		height: 250px;
		width: 250px;
		border: 5px solid black;
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%,-50%);
		overflow: hidden;
}
	#main img{
		transition: all .5s ease-in-out;
	}
	#main:hover img{
		transition-delay: .15s;
		transform: scale(1.3) rotate(20deg);
	}
	#blackFrame{
		height: 250px;
		width: 250px;
		/* background-color: rgba(0,0,0,.3); */
		transition: all .5s ease-in-out;
		transition-delay: .3s;
	}
	#main:hover #blackFrame{
		transform: translateY(-250px);
}
/* 	#text{
		height: 50px;
		width: 250px;
		background-color: white;
		font-family: arial black;
		line-height: 50px;
		text-align: center;
		position: absolute;
		top: 200;
		left: 250;
		transition: all .5s ease-in-out;
	}
	#main:hover #text{
	transform: translateX(-250px);
} */



</style>
</head>
<body>
	<div id="main">
		<img alt="" src="image1/play1.png" height="100%" width="100%"/>
		
		<div id="blackFrame"></div>
		
		<!-- <div id="text">play</div> -->
	</div>
</body>
</html>