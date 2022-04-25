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
		
			li{ list-style-type: none; }
			#footerBox{
				width: 900px;
				height: 100px;
				margin: 0 auto;
			}
			#footer{
			
				width: 100%;
				height: 150px;
				clear: both;
				margin: 30px 20px 20px 0px;
				background-color: #292c32;
			}
			#footer_logo{
				float: left;
				margin: 30px 20px 20px 40px;
				color: white;
			}
			#address{
				float: left;
				margin: 30px 20px 20px 60px;
				color: white;
				background-color: #292c32;
			}	
			#footerlogo{
				float: left;
				margin: 10px 0 0 10px;
			}
			#png{
				float: left;
			}
			#num{
			font-size: 20px;
			
			}
	</style>
	
</head>
<body>

	<div id="footer">
		<div id="footerBox">
			<ul id="footer_logo">
				<li class="font">고객센터</li>
	            <li id="tel" class="font">Tel : 010- 6443- 0756</li>
			</ul>
			<ul id="address">
				<li class="font">회사소개
	 | 개인정보처리방침 | 이용약관 | 제휴안내</li>
	            <li class="font">주소 : 경기도 용인시 수지구 정평동 123</li>
	            <li class="font">email : redpyg@kakao.com</li>
	            <li class="font">COPYRIGHT (C) 2021 The 스튜디오, ALL RIGHT RESERVED.</li>
			</ul>
			<div id="footerlogo">
				<div id="png"> <img alt="" src="img/facebook.png"> </div>
	            <div id="png"> <img alt="" src="img/blog.png"> </div>
	            <div id="png"> <img alt="" src="img/instagram.png"> </div>
			</div>
		</div>
		
	</div>

</body>
</html>