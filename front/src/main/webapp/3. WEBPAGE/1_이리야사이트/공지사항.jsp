<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<style type="text/css">
	
	* {
    padding: 0px;
    margin: 0px;
	}
	h1 {
    text-align: center;
    margin: 30px 0px;
	}
	ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
    }
    button{
    color:white;
    }
	
	#search {
	text-align: right;
    width: 1150px;
    height: 50px;
    margin: 0 auto;
    background-color: #2945BA;
    color:white;
	}
	.cols {
    border-bottom: solid 1px #2945BA;
	}
    #board {
 
    width: 1150px;
    margin: 0 auto;
    padding-bottom: 50px;
    

	}
	#col1 {
    width: 1150px;
    
	padding: 5px 0;
    text-align: left;
	}
	#col2 {
    width: 200px;
    margin: 0 auto;
	
    padding: 5px 0;
      text-align: left;
	}


	</style>
</head>
<body>
		<%@include file="header.jsp"%>
		<%@include file="mainimage.jsp"%>
		  
		  <div id="search">
		
		<input type="text" placeholder="검색어를 입력해주세요.">
		<button id="search">검색</button>
		</div>
	
		  <ul id="board">
		<li>
			<ul class="cols">
			<li id="col1">공지사항</li>
			</ul>
		</li>
		<li>
			<ul class="cols">
			<li id="col1" ><a href="공지사항1.jsp">1.메뉴가 추가되었습니다. 달고나 에스프레소 라떼 이벤트 자세한이용은 아래 링크를 참조</a><li id="col2">2022.04.19</li>
			<li id="col1" ></li>
			<li id="col1" ><a href="공지사항2.jsp">2.종로지점 리뉴얼 오픈 .</a><li id="col2">2022.04.19</li>
			<li id="col1" ><a href="공지사항3.jsp">3.국민 카드 결제시 오류건에 대해</a><li id="col2">2022.04.19</li>
			
			</ul>
		</li>
	</ul>
		  
		
	<%@include file="footer.jsp" %>
</body>
</html>