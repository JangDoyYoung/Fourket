<%@page import="dataDto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

	<p class="logo">
		<a href="index.jsp">
		<link href="css/login.css" rel="stylesheet"/>
			<img src="img/Fourket_logo3.png">
		</a>
	</p>
	<div class="menu_but" id="menu_but">
        <span class="sp1"></span>
        <span class="sp2"></span>
        <span class="sp3"></span>
    </div>
    <div class="side_menu">
        <div class="close_but" id="close_but">                
            <span></span>
            <span></span>
        </div>
        <div class="side_nav">
            <p>menu1</p>    
            <p>menu2</p>
            <p onclick="location.href='community.jsp'">자유게시판</p>
    <%   	
    	String loginok=(String)session.getAttribute("loginok");
    
   	    String idsave=(String)session.getAttribute("idsave");
   		 
		String id=(String)session.getAttribute("id");
	
		MemberDto dto= new MemberDto();
    		
		if(loginok==null)
    		{%>
    
            <p id="logsign">login/sign</p>
            <div class="modal" id="mymodal">
            	<div class="modal_Content" id="modalcontent">
            	<span class="modalclose">&times;</span>
            		<div id="box">
						<div id="main"></div>
					<form action="action/loginaction.jsp" id="loginfrm" method="post">
						<div id="loginform">		
							<h1>LOGIN</h1>
							<%if(idsave==null || idsave.equals("no"))
							    {%>	
								<input type="text" class="logform" placeholder="ID" required="required" name="id"/><br>
								<input type="password"  class="logform" placeholder="Password" required="required" name="pass"/><br>
								<%}
								else {%>
								<input type="text" class="logform" placeholder="ID" required="required" name="id" value="<%=id%>"/><br>
								<input type="password"  class="logform" placeholder="Password" required="required" name="pass"/><br>
								<%
								}%>
								
								
			
							<%if(idsave==null || idsave.equals("no"))
							    {%>
								
								<input type="checkbox" id="chbox" required="required">Remember me
							<%}
								else {%>
								<input type="checkbox" id="chbox" required="required" checked="checked">
								
							  <%
								}%>
								
								
								<button type="button" id="myidlogin">LOG IN</button>
							</div> 
					</form>
				
					<form action="action/signaction.jsp" method="post" id="signfrm" onsubmit="return check(this)">	
						<div id="signform">
							<input type="text" placeholder="ID" class="sign" id="id" required="required" readonly="readonly" name="id"/>
							<button id="btnid">입력</button>
							<br>
							<input type="password" placeholder="Password" class="sign"  required="required" name="pass"
									  maxlength="20" /><br>
							<input type="password" placeholder="비밀번호확인" class="sign" name="pass1"
									 maxlength="10" />
								<br>
							<input type="text" placeholder="Name" class="sign" required="required" name="name"/><br>
							<input type="text" placeholder="Nick Name" class="sign" required="required" name="nickname"/><br>
							<input type="text" placeholder="Email" class="sign" id="email1" required="required" name="email1"/><br>
							<input type="text" placeholder="@" class="sign" id="email2" name="email2"/>
							<select id="selemail">
										<option value="@">직접입력</option>
										<option value="@naver.com">네이버</option>
										<option value="@nate.com">네이트</option>
										<option value="@daum.net">다음</option>
										<option value="@gmail.com">구글</option>
							</select>
							<br>
						<button type="submit" id="btnsubmit">회원가입</button>
			         </div>
		      		</form>		
					<div id="loginmsg">Have an account?</div>
					<div id="signmsg">Don't have an account?</div>
					
					<button id="loginbtn">LOGIN</button>
					<button id="signbtn">SIGN UP</button>
				</div>
			</div>
            </div> 
            
          <%}else{%>  
        	 
   	 <p onclick="location.href='action/logoutaction.jsp'">log out</p>
     	 <%}
   	    %>       
        </div>
    </div>
		