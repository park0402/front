<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!-- 사용자정의 css -->
	<link href="/jspweb1/member/css/main.css " rel="stylesheet">
	<!-- 부트스트랩 css -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<style type="text/css">
	#p1{color:white;}
	</style>

</head>
<body>
	<% String loginid = (String)session.getAttribute("login"); %>
	 <!-- 세션 호출 (기본타입=object) -->

	<div id="p1" class="container" >
	
	<!-- 로그인이 안된상태 -->
	<a href="/jspweb1/main.jsp"><span id="p1">HOME</span></a>
	<%if(loginid==null){ %>
	<a href="/jspweb1/member/login.jsp"><span id="p1">로그인</span></a>
	<a href="/jspweb1/member/signup.jsp"><span id="p1">회원가입</span></a>
	<%} %>
	<!-- 로그인이 된상태 -->
	<%if(loginid !=null){ %>
	<span><%=loginid %>님</span>
	<a href="/jspweb1/member/login.jsp">로그아웃</a>
	<a href="/jspweb1/member/signup.jsp">회원정보</a>	
	<%} %>
	
	</div>
	
	<!-- 상대경로는 현문서 기준으로  -->
	<!-- 헤더나 푸터는 절대경로잡기  -->
	<!-- 부트스트랩 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
	<!-- jquery -->
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

</body>
</html>