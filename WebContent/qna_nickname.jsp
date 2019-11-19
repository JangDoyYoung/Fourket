<?xml version="1.0" encoding="UTF-8"?>
<%@page import="dataDb.QnaDb"%>
<%@ page language="java" contentType="text/xml; charset=utf-8"
    pageEncoding="utf-8"%>

    <%
    	request.setCharacterEncoding("utf-8");
    	String loginok=(String)session.getAttribute("loginok");
		String id=(String)session.getAttribute("id");

		QnaDb qdb=new QnaDb();
		String nickname=qdb.getNickname(id);
    %>
    
    <qna>
    	<nickname><%=nickname %></nickname>
 	</qna>