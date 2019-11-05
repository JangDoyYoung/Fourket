<?xml version="1.0" encoding="UTF-8"?>
<%@page import="dataDto.FreeBoardDto"%>
<%@page import="dataDb.FreeBoardDB"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/xml; charset=utf-8"
    pageEncoding="utf-8"%>

<%
		request.setCharacterEncoding("utf-8");
	
		FreeBoardDB db = new FreeBoardDB();
		
		List<FreeBoardDto> list = db.getList();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
%>
<result>
	<%
		for(FreeBoardDto dto : list)
		{%>
			<freeboard>
				<num><%= dto.getNum() %></num>
				<subject><%= dto.getSubject() %></subject>
				<wdate><%= sdf.format(dto.getWriteday()) %></wdate>
				<readcount>0</readcount>
			</freeboard>
		<%}
	%>
</result>
