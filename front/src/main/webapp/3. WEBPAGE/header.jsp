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
			margin-top: 20px; font-family: "���";
			font-size: 20px;
		}
		#main_menu li{ 
			display: inline; 	/* �޴� ���� ��ġ */
			margin-left: 80px; /* �޴� �� ���� */ 
		}
		#header{
			width: 1150px; 	/*���α��� */
			height: 100px;	/* ���α��� */
			margin: 0 auto;	/* �ڽ��� ������� */
		}
	</style>


</head>
<body>
	
	<div id="header">
		<div id="logo"><!-- �ΰ� -->
			<a href="index.jsp"></a><img alt="" src="img/�̷�.png" width="50%">
		</div> 
		<div id="menus">	<!-- �޴� -->
			<div id="top_menu"> <!-- ��� �޴�  -->
				<a href="login.jsp">�α���</a> | 
				<a href="addmember.jsp">ȸ������</a> | 
				<a href="��������.jsp">��������</a>
			</div>
			<ul id="main_menu"> <!--  ���� �޴�  -->
				<li> <a href="#">�����ȳ�</a> </li>
				<li> <a href="#">�޴��Ұ�</a> </li>
				<li> <a href="#">��ȸ����</a> </li>
				<li> <a href="#">������</a> </li>
				<li> <a href="#">â������</a> </li>
			</ul>
		</div>
	</div>
	

</body>
</html>


