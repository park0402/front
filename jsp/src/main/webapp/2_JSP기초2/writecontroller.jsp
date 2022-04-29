<%@page import="Dao.BoardDao"%>
<%@page import="Dto.Board"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<% 
		request.setCharacterEncoding("UTF-8");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String writer = (String)session.getAttribute("loginid"); //작성자
		Date now = new Date(); //현재 시스템 날짜/시간
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd"); //날짜 포멧
		String date = sf.format(now); //현재 날짜/시간 포멧 하기
		
			//작성자는 로그인성공시 세션에서 가져오기
			// 세션 호출시 기본 자료형이 object -> 형변환 (1.자동형변환 / 2.강제형변환)
		
		//변수 -> 객체화
		Board board = new Board(0,title,content,writer,date);
		
		//dao 가입 메소드 실행
		BoardDao boardDao = new BoardDao();
		boolean result = boardDao.write(board); System.out.print(result);
		if(result){
		response.sendRedirect("main.jsp");
		}
	
	%>