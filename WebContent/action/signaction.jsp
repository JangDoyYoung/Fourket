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
		request.setCharacterEncoding("utf-8");
	%>
	<!-- db 와  dto선언 -->
	<jsp:useBean id="db" class="dataDb.MemberDB" />
	<jsp:useBean id="dto" class="dataDto.MemberDto" />
	<!-- dto 에 폼데이타 읽어서 넣어주기 -->
	<jsp:setProperty property="*" name="dto" />

	<%
		db.insertMember(dto);
	%>

	<script type="text/javascript">	
			alert("성공!!")
	</script>

	<%
		String s = "../index.jsp";

		response.sendRedirect(s);
	%>
</body>
</html>