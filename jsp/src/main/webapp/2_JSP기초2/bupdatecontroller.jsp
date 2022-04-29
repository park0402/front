<%@page import="Dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<% 
	request.setCharacterEncoding("UTF-8");
	int bno= (int)session.getAttribute("bno_2");
	System.out.println("수정완료"+bno);
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	BoardDao boardDao = new BoardDao();
	boolean result = boardDao.update(bno, title, content);
	if(result){
		response.sendRedirect("main.jsp");
		session.setAttribute("bno_2", null);
		
	}
	%>