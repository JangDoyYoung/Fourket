<%@page import="dataDb.MemberDB"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
<%
	String id=request.getParameter("id");
	
	String pass=request.getParameter("pass");
	
	String idsave=request.getParameter("idsave");
	
	MemberDB db = new MemberDB();
	
	boolean b=db.islogin(id, pass);
			
	if(b)
	{
	
				session.setAttribute("loginok","success");
				
				session.setAttribute("id", id);
			
				session.setAttribute("idsave", idsave==null?"no":"yes");
	
				response.sendRedirect("../index.jsp");
	}else
	{%>
	<script type="text/javascript">

			alert("아이디나 비밀번호가 맞지 않습니다");
			history.back();
	</script>

<%}
   %>

</body>
</html>