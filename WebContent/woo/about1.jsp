<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">

	$(document).scroll(function() {
	
		var scroll = $(window).scrollTop();
		
		$("span").css({top:100+(scroll*0.40)+"px"});
	
		$("#title4").css({top:0+(scroll*0.20)+"px"});
	
	});
	
	$(window).scroll(function(){
		var scrollval = $(this).scrollTop();
		
		$("#logo").css("transform",'translate(0px,-'+scrollval/2+'%)');
	});


</script>
<style type="text/css">
	
	 @font-face{
    font-family: Gloss_And_Bloom;
    src:url(font/Gloss_And_Bloom.ttf) format('truetype');
	} 
	
	body {
		margin: 0px;
		padding: 0px;
		background-color: #FFF;
	}
	#main{
		height: 100vh;
		width: 130px;
		background-color: white;
		position: fixed;
		top: 0;
		left: 0;
	}
	span{
		font-family: Gloss_And_Bloom;
		font-size: 60px;
		position: fixed;
		top: 100px; 
		left: -360px;
		transform: rotate(-90deg);	
		transition: all .25s linear;
	}
	.title{
		font-family: Gloss_And_Bloom;
		font-size: 100px;
		position: absolute;
		color: black;
		text-align: center;
		
	}
	#title1{
		top: 1400px;
		left: 1200px;
		transform: rotate(10deg);	
	}
	#title2{
		top: 2100px;
		left: 170px;
		transform: rotate(-10deg);	
	}
	#title3{
		top: 2750px;
		left: 1200px;
		transform: rotate(10deg);
	}
	#title4{
		font-family: Gloss_And_Bloom;
		font-size: 100px;
		position: fixed;
		top: 0px; 
		left: 500px;
		transform: rotate(-10deg);	
		transition: all .30s linear;
		color: black;
		
	}
	#main1{
		width: 92%;
		height: 560px;
		background:  linear-gradient(#66FFD,#FFF);
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%,-50%);
		overflow: visible;
	}
	#btsimage{
		height: 350px;
		width: 100%;
		position: absolute;
		left: 55%;
		transform:translateX(-50%);
		top: 250px;
	}
	.about{
		
		position: absolute;
		border: 10px solid black;
				
	}
	#about1{
		width: 1200px;
		height: 450px;
		top: 1550px;
		left: 500px;
	}
	#about2{
		width: 1200px;
		height: 450px;
		top: 2200px;
		left: 300px;
		font-style: normal;
		
	}
	#about3{
		width: 1200px;
		height: 450px;
		top: 2900px;
		left: 500px;
	}
	
	#about1_2{
		left: 280px;
		text-align: center;	
		width: 900px;
		height: 100%;
		border: 0px solid gray;
		position: absolute;

	}
	#about2_2{
		text-align: center;
		border: 0px solid black;	
	}
	#about3_2{
		text-align: center;
		left: 357px;
		height: 100%;
		width: 845px;	
		position: absolute;
		border: 0px solid gray;
	}
	
	.img{
		border: 0px solid black;
		width: 350px;
		height: 500px;
		
	}
	#img1{
		left: 370px;
		top: 1450px;	
		position: absolute;	
		width: 400px;
		height: 400px;
	}
	#img2{
		left: 1300px;
		top: 2050px;	
		position: absolute;	
	}
	#img3{
		left: 370px;;
		top: 2770px;	
		position: absolute;	
		width: 600px;
		height: 400px;
	}
	pre{
		text-align: left;
		font-size: 17px;
		font-family: arial;		
		letter-spacing: 5px;
		line-height: 25px;
	}
	p{
		font-family: arial;
	}
	.img img{
		box-shadow: 5px 5px 7px 9px gray;
	}
	#closeMenu{
		height: 100px;
		width: 100px;
		/* background-color: #262626; */
		position: fixed;
		top: 8%;
		left: 93%;
		transform: translateY(-50%);
 		z-index: 999;
		cursor: pointer;	
	}
</style>
</head>
<body>
<div>
	<div id="main">
		<span>it's time for a new adventure</span>
	</div>
	
	<div id="closeMenu" onclick="location.href='mainbts.jsp'">
		<img alt="" src="image/cancel.png"style="width: 100px; height: 100px;"/>
	</div>
	
	<div id="title1" class="title">D&nbsp;N&nbsp;A</div>
	<div id="title2" class="title">Blood&nbsp;Sweat&nbsp;Tear</div>	
	<div id="title3" class="title">Boy With Luv</div>
	<div id="title4" class="title"><h2>B-T-S</h2></div>
	
	<div id="main1" class="img">
		<div id="btsimage"><img alt="" src="btsimage/bts16.jpg" style="height: 900px; width: 1700px;"/></div>
	</div>
	
	<div class="about" id="about1">
		<div id="about1_2">
				<h4> LOVE YOURSELF 結 ‘Answer’</h4>
					
<pre>방탄소년단은 리패키지 앨범 LOVE YOURSELF 結 ‘Answer’을 발매하고, 2년 반 동안
이어진LOVE YOURSELF 시리즈의 대미를 장식한다.2016년 3월부터 시작된
방탄소년단의 LOVE YOURSELF 시리즈는 앨범의 주요수록곡 들이 하나의 주제로
연결되어, ‘나 자신을 사랑하는 것이 진정한 사랑’이라는 메시지를 전해왔다.
또한, 데뷔 초부터 음악적 완성도를 위해 충분한 곡들을 매 앨범에 담아 온 방탄소년단은
이번 앨범이 리패키지앨범 임에도 불구하고 7곡의 신곡을 포함했다.
이번 LOVE YOURSELF 結 ‘Answer’ 앨범은 치밀한 기획 아래 LOVE YOURSELF
시리즈의 정수를 담은 ‘콘셉트 앨범’이다. CD A에 수록된 16곡들은 음악, 스토리, 가사
등이 유기적으로 연결되어, 만남과 사랑으로부터 자아를 찾아가는 감정의 흐름을 따른다.
이번 앨범에서는 서사와 세계관을 강조해온 방탄소년단의 아티스트적 면모뿐 아니라,
잘 구성된 소설을 읽는 것 같은 높은 앨범 완성도를 느낄 수 있다.
모든 것의 결론, 비밀이 드러나다.방탄소년단의 LOVE YOURSELF 시리즈는
기승전결(起承轉結)의 구조로 하나의 주제의식을 관통한다. 짜임새 있는 스토리, 영상,
앨범 트랙, 디자인 등 LOVE YOURSELF의 서사를 따라온팬들에게
‘모든 비밀이 풀리는 열쇠’ 역할을 한다.</pre>
		</div>
	</div>
	
	<div class="img" id="img1">
		<img alt="" src="btsimage/bts1.jpg" style=" width: 400px; height: 400px;"/>
	</div>
	
	<div class="about" id="about2">
		<div id="about2_2">
				<h2>금주의 HOT!</h2>
					<h3>youtube 5억뷰돌파!!</h3><br>
<p>그룹 방탄소년단의 '피 땀 눈물' 뮤직비디오( MV)가 유튜브 5억뷰를 돌파했다.</p>
<p>지난 2016년 10월 발매한 방탄소년단 정규 2집 '윙스'(WINGS) 타이틀곡 '피 땀 눈물' 뮤직</p>
<p>비디오는 25일 오전 9시 22분께 유튜브 조회수 5억 건을 넘겼다고 소속사 빅히트엔터테인먼트가 전했다.</p>
<p>이로써 방탄소년단은 8억뷰 'DNA'를 비롯해 6억뷰 '불타오르네'(FIRE), 5억뷰 '페이크 러브'(FAKE LOVE')와</p>
<p>'마이크 드롭'(MIC Drop) 리믹스, '아이돌'(IDOL), '쩔어', '작은 것들을 위한 시'(Boy With Luv), '피 땀 눈물'까지</p>
<p>5억뷰를 넘긴8편의뮤직비디오를 갖게 됐다.</p>
		</div>
	</div>
	
	<div class="img" id="img2">
		<img alt="" src="btsimage/bts13.jpg" style="width: 500px; height: 500px ;"/>
	</div>
	
	<div class="about" id="about3"/>
		<div id="about3_2">
					<h1>지금이 최고의 전성기</h1>
					<h3>youtube 5억뷰 돌파</h3>
<p>	그룹 방탄소년단의 '작은 것들을 위한 시'(Boy With Luv) 뮤직비디오가 유튜브 5억뷰를 돌파했다.</p>
<p>11일 소속사 빅히트엔터테인먼트에 따르면 지난 4월 발매한 앨범
<p>'맵 오브 더 솔 : 페르소나'(MAP OF THE SOUL : PERSONA)타이틀곡</p>
<p>'작은 것들을 위한 시'(Boy With Luv)는 공개 4개월 만인 이날 오전 7시 43분께 유튜브 조회수 5억 건을 넘겼다.</p>
<p>이로써 이들은 8억뷰를 달성한 'DNA'를 비롯해 '불타오르네', '페이크 러브'(FAKE LOVE),</p>
<p>'마이크 드롭'(MIC Drop) 리믹스, '아이돌'(IDOL), '쩔어'에 이어 '작은 것들을 위한 시'(Boy With Luv)까지</p>
<p>억뷰 돌파 뮤직비디오를 7편 보유하며 이 부문 한국 가수 최다 기록을 자체 경신했다.</p>
		</div>
	</div>
	
	<div class="img" id="img3">
		<img alt="" src="btsimage/bts2.jpg" style="width: 500px; height: 450px;"/>
	</div>
	
</div>
</body>
</html>