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
            <p>menu3</p>
            <p id="logsign">login/sign</p>
            <div class="modal" id="mymodal">
            	<div class="modal_Content">
            	<span class="modalclose">&times;</span>
            		<div id="box">
						<div id="main"></div>
					
						<div id="loginform">
							<h1>LOGIN</h1>
								<input type="text" class="logform" placeholder="ID" required="required"/><br>
								<input type="password"  class="logform" placeholder="Password" required="required"/><br>
								<input type="checkbox" id="chbox" required="required">Remember me
								<button type="button">LOG IN</button>
							</div>
					
						<div id="signform">
							<input type="text" placeholder="ID" class="sign" id="id" required="required"/>
							<button id="btnid">입력</button>
							<br>
							<input type="password" placeholder="Password" class="sign" id="pass1" required="required"/><br>
							<input type="password" placeholder="비밀번호확인" class="sign" id="pass2" required="required"/>
								<br>
							<input type="text" placeholder="Name" class="sign" required="required"/><br>
							<input type="text" placeholder="Nick Name" class="sign" required="required"/><br>
							<input type="text" placeholder="Email" class="sign" id="email1" required="required"/><br>
							<input type="text" placeholder="@" class="sign" id="email2"/>
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
					
					<div id="loginmsg">Have an account?</div>
					<div id="signmsg">Don't have an account?</div>
					
					<button id="loginbtn">LOGIN</button>
					<button id="signbtn">SIGN UP</button>
				</div>
			</div>
            </div>
        </div>
    </div>
