<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>확실한 중고차 판매 박카's</title>
	<!-- 부트스트랩 css 포함 -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- 사용자 정의한 css 포함 -->
	<link href="/jspweb/css/main.css" rel="stylesheet">
	<!-- 폰트어썸[ 아이콘 ]  -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">

</head>
<body>	

	<%
		String loginid 
		= (String)session.getAttribute("login"); // 세션 호출 ( 기본타입 = Odject )
	%>
	<div class="fixed-top bg-white">
		<div class="container"> <!-- 박스권 형성 -->
			<div class="py-3"> <!-- 상단 메뉴 -->
					<!-- p : 안쪽 여백	py-* : 위아래 안쪽 여백   
						m : 바깥 여백 	my-* : 위아래 바깥 여백
					-->
				<div class="row"> <!-- 가로 배치 -->
					<div class="col-md-4 offset-4 text-center"> <!-- 그리드[12조각중 4조각] -->
							<!-- text-center : 박스권내 내용물 가운데 정렬 -->
							<!-- offset-4 : 여백 그리드 -->
						<a href="/jspweb/main.jsp" class="header_logo"> PARK'Cars </a> <!-- 링크 -->
					</div>
							<!--  로그인이 안된 상태 = 만약에 세션이 없으면  -->
					<% if( loginid == null ){ %>
					<div class="col-md-4 d-flex justify-content-end"> <!-- 상단 메뉴  -->
					<ul class="nav"> <!-- nav : 가로배치 -->
					<li><a href="/jspweb/member/login.jsp">로그인</a>
					<li><a href="/jspweb/member/signup.jsp">회원가입</a>
					<li><a href="#"></a></li>
					</ul>
					</div>
					<%} %>
					<!--  만약에 로그인된 상태 = 만약에 세션이 있으면 -->
					<% if( loginid != null ){ %>
					<div class="col-md-4 d-flex justify-content-end"> <!-- 상단 메뉴  -->
						<span> <%=loginid %>님 </span>
					<ul class="nav"> <!-- nav : 가로배치 -->
					<li><a href="/jspweb/logout">로그아웃</a>
					<li><a href="/jspweb/member/myshopping.jsp">나의쇼핑</a>
					<li><a href="/jspweb/member/info.jsp">내정보</a></li>
					<li><a href="/jspweb/board/boardlist.jsp?key=&keyword=">자유게시판</a></li>
					</ul>
					</div>					
					<%} %>
					
					
				</div>
			</div>
			
			<div class="navbar navbar-expand-md navbar-light bg-white"> <!-- 본 메뉴 -->
			
				<!-- 숨겨진 메뉴 펼치기 버튼 -->
				<button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navcl">
					<span class="navbar-toggler-icon"></span>
				</button>
				
				<!-- 사이즈가 부족할경우 아래 ul 숨기기 -->
				<div class="collapse navbar-collapse" id="navcl" >
					<ul class="navbar-nav col-md-12 justify-content-between">
											<!-- justify-content-between : 자동 간격 배치  -->
						<li class="nav-item"> <a href="/jspweb/boardcar/베스트.jsp" class="nav-link">베스트 상품</a> </li>
						<li class="nav-item"> <a href="/jspweb/boardcar/현대.jsp" class="nav-link">현대</a> </li>
						<li class="nav-item"> <a href="/jspweb/boardcar/기아.jsp" class="nav-link">기아</a> </li>
						<li class="nav-item"> <a href="/jspweb/boardcar/일본차.jsp" class="nav-link">일본차</a> </li>
						<li class="nav-item"> <a href="/jspweb/boardcar/르노.jsp" class="nav-link">르노</a> </li>
						<li class="nav-item"> <a href="/jspweb/boardcar/대우.jsp" class="nav-link">대우</a> </li>
						<li class="nav-item"> <a href="/jspweb/boardcar/BMW.jsp" class="nav-link">BMW</a> </li>
						<li class="nav-item"> <a href="/jspweb/boardcar/아우디.jsp" class="nav-link">아우디</a> </li>
						<li class="nav-item"> <a href="/jspweb/boardcar/벤츠.jsp" class="nav-link">벤츠</a> </li>
						<li class="nav-item"> <a href="/jspweb/boardcar/그외.jsp" class="nav-link">그외</a> </li>
						<li class="nav-item"> <a href="/jspweb/board/boardlist.jsp?key=&keyword=" class="nav-link">커뮤니티</a> </li>	
						<li class="nav-item"> <a href="/jspweb/board1/boardlist1.jsp" class="nav-link">고객센터</a> </li>	
						<li class="nav-item"> <a href="#" class="nav-link"> <i class="fas fa-search"></i> </a> </li>	
					</ul>
	
				</div>
			</div>
		</div>
	</div>

	<!-- 부트스트랩 js 포함 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
		<!-- jquery 최신 cdn -->
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<!-- 사용자정의 js -->
	<script src="/jspweb/js/main.js" type="text/javascript"></script>

</body>
</html>

