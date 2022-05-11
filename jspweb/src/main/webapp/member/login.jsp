<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<%@include file = "../header.jsp" %>
	<div class="container">
		<br><br><br><br><br><br><br><br><br><br>
		<div class="col-md-1 offset-5">
		<form action="../login" method="post">
			<br>아이디 : <input type="text" name="mid">
			<br>비밀번호 : <input type="text" name="mpassword">
			<span class="col-md-1 offset-12"><input type="submit" value="로그인"></span>	
			<!-- 만약에 로그인실패시 -->
			<%
				String result = request.getParameter("result");
				if( result != null && result.equals("2") ){
			%>
				<span> 동일한 회원정보가 없습니다.</span>		
			<%	
				}
			%>
		</form>
		 </div>
	</div>
	<%@include file = "../footer.jsp" %>

</body>
</html>





