<?xml version="1.0" encoding="UTF-8"?>


<%@page import="dataDto.FreeBoardDto"%>
<%@page import="dataDb.FreeBoardDB"%>
<%@ page language="java" contentType="text/xml; charset=utf-8"
    pageEncoding="utf-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String freesubject = request.getParameter("freesubject");
	String freetext = request.getParameter("freetext");
	String m_id = request.getParameter("m_id");

	FreeBoardDB db = new FreeBoardDB();
	FreeBoardDto dto = new FreeBoardDto();
	
	String myid = (String)session.getAttribute("id");
	String nickname = db.getName(myid);
	
	dto.setFreecontent(freetext);
	dto.setSubject(freesubject);
	dto.setWriter_nickname(nickname);
	dto.setM_id(myid);
	
	db.insertfree(dto);
%>
<success>
yes
</success>