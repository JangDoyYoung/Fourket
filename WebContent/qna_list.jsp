<?xml version="1.0" encoding="UTF-8"?>

<%@page import="dataDto.qnaDto"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="dataDb.QnaDb"%>
<%@ page language="java" contentType="text/xml; charset=utf-8"
    pageEncoding="utf-8"%>

<%
	request.setCharacterEncoding("utf-8");
	QnaDb db=new QnaDb();
	List<qnaDto> list=db.getList();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	
%>
<result>
	<%
		for(qnaDto dto:list)
		{%>
			<qnadata>
				<num><%=dto.getNum()%></num>
				<title><%=dto.getTitle()%></title>
				<nickname><%=dto.getNickname()%></nickname>
				<writedate><%=sdf.format(dto.getWrite_date())%></writedate>
				<replyok><%=dto.getReplyok()%></replyok>
			</qnadata>
		<%}
	%>
</result>