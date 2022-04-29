<%@page import="Dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
	int bno = Integer.parseInt(
			request.getParameter("bno"));
	//2.dao 게시물 삭제 메소드 호출
	BoardDao boardDao = new BoardDao();
	boolean result = boardDao.bdelete(bno);
	//3.삭제가 성공했으면
	if(result){
		response.sendRedirect("main.jsp");
	}
	%>