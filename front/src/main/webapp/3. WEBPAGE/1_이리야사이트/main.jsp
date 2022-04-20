<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
		<style type="text/css">
		
		li{list-style-type: none;}
		
		#contents{
			width: 1150px;
			margin: 0px auto;
		}	
		
		#sub_menu{
		width:240px;
		float:left;
		
		}
		#main_contents{
		width:850px;
		float:right;
		}
		#sub_menu h3{
		font-size:20px; color:white;
		background-color:#2945BA;
		padding:15px
		}
		
		#sub_menu li{
		padding:10px;
		border-bottom: dotted 2px #2945BA;
		}
		#main_contents h3{
		font-size:20px; padding-bottom: 10px;
		border-bottom: solid 2px #2945BA;
		
		}
		#main_contents p{
			line-height: 180%
			margin-top: 30px;
		}
		
		#figure{
			text-align: center;
			margin: 20px 10px;
		}
		#main_contents li{ padding: 5px; }
		</style>
</head>
<body>

		<div id="contents">
			<div id="sub_menu"> <!-- 왼쪽 사이드바 -->
				<h3 >이리야 커피</h3>	
			<ul>
				<li>이리야커피 역사</li>
				<li>안내말씀</li>
				<li>창립배경</li>
				<li>지점안내</li>
				<li>메뉴</li>
			
			</ul>
			</div>
			
			<div id="main_contents">
				<h3> 이리야커피  </h3>
         <p>이리야 커피는 진공로스팅 방식으로 커피를 추출합니다. </p>
         <div id="figure">
           <img alt="" src="img/banner.png">
         </div>
         <p>진공로스팅 이란?</p>
         <ul>
            <li>① 진공로스팅(영어: vacuum Roasting)은 기존의 고기를 익히기 위한 로스팅이 아닌 커피 로스팅을 하기 위해 개발된 기술이다.</li>
            <li>② 일반 로스팅의 경우에는 산소와 질소가 존재하는 대기 상태에서 로스팅을 하며 로스팅 과정에서 이산화탄소가 발생하여 산소와 이산화탄소가 원두에 흡착된다</li>
            <li>③ 흡착된 산소는 커피 원두의 산패원인과 탈착으로 향이 날아간다.
</li>
            <li>④ 하지만 진공로스팅의 경우 산소와 질소가 없는 진공상태에서 로스팅을 하며 로스팅 과정에서 발생되는 것이 없고 커피 원두에 흡착된 산소가 없기 때문에 향과 맛이 오래 보존된다.</li>
         </ul>
	
			</div>
		</div>
		
		
		</div>
</body>
</html>