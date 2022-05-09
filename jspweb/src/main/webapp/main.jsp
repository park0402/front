<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	
	<!-- 현재 위치(파일)에 다른 파일 포함하기 -->
	<%@include file = "header.jsp" %>
	<br><br><br><br><br><br>
	<!--  캐러셀 : 이미지 슬라이드  -->
	<div id="cs" class="carousel slide" data-bs-ride="carousel" data-bs-interval="1000">
								<!-- 슬라이드시간 : 밀리초(1000/1초)  -->
		<!-- 슬라이드 위치 표시 : 인디케이터 -->
		<div class="carousel-indicators">
			<button data-bs-target="#cs" data-bs-slide-to="0" class="active"></button>
			<button data-bs-target="#cs" data-bs-slide-to="1"></button>
			<button data-bs-target="#cs" data-bs-slide-to="2"></button>
			<button data-bs-target="#cs" data-bs-slide-to="3"></button>
		</div>
		 <!-- 캐러셀 내용물 -->
		<div class="carousel-inner">
			<div class="carousel-item active"> <img alt="" src="img/mainimage1.jpg"> </div>
			<div class="carousel-item "> <img alt="" src="img/mainimage2.jpg"> </div>
			<div class="carousel-item "> <img alt="" src="img/mainimage3.jpg"> </div>
			<div class="carousel-item "> <img alt="" src="img/mainimage4.jpg"> </div>
		</div>
		<!-- 이미지 이동 버튼 -->
		<button class="carousel-control-prev" data-bs-target="#cs" data-bs-slide="prev">
			<span class="carousel-control-prev-icon"></span>
		</button>
		<button class="carousel-control-next" data-bs-target="#cs" data-bs-slide="next">
			<span class="carousel-control-next-icon"></span>
		</button>
		
	</div> <!-- 캐러셀 end  -->
	<br><br>
	
	<div class="container text-center">
		<hr> <!-- 실선 태그 -->
			<h3> New ARRIVAL </h3>
			<p> 신상품 </p>
	</div>
	
	<div class="container">
		<div class="row">
			<% for( int i = 0 ; i<8 ; i++ ){ %>
				<div class="col-md-3 col-sm-6">	<!-- col-md-3 : col-md: 760px; 이상일경우   col-sm : 570px 이상일경우 --> 
					<div class="card"> <!-- 카드형식 -->
						<img class="card-img-top" alt="" src="img/차량.gif"> <!-- 이미지 -->
						<div class="card-body">
							<p class="item">
								<span class="title"></span>
								<br>
								<span class="content">
								
								</span>
								<br>
								<span class="price1"> 34,000,000원 </span>  
								<span class="price2"> 28,000,000원 </span>
								<br>
								<span class="badge bg-warning text-dark my-3"> 특별할인 </span>
								<span class="badge bg-danger text-dark my-3" > 법인가능 </span>
							</p>
						</div>
					</div>
				</div>
			<% } %>
				
		</div>
	</div>
	
	
	
	
	
	<%@include file = "footer.jsp" %>
	
</body>
</html>

