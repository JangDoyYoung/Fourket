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
		
/* 		$("#title1").css({top:1500+(scroll*0.40)+"px"});
		
		$("#title2").css({top:2100+(scroll*0.40)+"px"});
		
		$("#title3").css({top:2750+(scroll*0.40)+"px"}); */
		
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
		background-color: #FFE4E1;
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
		left:-360px;
		transform: rotate(-90deg);	
		transition: all .25s linear;
	}
	.title{
		font-family: Gloss_And_Bloom;
		font-size: 100px;
		position: absolute;
		color: red;
		text-align: center;
		
	}
	#title1{
		top: 1530px;
		left: 1200px;
		transform: rotate(-10deg);	
	}
	#title2{
		top: 2020px;
		left: 250px;
		transform: rotate(-10deg);	
	}
	#title3{
		top: 2700px;
		left: 1300px;
		transform: rotate(10deg);
	}
	#title4{
		font-family: Gloss_And_Bloom;
		font-size: 100px;
		position: fixed;
		top: 0px; 
		left: 700px;
		transform: rotate(10deg);	
		transition: all .30s linear;
		color: #fff;
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
	#chunghaimage{
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
		left: 260px;
		text-align: center;
		border: 1px solid gray;
		height: 100%;
		position: absolute;
		width: 900px;
	}
	#about2_2{
		text-align: center;
		border: 1px solid black;
		width: 1000px;
		height: 100%;	
	}
	#about3_2{
		text-align: center;
		left: 330px;
		height: 100%;
		width: 900px;	
		position: absolute;
		border: 1px solid gray;
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
	p{
		font-family: arial;
	}
</style>
</head>
<body>
<div>
	<div id="main">
		<span>it's time for a new adventure</span>
	</div>
	
	<div id="closeMenu" onclick="location.href='mainchungha.jsp'">
		<img alt="" src="image/cancel.png"style="width: 100px; height: 100px;"/>
	</div>
	
	<div id="title1" class="title">Roller Coaster</div>
	<div id="title2" class="title">Gotta Go</div>	
	<div id="title3" class="title">Snapping</div>
	<div id="title4" class="title"><h2>Chung Ha</h2></div>
	
	<div id="main1" class="img">
		<div id="chunghaimage"><img alt="" src="chunghaimage/chungha16.jpg" style="width: 95%;"></div>
	</div>
	
	<div class="about" id="about1">
		<div id="about1_2">
				<h1>또 다시 1위!!</h1>
				<br>
<p>청하는 지난해 발표한 솔로 데뷔곡Why Don't You Know에 이어 솔로 2집 타이틀곡 '롤러코스터(Roller Coaster)'로도</p>
<p>음원 차트1위에 오르는 저력을 발휘했다.</p>
<p>음원 차트 1위 소식에 청하는 소속사를 통해 "마치 꿈꾸고 있는 것 같다. '롤러코스터(Roller Coaster)' 많이 들어주셔서</p>
<p>정말 감사하다"며 "롤러코스터처럼 즐겁고 신나는 활동으로 보답하겠다. 지켜봐달라"라고 가슴 벅찬 소감을 전했다.</p>	
<p>솔로 데뷔 앨범 '핸즈 온 미(HANDS ON ME)' 발매 이후 7개월 만에 발표하는 신보 '오프셋(Offset)'은 청하의 무대 아래서의</p>
<p>자연스러운 일상(off)과 무대 위 화려한 모습(set) 등을 음악, 영상, 사진, 안무 등 여러 가지 콘텐츠를 통해 다채롭게</p>
<p>담아낸 앨범이다. 가요계 대표 '히트곡 제조기' 블랙아이드필승이 프로듀싱한 타이틀곡 '롤러코스터(Roller Coaster)'</p>
<p>는 90년대 특유의 감성이 느껴지는 바이브와 현대적으로 재해석된 투스텝 리듬을 조화롭게 재단한 곡으로,</p>
<p>청량하게 울려 퍼지는 인트로부터 청하의 매력적인 애드리브 섹션이 리스너들에게 짜릿함을 선사하고 있다. </p>	
		</div>
	</div>
	
	<div class="img" id="img1">
		<img alt="" src="chunghaimage/chungha38.jpg" style=" width: 400px; height: 400px;"/>
	</div>
	
	<div class="about" id="about2">
		<div id="about2_2">
				<h1>벌써 12시</h1>
<p>‘벌써 12시’는 지난해 7월 발매한 세 번째 미니앨범 ‘블루밍 블루(Blooming Blue)’ 이후 청하가 6개월 만에 공개하는</p>
<p>신보로 이전 앨범과는 결이 다른 청하의 새로운 색채를 표현하고 있다.</p>
<p>기존 앨범들이 청하가 지닌 밝은 색채를 주목했다면 이번 신곡은 한층 더 도발적이고 적극적이다.</p>
<p>사랑하는 이와 헤어져야만 하는 시간 12시가 가까워져 올수록 이제 가야하지만, 마음 속 서로의 대화처럼 보내주기 싫은</p>
<p>상황을 과감하고도 솔직하게 표현한 ‘벌써 12시’는 청하의 컴백을 기다려 온 팬들의 기대를 120% 부응할 전망이다. </p>
<p>특히 ‘벌써 12시’는 최근 1억 스트리밍을 달성한 ‘롤러코스터’에 이어 청하가 블랙아이드필승, 전군과 함께 작업한 두 번째 곡이다.</p>
<p>매혹적인 플루트 사운드가 커튼을 펼치듯 곡의 시작을 알리면서 울려 퍼지고, 이어지는 플럭 사운드와 탄탄한 리듬 위에 청하의 목소리가</p> 
<p>더해져 보다 더 매력적이고 중독적인 EDM이 완성됐다.</p>

		</div>
	</div>
	
	<div class="img" id="img2">
		<img alt="" src="chunghaimage/chungha35.jpg" style="width: 400px; height: 500px;"/>
	</div>
	
	<div class="about" id="about3"/>
		<div id="about3_2">
					<h1>지금이 최고의 전성기</h1>
<p>가수 청하의 새 앨범이 국내를 넘어 해외에서도 뜨거운 반응을 얻고 있다.</p>
<p>지난 24일 오후 6시 발매된 청하의 네 번째 미니앨범'플러리싱(Flourishing)'</p>
<p>25일 미국, 홍콩을 포함한 6개 국가 및 지역 아이튠즈 TOP 앨범 차트에서 1위를 차지했다.</p>
<p>타이틀곡 '스내핑(Snapping)'은 이별 후 지친 마음을 떨치며 새로운 아침을 맞이한다는 내용의 곡으로</p>
<p>이전보다 더 화려해지고 깊어진 사운드와 중독성 강한 비트, 도입부의 여유로운 그루브에서 코러스에 가까워질수록</p>
<p>확장되는 역동적인 편곡이 리스너들의 귓가를 단번에 사로잡았다.</p>
<p>앨범 전곡이 차트 순위권 진입에 성공했으며, 타이틀곡 '스내핑'은 25일 현재 국내 주요 음원사이트</p>
<p>벅스, 지니, 올레, 소리바다, 엠넷, 네이버 실시간 음원 차트에서 1위, 멜론에서도 2위에 올라있어</p>
<p>차트 올킬도 가시권에 둔 상황이다.</p> 



		</div>
	</div>
	
	<div class="img" id="img3">
		<img alt="" src="chunghaimage/chungha39.jpg" style="width: 450px; height: 450px;"/>
	</div>
</div>
</body>
</html>