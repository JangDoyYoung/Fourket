<?xml version="1.0" encoding="UTF-8"?>
<%@page import="dataDto.qnaDto"%>
<%@page import="dataDb.QnaDb"%>

<%@ page language="java" contentType="text/xml; charset=utf-8"
    pageEncoding="utf-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String id=(String)session.getAttribute("id");
	
	
	String num = request.getParameter("num");
	String recontent = request.getParameter("recontent");
	
	QnaDb db = new QnaDb();
	qnaDto dto = new qnaDto();
	
	
	dto.setNum(num);
	dto.setRecontent(recontent);
	
	db.updateReply(recontent, num);
%>
<success>
yes
</success>