<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<title>Insert title here</title><link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"><style>
  	div{border:solid red;}
    body {
      min-height: 100vh;

      background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
      background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
    }
  	

    .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
  </style></head>


  <!-- Bootstrap CSS -->
  

  

<body>





<meta charset="UTF-8">
<title>Insert title here</title>
	<!-- 사용자정의 css -->
	<link href="/jspweb1/member/css/main.css " rel="stylesheet">
	<!-- 부트스트랩 css -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<style type="text/css">
	#p1{color:white;}
	</style>



	
	 <!-- 세션 호출 (기본타입=object) -->

	<div id="p1" class="container">
	
	<!-- 로그인이 안된상태 -->
	<a href="/jspweb1/main.jsp"><span id="p1">HOME</span></a>
	
	<a href="/jspweb1/member/login.jsp"><span id="p1">로그인</span></a>
	<a href="/jspweb1/member/signup.jsp"><span id="p1">회원가입</span></a>
	
	<!-- 로그인이 된상태 -->
	
	
	</div>
	
	<!-- 상대경로는 현문서 기준으로  -->
	<!-- 헤더나 푸터는 절대경로잡기  -->
	<!-- 부트스트랩 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
	<!-- jquery -->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>



<div class="container">
	<div class="input-form-backgroud row"> 
	
	<div class="input-form col-md-12 mx-auto">

	<h4 class="mb-3">회원가입</h4>
	
	
	
	<div class="col-md-8 offset-2">
	<form id="signupform" action="../signup" method="post">
		아이디 : <input type="text" class="form-control" id="mid" name="mid" placeholder="user id">
		<span id="idcheck"></span> 
		<br>
		비밀번호 : <input type="password" class="form-control" id="mpassword" name="mpassword" placeholder="user password"> 
		비밀번호 확인 : <input type="password" class="form-control" id="mpasswordcheck" placeholder="password check">
		<span id="passwordcheck"></span>
		<br>
		이름 <input type="text" id="mname" class="form-control" name="mname" placeholder="user name">
		<span id="namecheck"></span>
		<br>
		연락처 : <input type="text" id="mphone" class="form-control" name="mphone" placeholder="user phone">
		<span id="phonecheck"></span>
		<br>
		이메일 : <input type="text" id="memail" class="form-control" name="memail" placeholder="user email">
		@
		<input type="text" id="memailaddress" class="form-control" name="memailaddress" >
		<select id="emailselect">
			<option value=""> 직접입력 </option>
			<option value="naver.com"> naver.com </option>
			<option value="nate.com"> nate.com </option>
			<option value="daum.com"> daum.com </option>
		</select>
		<span id="emailcheck"></span>
		<br>
			<input type="text" id="sample4_postcode" class="form-control" name="address1" placeholder="우편번호">
			<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
			<input type="text" id="sample4_roadAddress" class="form-control" name="address2" placeholder="도로명주소">
			<input type="text" id="sample4_jibunAddress" class="form-control" name="address3" placeholder="지번주소">
			<span id="guide" style="color:#999;display:none"></span>
			<input type="text" id="sample4_detailAddress" class="form-control" name="address4" placeholder="상세주소">
		<br>
		<span id="addresscheck"></span>
		<button onclick="signup()" type="button" class="btn btn-primary btn-lg btn-block">가입하기</button>
	</div>
	</form></div>
</div>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="../js/signup.js" type="text/javascript"></script>




<meta charset="UTF-8">
<title>Insert title here</title>










</div></div></body></html>