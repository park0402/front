<%@page import="Dao.MemberDao"%>
<%@page import="Dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	MemberDao memberDao = new MemberDao();
	boolean result = memberDao.login(id,password);
	if(result){
		response.sendRedirect("main.jsp");
		session.setAttribute("loginid", id);
						//세션이름= 변수명, 세션값= 값
								
		//서블릿 내장객체 : session
			//서버 내 메모리 생성 // 모든 페이지,파일 에서 접글 할수 있게함
			//브라우저 마다 메모리 발생
		
	}else{
		response.sendRedirect("main.jsp");
	}

	%>