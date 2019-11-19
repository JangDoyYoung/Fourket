<?xml version="1.0" encoding="UTF-8"?>
<%@page import="dataDto.FreeBoardDto"%>
<%@page import="dataDb.FreeBoardDB"%>
<%@ page language="java" contentType="text/xml; charset=utf-8"
    pageEncoding="utf-8"%>

<%
	request.setCharacterEncoding("utf-8");
	
	FreeBoardDB db = new FreeBoardDB();
	FreeBoardDto dto = new FreeBoardDto();
	
	String num = request.getParameter("num");
	String freecontent = request.getParameter("freecontent");
	String subject = request.getParameter("subject");
	
	System.out.println("subject : " + subject);
	System.out.println("freecontent : " + freecontent);
	
	dto.setFreecontent(freecontent);
	dto.setSubject(subject);
	dto.setNum(num);
	
	db.updatefree(dto);
%>
<success>
yes
</success>