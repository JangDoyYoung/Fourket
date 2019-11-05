<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {
			margin: 0px;
			padding: 0px;
			background-color: #222;
}
	#button{
		width: 150px;
		height: 50px;
		font-family: arial;
		color: #ee3769;
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%,-50%);
		cursor: pointer;
		border: 1px solid #ee3769;
		text-align: center;
		line-height: 50px;
		overflow: hidden;
		trnasition: color 0.3s ease-out;
	}
	#button::before{
		position:absolute;
		top: 0;
		left: 0;
		right: 0;
		bottom: 0;
		margin: auto;
		content: '';
		border-radius: 50%;
		display: block;
		width: 300px;
		height: 300px;
		left: -75px;
		transition: box-shadow 0.3s ease-out;
		z-index: -1;
	}
	#button:hover {
		color: #fff;
}
	#button:hover::before {
		box-shadow: inset 0 0 0 160px #ee3769;
}
	
	

</style>
</head>
<body>
 <div id="button">read more </div>
</body>
</html>