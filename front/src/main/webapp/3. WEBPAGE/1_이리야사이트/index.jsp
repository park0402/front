<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

	<style type="text/css">
		/* <a href> 링크 사용시 기본값 제거 */
		a{ text-decoration: none; color: black; }
		a:hover {  color: orange; }
		/* 기본값으로 여백이 들어가는 경우 기본 여백 제거 */
		*{ padding: 0px; margin: 0px;  }
				#content{



	</style>

</head>
<body>
	 <!-- jsp문법 :  속성 태그 [ 자바 사용가능 ]  -->
	<%@include file="header.jsp"%>
	
	<%@include file="mainimage.jsp"%>
	
	<%@include file="main.jsp" %>
	
	<%@include file="footer.jsp" %>
	
</body>
</html>




