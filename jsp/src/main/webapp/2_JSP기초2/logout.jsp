<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
	//session.invaludate();//모든세션 초기화
	session.setAttribute("loginid", null);
	//페이지 전환 
	response.sendRedirect("main.jsp");
	%>
