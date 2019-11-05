<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>yoonju </title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>





<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width", user-scalable=no>
<meta property="article:section" content="">
<meta property="article:tag" content="trip">	<meta property="article:tag" content="travel"> 	<meta property="article:tag" content="circus">	
<meta property="article:tag" content="movie">	<meta property="article:tag" content="musical">	<meta property="article:tag" content="usa">
<meta property="article:tag" content="italy">	<meta property="article:tag" content="greece">	<meta property="article:tag" content="cirque">
<meta property="article:tag" content="cirque du soleil">	<meta property="article:tag" content="lalaland">	<meta property="article:tag" content="cats">
<meta property="article:tag" content="sea">	<meta property="article:tag" content="abroad">	<meta property="article:tag" content="island"> -->
<!-- //<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" /> -->
<!-- meta name="description"  content="trip,t ravel, canyon, island, sea, usa, italy, greece, circus, musical, movie, cirque du soleil, cats, lalaland" /> -->
<!-- <link rel='next' href='http://www.    .co.kr/page/2/?noCache' />
<link rel="canonical" href="http://www.   .co.kr/" /> -->
<!-- dns 주소를 미리 로딩해서 사이트 접속 속도를 빠르게 하는 코드 <link rel='dns-prefetch' href='//s.w.org' /> -->
<!-- <link rel="alternate" type="application/rss+xml" title="yoonju &raquo; 댓글 피드" href="http://www.vogue.co.kr/comments/feed/" /> -->
<!-- <link rel="shortcut icon" href="http://img.vogue.co.kr/         ..35.png" type="image/x-icon" />
<link rel="apple-touch-icon" href="http://img.vogue.co.kr/vogue/2018/02/style_5a83f8ae3da28.png">
<link rel="apple-touch-icon" sizes="72x72" href="http://img.vogue.co.kr/vogue/2018/02/style_5a83f8ae3da28.png"> -->

<!-- 글꼴등록 -->
<link rel="stylesheet"    href="https://fonts.googleapis.com/css?family=Tangerine">
<link rel="stylesheet"      href="http://fonts.googleapis.com/css?family=Lobster">
          
 <link href="https://fonts.googleapis.com/css?family=Srisakdi&display=swap" rel="stylesheet">
 
 <link href="https://fonts.googleapis.com/css?family=Zilla+Slab&display=swap" rel="stylesheet">
<!-- font-family: 'Zilla Slab', serif; -->


<style type="text/css">

/* 	#box{top:600px; width: 2000px;	background-color: #edf0ee; }
	
	#container{ top:600px; width: 1000px; background-color: white;} */
	
/* .img-cover{
   position: absolute;
   height: 100%;
   width: 100%;
   background-color: black;                                                                 
   z-index:1;
}
 */

	a:link {text-decoration: none; }

	#title{
		heght:150px;
		line-height:150px;
		text-align:center;
		font-size:50px;
		color:#404040;
		font-weight:bold;
		font-family: 'Srisakdi', cursive;
        /*  text-shadow: 2px 2px 2px #aaa; */
	}

	
	#trip{ position:absolute; top:200px; left:0px; }
	
	
	#performance {
		position:absolute; top:200px; left:960px;	}
		
	
	#login{
		height: 80px;
		top:80px;
		text-align: center;
		line-height: 80px;

	}
	
/* 	marquee 속 이미지를 누르면 해당 파일로 이동하기 위한 제이쿼리. img 태그 안 클래스 imggo이므로 
	img.imggo라고 표시 */
		img.imggo{
			cursor: pointer;
		}
	</style>
	
		<script type="text/javascript">
		$(function(){
			$(document).on("click","img.imggo",function(){
				go=$(this).attr("go");
	
			location.href=go;
			});
		});
		
		</script>
		
		
</head>


<body style="background-color:black;">
	
	
<div id="title"> <a href="layout/main-fourket.jsp"	style="text-decoration:none; color: #595959;">
My favoirtes</a> </div>
	
<div id="trip" >
	 <!-- 	<marquee direction="right" behavior="slide"
				scrollamount="30" style="width: 3000px;">
				<script type="text/javascript">  
		 		for(i=1;i<=3;i++){
					var s="<img src='image/"+i+".jpg' width='1000' height='670'>";
					document.write(s);
				};	 
				 --> 
	<marquee direction="right" behavior="slide" 	scrollamount="30" style="width: 980px;">
				<script type="text/javascript">  		
				var s1='';
				for(i=1;i<=3;i++){
					var sa="<img src='image/"+i+".1.jpg'  width='330' height='500' class='imggo'  go='trip-"
					+i+".html' >";
					document.write(sa);
				};	
				</script>	
				
	</marquee>

	
</div>
	
<div id="performance" >
	<marquee direction="left" behavior="slide" 	scrollamount="30" style="width: 980px;">
				<script type="text/javascript">  			 
				for(i=4;i<=6;i++){
					var sb="<img src='image/"+i+".1.jpg'  width='330' height='500' class='imggo'  go='perf-"
					+i+".html' >";
					document.write(sb);
				};	
				</script>	
	</marquee>
</div>


</body>

</html>