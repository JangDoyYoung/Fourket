<?xml version="1.0" encoding="UTF-8"?>
<%@page import="dataDto.FreeBoardDto"%>
<%@page import="dataDb.FreeBoardDB"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/xml; charset=utf-8"
    pageEncoding="utf-8"%>

<%
		request.setCharacterEncoding("utf-8");
		String num = request.getParameter("num");
	
		FreeBoardDB db = new FreeBoardDB();
		
		db.updateReadCount(num);
		List<FreeBoardDto> list = db.getNumList(num);


		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
				
		
%>
<result>
	<%
		for(FreeBoardDto dto : list)
		{
		%>
			<freeboard>
				<num><%= dto.getNum() %></num>
				<subject><%= dto.getSubject() %></subject>
				<content><%= dto.getFreecontent() %></content>
				<wdate><%= sdf.format(dto.getWriteday()) %></wdate>
				<name><%= dto.getWriter_nickname() %></name>
				<readcount><%= dto.getReadcount() %></readcount>
				<mid><%= dto.getM_id()%></mid>
			</freeboard>
		<%}
	%>
</result>
