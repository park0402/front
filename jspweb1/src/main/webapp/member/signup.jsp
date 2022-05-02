<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file = "../header.jsp" %>
	<div class="container">
		<h3>회원 페이지</h3>
		<form>
			아이디<input type="text" id="mid" placeholder="user id">
			<span id = "idcheck"></span>
			비밀번호<input type="password" id="mpassword" placeholder="비밀번호">
			비밀번호확인<input type="password" id="mpassword2" placeholder="비밀번호확인">
			이름<input type="text" id="mname" placeholder="user phone">
			이메일 <input type="text" id="memail" placeholder="user email">
			주소 <input type="text" id="maddress" placeholder="user address">
			<button onclick="signup()" type="button">가입하기</button>
		</form>
	회원가입 페이지
	
	</div>
	<%@ include file = "../footer.jsp" %>
	<script src="../js/signup.js" type="text/javascript"></script>
</body>
</html>