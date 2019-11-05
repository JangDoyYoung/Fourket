<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
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
		font-size: 70px;
		color: #DA3F47;
		text-align: center;
		line-height: 85px;
		letter-spacing: 5px;
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
	
</style>
</head>
<body>
<div id="text">FourKet WEBZINE</div>
</body>
</html>