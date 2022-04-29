<%@page import="Dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	 <%
  
    	String loginid = (String)session.getAttribute("loginid");
    
    	MemberDao memberDao = new MemberDao();
    	
    	boolean result = memberDao.delete(loginid);
    
    	if(result){
    		response.sendRedirect("main.jsp");
    		session.setAttribute("loginid", null);
    	}
    %>