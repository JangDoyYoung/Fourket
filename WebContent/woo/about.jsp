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
		top: 1500px;
		left: 1200px;
		transform: rotate(20deg);	
	}
	#title2{
		top: 2100px;
		left: 170px;
		transform: rotate(-30deg);	
	}
	#title3{
		top: 2750px;
		left: 900px;
		transform: rotate(-20deg);
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
	#sunmiimage{
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
		left: 70px;
		text-align: center;
	
		height: 100%;
		position: absolute;
	}
	#about2_2{
		text-align: center;
		border: 0px solid black;	
	}
	#about3_2{
		text-align: center;
		left: 300px;
		height: 100%;
		width: 900px;	
		position: absolute;
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
</style>
</head>
<body>
<div>
	<div id="main">
		<span>it's time for a new adventure</span>
	</div>
	
	<div id="closeMenu" onclick="location.href='mainsunmi.jsp'">
		<img alt="" src="image/cancel.png"style="width: 100px; height: 100px;"/>
	</div>
	
	<div id="title1" class="title">Full Moon</div>
	<div id="title2" class="title">Gasina</div>	
	<div id="title3" class="title">SIREN</div>
	<div id="title4" class="title"><h2> Sun-Mi</h2></div>
	
	<div id="main1" class="img">
		<div id="sunmiimage"><img alt="" src="sunmiimage/sunmi1.png" style="width: 95%;"></div>
	</div>
	
	<div class="about" id="about1">
		<div id="about1_2">
				<h1>뱀파이어로 돌아왔다</h1>
				<br>
		<pre style="text-align: left; font-size: 17px;">
                     뱀파이어로 변신한 선미가 미니앨범 '보름달'로 컴백하며 하이엔드 섹시미의 진수를 선보입니다. 지난 해 싱글
                     '24시간이 모자라'로 폭발적인 관심을 받으며 솔로가수로 화려하게 데뷔한 선미는 맨발의 각선미 퍼포먼스와
                     오묘하고도 맑은 섹시함으로 여자 솔로가수의 새로운 아이콘으로 떠오르며 순식간에 모든 이를 사로잡았습니다.
                     선미의 새로운 앨범 '보름달'은 여자와 소녀 중간에 서 있는 선미의 오묘한 매력이 담긴 앨범으로,
                     여섯 개 트랙에 담긴 여섯 가지 선미의 색깔은 물론 누구도 따라올 수 없는 선미의 하이엔드 섹시함을
                     느낄 수 있습니다.
                     타이틀곡 '보름달'은 용감한 형제가 프로듀싱 한 곡으로, 섹시한 분위기가 감도는 브라스와 기타사운드 리드와
                     어우러진 선미의 보이스가 더욱 매력적인 곡이다.
                     보름달을 매개체로 사랑을 말하는 가사는 '24시간이 모자라'에 이은 또 한번 선미의 성인식을 연상케 하는 한편,
                     선미의 뱀파이어 컨셉과 환상적으로 만나 강렬한 충격을 주며, 하이엔드 섹시미의 극치를 선보인다.
                     또한 '내가 누구'는 선미의 첫 번째 미니앨범을 위해 유빈이 랩 피쳐링을, 예은은 자작곡 '그게 너라면'을
                     선물하며 지원사격에 나서 선미의 매력을 더욱 풍성하게 하며, '멈춰버린 시간'은 GOT7의 잭슨이 랩 피쳐링에
                     참여하여몽환적 분위기 속에 새로운 선미의 매력을 발견케 한다.
		</pre>					
		</div>
	</div>
	
	<div class="img" id="img1">
		<img alt="" src="sunmiimage/sunmi3.png" style=" width: 400px; height: 400px;"/>
	</div>
	
	<div class="about" id="about2">
		<div id="about2_2">
				<h3>금주의 HOT!</h3>
					<h4>만개한 4차원의 매력! 안 보고 가시나?</h4>
	<pre style="text-align: left; font-size: 17px;">
알고 계신가요? 선미의 영상을 찾다 보면 유독 엉뚱하고 흥이 많은, 정말 모태부터 그대로 이어받은 듯 특이한(!)
선미만의 캐릭터를 확인할 수 있다는 사실! 솔로 이후의 커리어가 섹시 콘셉트에 집중되어 있어 희미해진 감은
있지만 그녀가 그룹 시절에 보여준 캐릭터가 엉뚱함을 넘어4차원에 가까웠다는 것을, 원더걸스부터의 오랜 팬들은
잘 알고 있습니다.

JYP에서 메이크어스엔터테인먼트로 이적한 후 처음 선보이는 '가시나'는 이전까지 솔로 커리어에서 내보이던 
도발적인 매력을일면 접어둔 채, 선미의 본모습에 더 가까운 4차원 캐릭터를 그대로 담아내고 있습니다.
이는 음원보다도 뮤직비디오와 무대 퍼포먼스 등 보여지는 영역에서 더욱 선명히 드러나지요.
덕분에 콘셉트와 퍼포먼스가 많이 회자되고 있는 상황입니다만, 음악을 집중해서 들어보면 음악 자체도 상당한변화를
꾀한 것을 알 수 있습니다. 
선미가 처음 시도하는 트로피컬 사운드도 그렇지만, 보컬의 운용법도 상당히 달라졌다는 점도 포인트로 들리네요.

선미의 트레이드마크, 스트레이트한 중음 보컬은 '가시나'에서 꽤나 신경질적인 느낌으로 녹음되었음을 확인할수있습니다.
고혹적인 느낌으로 녹음된 '24시간이 모자라'와 비교해 들어보면 그 차이를 뚜렷하게 느낄 수 있죠.
곡의 분위기에 맞게 보컬을 이렇게나 달리하는 그녀를 보고 있자면 선미가 상당히 다채로운 음색을 가진 가수라는 사실을
한 번 더 깨닫게 됩니다.
노래도 노래지만, 선미의 노력에도 감탄하게 되는 곡이라고 할까요.
		</pre>
		</div>
	</div>
	
	<div class="img" id="img2">
		<img alt="" src="sunmiimage/gasinacover.jpg" style="width: 400px; height: 500px;"/>
	</div>
	
	<div class="about" id="about3"/>
		<div id="about3_2">
					<h1>지금이 최고의 전성기</h1>
		<pre style="text-align: left; font-size: 17px;">
           "가시나", "주인공"의 연이은 대히트에이어 8개월만에 새 앨범으로 돌아온
           유일무이한 20대 솔로 여가수 "선미".이번 신보 "WARNING"은 "가시나","주인공"에
           이어 이어지는3부작 프로젝트의 완성이자 4년만에"선미"가 내놓는 정식 음반이다.
           매번 독보적인 컨셉과 눈을 뗄 수 없는 치명적인 퍼포먼스로 인기를 끌었던"선미"
           는 요번에도 신곡 "사이렌"으로엄청난 인기몰이를 했는데,일주일 이상 음원차트
           1위를 기록하며주간차트 1위까지 달성하는 등"가시나"와 "주인공"을 넘어서는
           커리어 내 역대급 성적을 얻어냈다.솔로 여자 가수 중에서,그것도 댄스 장르로
           PK 기록을 달성할 수 있는 가수는현재로서는 "선미"가 유일할 듯 하다.
           사실 "가시나"의 임팩트가 워낙 강했어서"사이렌"이 그 이상이라고는 말을 못하겠지만
	   몽환적인 분위기와 강렬한 베이스 사운드, 그리고 "선미" 특유의 중독성 강한 안무로
	   많은 대중들의 눈과 귀를 사로잡을 수 있었다.또한 지난 활동곡 "주인공"의 표절
	   논란을종식시키기라도 하려는 것마냥 당당하게 본인이 작사-작곡한 곡을타이틀곡으로
	   들고 나와 그녀의 퍼포먼스 실력뿐 아니라 프로듀싱 실력 역시또 한 번 인정받을 수 있게
	   되었다.
		</pre>	
		</div>
	</div>
	
	<div class="img" id="img3">
		<img alt="" src="sunmiimage/siren.jpg" style="width: 450px; height: 450px;"/>
	</div>
</div>
</body>
</html>