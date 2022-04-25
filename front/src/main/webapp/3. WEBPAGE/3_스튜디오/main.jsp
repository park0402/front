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
				<div> <h4 class="font">���� �ȳ�</h4> </div>
				<div> <p class="font">��Ʃ��� �뿩�� ������ ���ͳ����� ������ �ϼž� �մϴ�. ������ 1�� �������� �����մϴ�.</p> </div>
			</div>
			<div id="main_right">
				<div class="mid_main"> <img alt="" src="img/icon2.png"> </div>
				<div> <h4 class="font">���� ������</h4> </div>
				<div> <p class="font">��� ����, ���� ����, ������ ����,���� ���� ���� �Ǵ� ��ü�� �̿��� �� �ֽ��ϴ�. </p> </div>
			</div>
		</div>
		
			<div id="main_bottom"> 
				 <ul class="bottom">
				 	<li> <img class="c1" alt="" src="img/image1.jpg"> </li>
				 	<li class="title"> �Կ� ��Ʃ��� </li>
				 	<li class="content"> ī�޶� ����� �Կ� ��� </li>
				 </ul>
				 <ul class="bottom">
				 	<li> <img class="c1" alt="" src="img/image2.jpg"> </li>
				 	<li class="title"> �پ��� ��ǰ </li>
				 	<li class="content"> �������� ��ǰ </li>
				 </ul>
				 <ul class="bottom">
				 	<li> <img class="c1" alt="" src="img/image3.jpg"> </li>
				 	<li class="title"> ���� ���� </li>
				 	<li class="content"> �����Ͽ� ���尡�� �մϴ� �����ּ���~ </li>
				 </ul>
				 <ul class="bottom">
				 	<li> <img class="c1" alt="" src="img/image4.jpg"> </li>
				 	<li class="title"> �پ��� �Կ���� </li>
				 	<li class="content"> ������ �´� ������� </li>
				 </ul>
			</div>
	
	</div>

</body>
</html>