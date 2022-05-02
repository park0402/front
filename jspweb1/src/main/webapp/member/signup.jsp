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
		<h3>회원가입 페이지</h3>
		<form>
			아이디<input type="text" id="mid" placeholder="아아디">
			<span id = "idcheck"></span><br>
			비밀번호<input type="password" id="mpassword" placeholder="비밀번호"><br>
			비밀번호확인<input type="password" id="mpassword2" placeholder="비밀번호확인"><br>
			<span id = "passwordcheck"></span><br>
			이름<input type="text" id="mname" placeholder="홍길동"><br>
			<span id = "namecheck"></span><br>
			전화번호<input type="text" id="mphone" placeholder="010-0000-0000"><br>
			<span id = "phonecheck"></span><br>
			이메일 <input type="text" id="memail" placeholder="이메일주소@naver.com"><br>
			<span id = "emailcheck"></span><br>
			주소 
			<input type="text" id="postcode" placeholder="우편번호">
			<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
			<input type="text" id="address" placeholder="주소"><br>
			<input type="text" id="detailAddress" placeholder="상세주소">
			<input type="text" id="extraAddress" placeholder="참고항목">
			
			<button onclick="signup()" type="button">가입하기</button><br>
		</form>
	회원가입 페이지
	
	</div>
	<%@ include file = "../footer.jsp" %>
	<script src="../js/signup.js" type="text/javascript"></script>
	
	<!-- 다음지도api -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>