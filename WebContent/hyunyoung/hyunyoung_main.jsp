<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link href="css/hyunyoung_main.css" rel="stylesheet">
<script type="text/javascript">
	$(document).ready(function(){
		$(".content1").addClass("content_b");
		// 날짜 클릭 이벤트
		$("#day1").click(function(){
			$(".daylist a").removeClass("selected_day");
			$(this).addClass("selected_day");
			$(".content1").addClass("content_b");
			$(".content2").removeClass("content_b");
			$(".content3").removeClass("content_b");
		});
		$("#day2").click(function(){
			$(".daylist a").removeClass("selected_day");
			$(this).addClass("selected_day");
			$(".content2").addClass("content_b");
			$(".content1").removeClass("content_b");
			$(".content3").removeClass("content_b");
		});
		$("#day3").click(function(){
			$(".daylist a").removeClass("selected_day");
			$(this).addClass("selected_day");
			$(".content3").addClass("content_b");
			$(".content2").removeClass("content_b");
			$(".content1").removeClass("content_b");
		});
						
	});
	
	$(function(){
		$("#route1").click(function(){
			$(".route_outbox1").addClass("content_b");
			$.ajax({
				type:"get",
				url:"transport_data.xml",
				dataType:"xml",
				success:function(data){
					var s="";
					var a=$(data).find("route1");
					s+="시간 : "+a.find("time").text()+"<br>";
					s+="가격 : "+a.find("price").text()+"<br>";
					if(a.find("check").text()!="")
					{
						s+="체크 : "+a.find("check").text()+"<br>";
					}
					s+="<img src='image/close1.png' class='close'>";
					$("#route1_out").html(s);
				},
				statusCode: {
					404:function(){
						alert("url 을 찾을 수 없어요");
					},
					500:function(){
						alert("서버 오류");
					}
				}
			});
		});
		
		$("#route2").click(function(){
			$(".route_outbox2").addClass("content_b");
			$.ajax({
				type:"get",
				url:"transport_data.xml",
				dataType:"xml",
				success:function(data){
					var s="";
					var a=$(data).find("route2");
					s+="시간 : "+a.find("time").text()+"<br>";
					s+="가격 : "+a.find("price").text()+"<br>";
					if(a.find("check").text()!="")
					{
						s+="체크 : "+a.find("check").text()+"<br>";
					}
					s+="<img src='image/close1.png' class='close'>";
					$("#route2_out").html(s);
				},
				statusCode: {
					404:function(){
						alert("url 을 찾을 수 없어요");
					},
					500:function(){
						alert("서버 오류");
					}
				}
			});
		});
		
		$("#route3").click(function(){
			$(".route_outbox3").addClass("content_b");
			$.ajax({
				type:"get",
				url:"transport_data.xml",
				dataType:"xml",
				success:function(data){
					var s="";
					var a=$(data).find("route3");
					s+="시간 : "+a.find("time").text()+"<br>";
					s+="가격 : "+a.find("price").text()+"<br>";
					if(a.find("check").text()!="")
					{
						s+="체크 : "+a.find("check").text()+"<br>";
					}		
					s+="<img src='image/close1.png' class='close'>";
					$("#route3_out").html(s);
				},
				statusCode: {
					404:function(){
						alert("url 을 찾을 수 없어요");
					},
					500:function(){
						alert("서버 오류");
					}
				}
			});
		});
		
		$("#route4").click(function(){
			$(".route_outbox4").addClass("content_b");
			$.ajax({
				type:"get",
				url:"transport_data.xml",
				dataType:"xml",
				success:function(data){
					var s="";
					var a=$(data).find("route4");
					s+="시간 : "+a.find("time").text()+"<br>";
					s+="가격 : "+a.find("price").text()+"<br>";
					if(a.find("check").text()!="")
					{
						s+="체크 : "+a.find("check").text()+"<br>";
					}	
					s+="<img src='image/close1.png' class='close'>";
					$("#route4_out").html(s);
				},
				statusCode: {
					404:function(){
						alert("url 을 찾을 수 없어요");
					},
					500:function(){
						alert("서버 오류");
					}
				}
			});
		});
		
		// 2일차 
		$("#route5").click(function(){
			$(".route_outbox5").addClass("content_b");
			$.ajax({
				type:"get",
				url:"transport_data.xml",
				dataType:"xml",
				success:function(data){
					var s="";
					var a=$(data).find("route5");
					s+="시간 : "+a.find("time").text()+"<br>";
					s+="가격 : "+a.find("price").text()+"<br>";
					if(a.find("check").text()!="")
					{
						s+="체크 : "+a.find("check").text()+"<br>";
					}	
					s+="<img src='image/close1.png' class='close'>";
					$("#route5_out").html(s);
				},
				statusCode: {
					404:function(){
						alert("url 을 찾을 수 없어요");
					},
					500:function(){
						alert("서버 오류");
					}
				}
			});
		});
		$("#route6").click(function(){
			$(".route_outbox6").addClass("content_b");
			$.ajax({
				type:"get",
				url:"transport_data.xml",
				dataType:"xml",
				success:function(data){
					var s="";
					var a=$(data).find("route6");
					s+="시간 : "+a.find("time").text()+"<br>";
					s+="가격 : "+a.find("price").text()+"<br>";
					if(a.find("check").text()!="")
					{
						s+="체크 : "+a.find("check").text()+"<br>";
					}	
					s+="<img src='image/close1.png' class='close'>";
					$("#route6_out").html(s);
				},
				statusCode: {
					404:function(){
						alert("url 을 찾을 수 없어요");
					},
					500:function(){
						alert("서버 오류");
					}
				}
			});
		});
		$("#route7").click(function(){
			$(".route_outbox7").addClass("content_b");
			$.ajax({
				type:"get",
				url:"transport_data.xml",
				dataType:"xml",
				success:function(data){
					var s="";
					var a=$(data).find("route7");
					s+="시간 : "+a.find("time").text()+"<br>";
					s+="가격 : "+a.find("price").text()+"<br>";
					if(a.find("check").text()!="")
					{
						s+="체크 : "+a.find("check").text()+"<br>";
					}	
					s+="<img src='image/close1.png' class='close'>";
					$("#route7_out").html(s);
				},
				statusCode: {
					404:function(){
						alert("url 을 찾을 수 없어요");
					},
					500:function(){
						alert("서버 오류");
					}
				}
			});
		});
		$("#route8").click(function(){
			$(".route_outbox8").addClass("content_b");
			$.ajax({
				type:"get",
				url:"transport_data.xml",
				dataType:"xml",
				success:function(data){
					var s="";
					var a=$(data).find("route8");
					s+="시간 : "+a.find("time").text()+"<br>";
					s+="가격 : "+a.find("price").text()+"<br>";
					if(a.find("check").text()!="")
					{
						s+="체크 : "+a.find("check").text()+"<br>";
					}	
					s+="<img src='image/close1.png' class='close'>";
					$("#route8_out").html(s);
				},
				statusCode: {
					404:function(){
						alert("url 을 찾을 수 없어요");
					},
					500:function(){
						alert("서버 오류");
					}
				}
			});
		});
		
		$("#route_outbox1",).click(function(){
			$(this).removeClass("content_b");
		});
		$("#route_outbox2").click(function(){
			$(this).removeClass("content_b");
		});
		$("#route_outbox3").click(function(){
			$(this).removeClass("content_b");
		});
		$("#route_outbox4").click(function(){
			$(this).removeClass("content_b");
		});
		
		$("#route_outbox5",).click(function(){
			$(this).removeClass("content_b");
		});
		$("#route_outbox6").click(function(){
			$(this).removeClass("content_b");
		});
		$("#route_outbox7").click(function(){
			$(this).removeClass("content_b");
		});
		$("#route_outbox8").click(function(){
			$(this).removeClass("content_b");
		});
	});
	
</script>


</head>
<body>
	<div id="main">
		<div class="mimg">
			<div class="mimg_title">
			</div>
			<h1>교토 가을 산책</h1>
		</div>
		<div class="schedual">
			<div  class="days">
				<div id="daylist" class="daylist">
					<a id="day1" class="selected_day">Day 1</a>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<a id="day2">Day 2</a>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<a id="day3">Day 3</a>
				</div>
			</div>
			<div class="day_contnets">
				<div class="content1">
					<div class="day_title">
						<p class="daytitletext"><strong>동네산책</strong></p>
					</div>
					
					<div class="day_route">
						<div class="routeday1">
							<div class="routeicon">
								<div id="route_outbox1" class="route_outbox1"><div id="route1_out" class="route_out"></div></div>
								<div id="route_outbox2" class="route_outbox2"><div id="route2_out" class="route_out"></div></div>
								<div id="route_outbox3" class="route_outbox3"><div id="route3_out" class="route_out"></div></div>
								<div id="route_outbox4" class="route_outbox4"><div id="route4_out" class="route_out"></div></div>
								<img alt="비행기" src="image/plane.png" class="r_plane" title="비행기" id="route1">
								<!-- <img alt="버스" src="image/bus.png" class="r_bus" title="버스" r_bus> -->
								<img alt="기차" src="image/train.png" class="r_train" title="기차" id="route2">
								<img alt="택시" src="image/taxi.png" class="r_taxi" title="택시" id="route3">
								<img alt="도보" src="image/walk1.png" class="r_walk" title="도보" id="route4">
							</div>
							
							<div class="routepoint">
								<div class="rp circle r1_circle"><div class="rtext">인천국제공항</div></div>
								<div class="rp line"></div>
								<div class="rp circle r2_circle"><div class="rtext">칸사이국제공항</div></div>
								<div class="rp line"></div>
								<div class="rp circle r3_circle"><div class="rtext">교토역</div></div>
								<div class="rp line"></div>
								<div class="rp circle r4_circle"><div class="rtext">글래드원호텔</div></div>
								<div class="rp line"></div>
								<div class="rp circle r5_circle"><div class="rtext">카모강변</div></div>
							</div>
						</div>
						
					</div>
				
					<div class="day_content">
						<p>
							일본 여행이 처음이 아니지만 그래도 북해도는 처음이었고 넓은 지역을 편하게 다닐 
							생각으로 렌트까지 했었다. 이동거리는 생각보다 엄청났고 그 덕에 나는 피로회복제를 
							먹으면서까지 운전을 했던 기억이 났다. 너무나 가고 싶었던 하코다테를 갔으나 무리한 
							일정 탓이었을까 천천히 둘러보지 못해 뭔가 아쉬움이 많이 남았던 여행이었다.
						</p>
						<p>
							이번에는 혼자 가는 여행이고 가볍게 다녀오자는 생각에 아무 일정도 없이, 호텔 
							예약도 없이, 렌트도 없이 (생각해보면 제정신이 아닌 듯;) 백팩에 짐을 쑤셔 넣고는 
							공항으로 출발했다. 수화물 짐이 없다 보니 용량이 큰 내 화장품들은 모두 출국거부를 
							당하고 (비행기 시간 촉박한데) 뛰어 뛰어 힘들게 비행기에 몸을 싣고 삿포로로 향했다.
						</p>
					</div>
				</div>
				<div class="content2">
					<div class="day_title">
						<p class="daytitletext"><strong>빨간 단풍잎이 있는 곳으로</strong></p>
					</div>
					<div class="day_route">
						<div class="routeday2">
							<div class="routeicon">
								<div id="route_outbox5" class="route_outbox5"><div id="route5_out" class="route_out"></div></div>
								<div id="route_outbox6" class="route_outbox6"><div id="route6_out" class="route_out"></div></div>
								<div id="route_outbox7" class="route_outbox7"><div id="route7_out" class="route_out"></div></div>
								<div id="route_outbox8" class="route_outbox8"><div id="route8_out" class="route_out"></div></div>
								<!-- <img alt="비행기" src="image/plane.png" class="r_plane" title="비행기" id="r_plane"> -->
								<img alt="버스" src="image/bus.png" class="r_bus2" title="버스" id="route5">
								<img alt="도보" src="image/walk1.png" class="r_walk2" title="도보" id="route6">
								<img alt="버스" src="image/bus.png" class="r_bus2_1" title="버스" id="route7">
								<img alt="기차" src="image/train.png" class="r_train2" title="기차" id="route8">
								
								
							</div>
							
							<div class="routepoint">
								<div class="rp circle r1_circle"><div class="rtext">글래드원호텔</div></div>
								<div class="rp line"></div>
								<div class="rp circle r2_circle"><div class="rtext">청수사</div></div>
								<div class="rp line"></div>
								<div class="rp circle r3_circle"><div class="rtext">니넨자카,산넨자카</div></div>
								<div class="rp line"></div>
								<div class="rp circle r4_circle"><div class="rtext">난젠지</div></div>
								<div class="rp line"></div>
								<div class="rp circle r5_circle"><div class="rtext">글래드원호텔</div></div>
							</div>
						</div>
						
					</div>
					<div class="day_content">
						<p>
							일본 여행이 처음이 아니지만 그래도 북해도는 처음이었고 넓은 지역을 편하게 다닐 
							생각으로 렌트까지 했었다. 이동거리는 생각보다 엄청났고 그 덕에 나는 피로회복제를 
							먹으면서까지 운전을 했던 기억이 났다. 너무나 가고 싶었던 하코다테를 갔으나 무리한 
							일정 탓이었을까 천천히 둘러보지 못해 뭔가 아쉬움이 많이 남았던 여행이었다.
						</p>
						<p>
							이번에는 혼자 가는 여행이고 가볍게 다녀오자는 생각에 아무 일정도 없이, 호텔 
							예약도 없이, 렌트도 없이 (생각해보면 제정신이 아닌 듯;) 백팩에 짐을 쑤셔 넣고는 
							공항으로 출발했다. 수화물 짐이 없다 보니 용량이 큰 내 화장품들은 모두 출국거부를 
							당하고 (비행기 시간 촉박한데) 뛰어 뛰어 힘들게 비행기에 몸을 싣고 삿포로로 향했다.
						</p>
					</div>
				</div>
				<div class="content3">
					<div class="day_title">
						<p class="daytitletext"><strong>집에 가자</strong></p>
					</div>
					<div class="day_route">
						<div class="routeday3">
							<div class="routeicon">
								<img alt="비행기" src="image/plane.png" class="r_plane" title="비행기" id="r_plane">
								<!-- <img alt="버스" src="image/bus.png" class="r_bus" title="버스" r_bus> -->
								<img alt="기차" src="image/train.png" class="r_train" title="기차" id="r_train">
								<img alt="택시" src="image/taxi.png" class="r_taxi" title="택시" id="r_taxi">
								<img alt="도보" src="image/walk1.png" class="r_walk" title="도보" id="r_walk">
							</div>
							
							<div class="routepoint">
								<div class="rp circle r1_circle"><div class="rtext">인천국제공항</div></div>
								<div class="rp line"></div>
								<div class="rp circle r2_circle"><div class="rtext">칸사이국제공항</div></div>
								<div class="rp line"></div>
								<div class="rp circle r3_circle"><div class="rtext">교토역</div></div>
								<div class="rp line"></div>
								<div class="rp circle r4_circle"><div class="rtext">글래드원호텔</div></div>
								<div class="rp line"></div>
								<div class="rp circle r5_circle"><div class="rtext">카모강변</div></div>
							</div>
						</div>
						
					</div>
					<div class="day_content">
						<p>
							일본 여행이 처음이 아니지만 그래도 북해도는 처음이었고 넓은 지역을 편하게 다닐 
							생각으로 렌트까지 했었다. 이동거리는 생각보다 엄청났고 그 덕에 나는 피로회복제를 
							먹으면서까지 운전을 했던 기억이 났다. 너무나 가고 싶었던 하코다테를 갔으나 무리한 
							일정 탓이었을까 천천히 둘러보지 못해 뭔가 아쉬움이 많이 남았던 여행이었다.
						</p>
						<p>
							이번에는 혼자 가는 여행이고 가볍게 다녀오자는 생각에 아무 일정도 없이, 호텔 
							예약도 없이, 렌트도 없이 (생각해보면 제정신이 아닌 듯;) 백팩에 짐을 쑤셔 넣고는 
							공항으로 출발했다. 수화물 짐이 없다 보니 용량이 큰 내 화장품들은 모두 출국거부를 
							당하고 (비행기 시간 촉박한데) 뛰어 뛰어 힘들게 비행기에 몸을 싣고 삿포로로 향했다.
						</p>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	<!-- <div class="routeoutbox">
		<div class="route_outbox1"><div id="route1_out" class="route_out"></div></div>
		<div class="route_outbox2"><div id="route2_out" class="route_out"></div></div>
		<div class="route_outbox3"><div id="route3_out" class="route_out"></div></div>
		<div class="route_outbox4"><div id="route4_out" class="route_out"></div></div>
	</div> -->
	
</body>
</html>