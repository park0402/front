<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="writecontroller.jsp" method="get">
		글 제목<br>
		<input type="text" name = "title"><br>
		글 쓰기<br>
		<textarea rows="5" cols = "10" name= "content"></textarea>
		<input type="submit" value="쓰기">
	</form>

</body>
</html>