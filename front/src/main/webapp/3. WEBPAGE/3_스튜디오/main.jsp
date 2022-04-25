<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

	<style type="text/css">
	
	li{list-style-type: none;}
	#main_box{
		width : 1100px;
		height : 300px;
		margin: 0 auto;

	}
			@font-face {
   		 font-family: 'Yeongdo-Rg';
    	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2202-2@1.0/Yeongdo-Rg.woff') format('woff');
   	 	font-weight: normal;
    	font-style: normal;
		}
	.font{font-family: 'Yeongdo-Rg';}
	
	#main_top{
		margin: 0 auto;
		
		
		
	}
	#main_left{
		float: left;
		width: 500px;
		margin: 0px 10px 50px 30px;
	}
	#main_right{
		float: left;
		width: 500px;
		margin: 0px 10px 30px 20px;
	}
	#main_left .d1 	{
		float: left;
		text-align: center;
	}
	#main_right .d1 	{
		float: left;
		text-align: center;
	}
	.d1{
		margin-right: 10px;
	}
	#main_bottom{
		clear: both;
		width: 900px;
		padding: 20px;
		margin: 0 auto;
	}
	#main_bottom .c1{
		width: 200px;
	}
	
	#main_bottom .bottom{
		float: left;
		padding-bottom: 40px;
	}
	#main_bottom .title{
		font-size: 20px;
		font-weight: bold;
		font-family: "Yeongdo-Rg";
	}
	#main_bottom .content{
		font-size: 10px;
		font-family: "Yeongdo-Rg";
	}

	
	</style>
</head>
<body>

	<div id="main_box">
		<div id="main_mid">
			<div id="main_left">
				<div class="mid_main"> <img alt="" src="img/icon1.png"> </div>
				<div> <h4 class="font">예약 안내</h4> </div>
				<div> <p class="font">스튜디오 대여는 사전에 인터넷으로 예약을 하셔야 합니다. 예약은 1일 이전까지 가능합니다.</p> </div>
			</div>
			<div id="main_right">
				<div class="mid_main"> <img alt="" src="img/icon2.png"> </div>
				<div> <h4 class="font">포토 갤러리</h4> </div>
				<div> <p class="font">취업 사진, 가족 사진, 프로필 사진,우정 사진 개인 또는 단체가 이용할 수 있습니다. </p> </div>
			</div>
		</div>
		
			<div id="main_bottom"> 
				 <ul class="bottom">
				 	<li> <img class="c1" alt="" src="img/image1.jpg"> </li>
				 	<li class="title"> 촬영 스튜디오 </li>
				 	<li class="content"> 카메라 조명등 촬영 장비 </li>
				 </ul>
				 <ul class="bottom">
				 	<li> <img class="c1" alt="" src="img/image2.jpg"> </li>
				 	<li class="title"> 다양한 소품 </li>
				 	<li class="content"> 여러가지 소품 </li>
				 </ul>
				 <ul class="bottom">
				 	<li> <img class="c1" alt="" src="img/image3.jpg"> </li>
				 	<li class="title"> 출장 가능 </li>
				 	<li class="content"> 협의하에 출장가능 합니다 문의주세요~ </li>
				 </ul>
				 <ul class="bottom">
				 	<li> <img class="c1" alt="" src="img/image4.jpg"> </li>
				 	<li class="title"> 다양한 촬영장소 </li>
				 	<li class="content"> 컨샙에 맞는 장소제공 </li>
				 </ul>
			</div>
	
	</div>

</body>
</html>