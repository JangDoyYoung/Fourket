<?xml version="1.0" encoding="UTF-8"?>
<%@page import="dataDto.FreeBoardDto"%>
<%@page import="dataDb.FreeBoardDB"%>
<%@ page language="java" contentType="text/xml; charset=utf-8"
    pageEncoding="utf-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String num = request.getParameter("num");
	
	FreeBoardDB db = new FreeBoardDB();
	FreeBoardDto dto = new FreeBoardDto();
	
	db.deletefree(num);
%>
<success>
yes
</success>