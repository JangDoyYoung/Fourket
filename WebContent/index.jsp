<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Fourket</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link href="css/index.css" rel="stylesheet">
</head>
<body>
	<div class="header">
		<jsp:include page="header.jsp"/>
	</div>
	<div class="container">
    <div class="accordion">
      <ul>
        <li tabindex="1">
          <div>
            <a href="#">
              <h2>First</h2>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
            </a>
          </div>
        </li>
        <li tabindex="2">
          <div>
            <a href="#">
              <h2>교토산책</h2>
              <p>완연한 가을의 이국적인 풍경을 즐길 수 있는 여행기</p>
            </a>
          </div>
        </li>
        <li tabindex="3">
          <div>
            <a href="woo/index.jsp">
              <h3>장도영 is</h3>
              <p id="idol">I-DOL</p>
            </a>
          </div>
        </li>
        <li tabindex="4">
          <div>
            <a href="yoonju/index-yj.jsp">
              <h2>여행과 공연</h2>
              <p>추천 관광지 5곳과 추천 공연 3개</p>
            </a>
          </div>
        </li>
      </ul>
    </div>
	</div>
	<div class="footer">
	</div>
	<script type="text/javascript">
		$(function(){
			$("#menu_but").click(function(){
		        $(".side_menu").css("right","0px");
		    }) ;
		 
		     $("#close_but").click(function(){
		        $(".side_menu").css("right","-350px"); 
		     });
		     
		     var modal = document.getElementById('mymodal');
		     
		   
		        var btn = document.getElementById("logsign");
		 
		      
		        var span = document.getElementsByClassName("modalclose")[0];                                          
		 
		      
		        btn.onclick = function() {
		            modal.style.display = "block";
		        }
		 
		       
		        span.onclick = function() {
		            modal.style.display = "none";
		        }
		 
		  
		        window.onclick = function(event) {
		            if (event.target == modal) {
		                modal.style.display = "none";
		            }
		        }

		});
		$(document).ready(function(){
			$("#signbtn").click(function(){
				$("#main").animate({left:"22.5%"},400);
				$("#main").animate({left:"30%"},500);
				$("#loginform").css("visibility","hidden");
				$("#loginform").animate({left:"25%"},400);
				
				$("#signform").animate({left:"25%"},400);
				$("#signform").animate({left:"30%"},400);
				$("#signform").css("visibility","visible");
			});
			
			$("#loginbtn").click(function(){
				$("#main").animate({left:"77.5%"},400);
				$("#main").animate({left:"70%"},500);
				$("#signform").css("visibility","hidden");
				$("#signform").animate({left:"75%"},400);
				
				$("#loginform").animate({left:"83.5%"},400);
				$("#loginform").animate({left:"70%"},500);
				$("#loginform").css("visibility","visible");
				
				
			});
		});
		
	</script>
</body>
</html>
