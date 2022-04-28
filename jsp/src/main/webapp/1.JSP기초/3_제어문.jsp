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
		//<%!선언부
		//<%스크립트 
		//<%=표현식 
	%>
	<form action="4_결과페이지.jsp"> <!--  form : 폼양식 ( 입력받은 데이터 전송) -->
		이름 : <input type= "text" name = "name"><br>
		<!-- input : 입력상자 (name : 식별이름) -->
		배경색: <select name="color">
			<option value="aliceblue">엘리스블루</option>
			<option value="red">빨강</option>
			<option value="orange">오렌지</option>
			<option value="black">검정</option>
			
		</select>
		반복횟수: <input type="text" name="number"><br>
		<input type="submit" value="전송">
		
	</form>

</body>
</html>