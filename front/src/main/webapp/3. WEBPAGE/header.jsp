<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

	<style type="text/css">
		#logo{ float: left; margin: 20px 0 0 20px; }
		#menus{ float: right;}
		#top_menu{
			text-align: right;
			margin-top: 20px;
		}
		#main_menu{
			margin-top: 20px; font-family: "고딕";
			font-size: 20px;
		}
		#main_menu li{ 
			display: inline; 	/* 메뉴 가로 배치 */
			margin-left: 80px; /* 메뉴 간 간격 */ 
		}
		#header{
			width: 1150px; 	/*가로길이 */
			height: 100px;	/* 세로길이 */
			margin: 0 auto;	/* 박스권 가운데정렬 */
		}
	</style>


</head>
<body>
	
	<div id="header">
		<div id="logo"><!-- 로고 -->
			<a href="index.jsp"></a><img alt="" src="img/이랴.png" width="50%">
		</div> 
		<div id="menus">	<!-- 메뉴 -->
			<div id="top_menu"> <!-- 상단 메뉴  -->
				<a href="login.jsp">로그인</a> | 
				<a href="addmember.jsp">회원가입</a> | 
				<a href="공지사항.jsp">공지사항</a>
			</div>
			<ul id="main_menu"> <!--  메인 메뉴  -->
				<li> <a href="#">지점안내</a> </li>
				<li> <a href="#">메뉴소개</a> </li>
				<li> <a href="#">사회공헌</a> </li>
				<li> <a href="#">고객센터</a> </li>
				<li> <a href="#">창업문의</a> </li>
			</ul>
		</div>
	</div>
	

</body>
</html>


