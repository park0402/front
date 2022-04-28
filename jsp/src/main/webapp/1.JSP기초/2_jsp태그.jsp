<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<!--  jsp : html과 java를 동시에 작성하는 파일 -->
		<!-- html : <마크업> / java 태그  -->
	<h3> 선언문 태그 : 메모리 할당[변수 생성 ,객체 생성,메소드 정의x 함수선언o] </h3>
	<h3> 스크립트 태그 : 자바 실행문 [변수 생성 ,객체 생성,메소드 정의o 함수선언x ] </h3>
	<h3> 표현식 태그 : 메모리 호출 [java에서 html로 출력]</h3>
	<!-- html 작성 공간  -->
	<p> html에서 작성된 코드 </p>
	<%! 
		int 변수1 = 10; //변수 가능
		Date date1 = new Date(); //객체선언 가능
		int 함수1(){return 2;} // 함수(인수와 반환이 있는 미리 작성된 코드)
		class 클래스1{
			String 필드1 = "유재석";
		}
		클래스1 객체1 = new 클래스1(); // 사용자 정의 클래스 객체 생성이 된다.
	//자바 언어가 작성할수있는공간[ 선언문 태그]
	//System.out.print("jsp 파일에서 작성된 코드 1" + 변수1);
	%>
	<% 
		int 변수2 = 20;
		Date date2 = new Date();
		//int 함수2(){return 3;} 함수 선언 x
	
		System.out.println("jsp 파일에서 작성된 변수 "+변수2);
		System.out.println("jsp 파일에서 작성된 객체 "+date2);
		// 자바 언어가 작성할 수 있는 공간  [스크립트 태그]
		class 클래스2{String 필드2 = "유재석"; }
		클래스2 객체2 = new 클래스2();
				
	%>
	<!--  html 구역 -->
	선언문의 변수: <%=변수1 %> <br>
	선언문의 객체: <%=date1 %> <br>
	선언문의 함수정의 : <%= 함수1() %> <br>
	선언문의 사용자정의 클래스 : <%= 객체1.필드1 %> <br>
	
	스크립트문의 변수: <%=변수2 %> <br>
	스크립트문의 객체: <%=date2 %> <br>
	스크립트문의 함수정의 : x 
	스크립트문의 사용자정의 클래스 : <%= 객체2.필드2 %> <br>
</body>
</html>