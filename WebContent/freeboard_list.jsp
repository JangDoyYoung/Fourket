<?xml version="1.0" encoding="UTF-8"?>
<%@page import="java.util.Vector"%>
<%@page import="dataDto.FreeBoardDto"%>
<%@page import="dataDb.FreeBoardDB"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/xml; charset=utf-8"
    pageEncoding="utf-8"%>

<%
		request.setCharacterEncoding("utf-8");
	
		FreeBoardDB db = new FreeBoardDB();
		
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		////////////////페이징 코드///////////////////// 
				
		int totalCount = db.getTotalCount(); // 전체 글의 갯수
		
		//페이이정처리
		//우리는 한페이지당 4개의 글을 출력
		//한 블럭당 5개의 페이지를 출력하는거로 일단계산
		int perPage = 3;  // 한페이지당 출력할 글의 갯수
		int perBlock = 3; // 한블럭당 출력할 페이지 갯수
		int startPage; // 한블럭당 출력할 끝페이지
		int endPage; //한블럭당 출력할 끝페이지
		int startNum; //한페이지당 
		int endNum; // 한페이지당 출력할 끝번호
		int totalPage; // 총페이지수
		int currentPage; //현재페이지
		int no; //각 페이지에서 출력할 사진번호
		
		//각페이지에서 출력할 글들 -getlsit 호출
		List<FreeBoardDto> list = new Vector<>();
		
		
		//현재 페이지 구하기
		String p = String.valueOf(request.getParameter("pageNum"));
		
		//페이지가 안넘어온경우 널값인데 이떄는 1페이지로
		
		if( p == null)
		{
		currentPage = 1;
		}
		else
		{
		currentPage = Integer.parseInt(p);	
		}
		
		//총 페이지수
		totalPage = (totalCount/perPage) + (totalCount % perPage > 0 ? 1 : 0);
		
		//시작페이지 번호
		startPage = (currentPage-1) / perBlock * perBlock + 1;
		
		//끝페이지 번호
		endPage = startPage + perBlock - 1;
		
		//마지막블럭은 총 페이지보다 큰지 비교가 필요하다
		if(endPage > totalPage)
		{
		endPage = totalPage;
		}
		
		//각페이지당 불러올 글의 번호(오라클은 첫글이 1번)
		// 1page 는 1, 2page 는 6, 3page 는 11...
		startNum = (currentPage - 1) * perPage + 1;
		endNum = startNum + perPage - 1; 
		
		//마지막 글번호는 총 그르이 갯수를 넘어선 안된다
		if(endNum > totalCount)
		{
		endNum = totalCount;
		}
		
		//각페이지에서 출력할 시작번호
		//총글이 20개일경우 1page는 20, 1page는 15
		no = totalCount - (currentPage -1) * perPage;
		
		//각 페이지에서 필요한 글 가져오기
		list = db.getList(startNum, endNum);
		
		
		
%>
<result>
	<%
		for(FreeBoardDto dto : list)
		{%>
			<freeboard>
				<num><%= dto.getNum() %></num>
				<subject><%= dto.getSubject() %></subject>
				<content><%= dto.getFreecontent() %></content>
				<wdate><%= sdf.format(dto.getWriteday()) %></wdate>
				<name><%= dto.getWriter_nickname() %></name>
				<readcount><%= dto.getReadcount() %></readcount>
			</freeboard>
		<%}%>
		<pageing>
			<stpage><%=startPage%></stpage>
			<enpage><%=endPage%></enpage>
			<cupage><%=currentPage%></cupage>
			<ttpage><%=totalPage%></ttpage>
			<totcount><%=totalCount%></totcount>
			<pageNum><%= p %></pageNum>
		</pageing>
	
</result>
