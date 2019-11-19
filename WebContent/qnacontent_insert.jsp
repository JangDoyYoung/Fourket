<?xml version="1.0" encoding="UTF-8"?>
<%@page import="dataDto.qnaDto"%>
<%@page import="dataDb.QnaDb"%>

<%@ page language="java" contentType="text/xml; charset=utf-8"
    pageEncoding="utf-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String id=(String)session.getAttribute("id");
	
	QnaDb qdb=new QnaDb();
	String nickname=qdb.getNickname(id);
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	QnaDb db = new QnaDb();
	qnaDto dto = new qnaDto();
	
	dto.setNickname(nickname);
	dto.setTitle(title);
	dto.setContent(content);
	
	db.insertQna(dto);
%>
<success>
yes
</success>