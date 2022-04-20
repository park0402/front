<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
		@font-face {
   		 font-family: 'Yeongdo-Rg';
    	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2202-2@1.0/Yeongdo-Rg.woff') format('woff');
   	 	font-weight: normal;
    	font-style: normal;
		}
		
		.font{font-family: "Yeongdo-Rg";}
		li{ 
			list-style-type: none;
		}
		a{
			 text-decoration: none; 
			 color: black; 
		} 
		a:hover{ 
			color: blue;
		 }
		
		#header{ 
			height: 60px; 
			}
		#box{ 
			width: 1000px; 
			margin: 0 auto;
		 }
		#the{
			width:20px; float: left; 
			margin-left: 50px; 
			margin-top: 30px;
			font-family: "Yeongdo-Rg";
			color: blue;
			font-size: 30px;
			font-weight: bold;
		}
		#스튜디오{ 
			float: left; 
			margin-left: 40px;
			margin-top: 30px; 
			font-family: "Yeongdo-Rg";
			font-size: 30px;
			font-weight: bold;
		}
		#menus{ 
			float: right; 
			text-align: right; 
			margin: 40px 0 0 50px;
		}
		#menus li{ display: inline; }
		#logo{ display: inline; }
		#main_menu li{
			
			font-family: "Yeongdo-Rg";
			font-size: 20px; margin-left: 30px; 
		}
		#main_menu ul{
			
		}

	</style>
</head>
<body>
	<div id="header"> <!-- 헤더 전체  -->
		<div id="box"> <!-- 헤더내 박스권 -->
			<div id="the">	<!-- 로고 -->
				The
			</div> 
			<div id="스튜디오">	<!-- 로고 -->
				<a href="index.jsp">스튜디오</a>
			</div> 
			<div id="menus"> <!-- 메뉴 -->
				<ul id="main_menu"> <!-- 하단메뉴  -->
					<li class="font"> <a href="아우하기싫어.jsp">스튜디오 소개</a> </li>
					<li> <a href="아우하기싫어.jsp">스튜디오 예약</a> </li>
					<li> <a href="아우하기싫어.jsp">블로그</a> </li>
					<li> <a href="아우하기싫어.jsp">포토 갤러리</a> </li>
					<li> <a href="아우하기싫어.jsp">오시는 길</a> </li>
				</ul>
			</div>
		</div>
	</div>

</body>
</html>