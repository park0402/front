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
		#��Ʃ���{ 
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
	<div id="header"> <!-- ��� ��ü  -->
		<div id="box"> <!-- ����� �ڽ��� -->
			<div id="the">	<!-- �ΰ� -->
				The
			</div> 
			<div id="��Ʃ���">	<!-- �ΰ� -->
				<a href="index.jsp">��Ʃ���</a>
			</div> 
			<div id="menus"> <!-- �޴� -->
				<ul id="main_menu"> <!-- �ϴܸ޴�  -->
					<li class="font"> <a href="�ƿ��ϱ�Ⱦ�.jsp">��Ʃ��� �Ұ�</a> </li>
					<li> <a href="�ƿ��ϱ�Ⱦ�.jsp">��Ʃ��� ����</a> </li>
					<li> <a href="�ƿ��ϱ�Ⱦ�.jsp">��α�</a> </li>
					<li> <a href="�ƿ��ϱ�Ⱦ�.jsp">���� ������</a> </li>
					<li> <a href="�ƿ��ϱ�Ⱦ�.jsp">���ô� ��</a> </li>
				</ul>
			</div>
		</div>
	</div>

</body>
</html>