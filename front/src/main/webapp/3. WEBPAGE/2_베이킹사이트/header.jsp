<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<style type="text/css">
		li{list-style-type: none;}/*�۸Ӹ�����*/
		a{text-decoration: none; color:black;}/*�������� ���󺯰�*/
		#header{height:150px;}
		#box{width:1100px; margin:0auto;}
		#logo{float: left; margin:50px 0px 0px 50px;}
		#menus{float:right; text-align: right;}
		#menus li{display:inline;}
		
		@font-face {
   			 font-family: 'Cafe24Ohsquareair';
   			 src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2202@1.0/Cafe24Ohsquareair.woff') format('woff');
   			 font-weight: normal;
    		font-style: normal;
		}
		
		#main_menu li{
		font-family: "Cafe24Ohsquareair";
		font-size:20px;
		margin:50px 0 0 100px;
		font-weight: bold;
		
		}
		#top_menu{ margin: 30px 0px;}
		#top_menu li{ margin-left:10px;}
	
	</style>
</head>
<body>
	<div id="header"> <!--  �����ü  -->
		<div id="box"> <!-- ����� �ڽ��� -->
			<div id="logo">
				<img alt="" src="img/logo.png">
			</div> <!-- �ΰ� -->
			<div id="menus">
				<ul id="top_menu"><!-- ��ܸ޴� -->
				<li>������(jykim)�� |</li>
				<li><a href="#">�������� |</a></li>
				<li><a href="#">�α׾ƿ� </a></li>
				</ul>
				<ul id="main_menu"><!-- �ϴܸ޴� -->
					<li><a href="index.jsp">Home</a></li>
					<li><a href="#">�⼮��</a></li>
					<li><a href="galley.jsp">��ǰ������</a></li>
					<li><a href="#">�Խ���</a></li>
				</ul>
			
			</div> <!-- �޴� -->
		</div>
		
	
	</div>
	

</body>
</html>