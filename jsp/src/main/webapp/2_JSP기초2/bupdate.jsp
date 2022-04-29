<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	int bno = Integer.parseInt(request.getParameter("bno"));
	session.setAttribute("bno_2", bno); 
	System.out.println("업데이트 "+bno);
	%>
	<h3>글수정 페이지</h3>
	<form action="bupdatecontroller.jsp?bno=<%=bno%>" method="get">
		글 제목<br>
		<input type="text" name = "title"><br>
		글 쓰기<br>
		<textarea rows="5" cols = "10" name= "content"></textarea>
		<input type="submit" value="수정">
	</form>

</body>
</html>