<?xml version="1.0" encoding="UTF-8"?>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="dataDto.qnaDto"%>
<%@page import="java.util.List"%>
<%@page import="dataDb.QnaDb"%>
<%@ page language="java" contentType="text/xml; charset=utf-8"
    pageEncoding="utf-8"%>

    <%
    	request.setCharacterEncoding("utf-8");
    
    	String num=request.getParameter("num");
    	
    	QnaDb db=new QnaDb();
    	List<qnaDto> list=db.getData(num);
    	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		
    	String loginok=(String)session.getAttribute("loginok");
	
    
    %>
    <result>
    	<%
  			for(qnaDto dto:list)
  			{%>
  				<qnaview>
  					<num><%=dto.getNum() %></num>
  					<nickname><%=dto.getNickname() %></nickname>
  					<title><%=dto.getTitle() %></title>
  					<content><%=dto.getContent() %></content>
  					<recontent><%=dto.getRecontent() %></recontent>
  					<replyok><%=dto.getReplyok() %></replyok>
  					<writedate><%=sdf.format(dto.getWrite_date()) %></writedate>
  					<replydate><%=sdf.format(dto.getReply_date()) %></replydate>
				</qnaview>
  			<%}
    	%>
    	
    </result>
    