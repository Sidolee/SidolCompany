<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="path" value="${pageContext.request.contextPath}" />

<jsp:useBean id="javaDate" class="java.util.Date" />
<fmt:formatDate var="nowDate" value="${javaDate}" pattern="yyyy-MM-dd"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경매창</title>
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/assets/favicon.ico" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="${pageContext.request.contextPath}/resources/css/styles.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700|Raleway:400,300,500,700,600'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css"
	type="text/css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/responsive1_1.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style1_1.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style2_2.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="resources/js/warn_ajax.js"></script>

</head>
<body>

	<div class="top-bar">

		<div class="container">

			<div class="row">

				<div class="col-md-6">

					<div class="social pull-left">

						<ul>

							<li><a href=""><i class="fa fa-facebook"></i></a></li>

							<li><a href=""><i class="fa fa-twitter"></i></a></li>

							<li><a href=""><i class="fa fa-google-plus"></i></a></li>

							<li><a href=""><i class="fa fa-linkedin"></i></a></li>

						</ul>

					</div>

				</div>

				<div class="col-md-6">

					<div class="action pull-right">

						<ul>

							<li><a href="#"><i class="fa fa-user"></i> ${ sessionScope.logId }님</a></li>

							<li><a href="main_logout.do"><i class="fa fa-lock"></i>로그아웃</a></li>

						</ul>

					</div>

				</div>

			</div>

		</div>

	</div>

	<div class="header">

		<div class="container">

			<div class="row">

				<div class="col-md-3 col-sm-4">

					<div class="logo">

						<a href="main_login.do"> <img
							src="resources/images/sidolLogo.png" alt="Orani E-shop">

						</a>

					</div>

				</div>

				<div class="col-md-7 col-sm-5">

					<div class="search-form">

						<form class="navbar-form" role="search">

							<div class="form-group">

								<input type="text" class="form-control"
									placeholder="여기서 상품 검색할거지?">

							</div>

							<button type="submit" class="btn">
								<i class="fa fa-search"></i>
							</button>

						</form>

					</div>

				</div>

				<div class="col-md-2 col-sm-3">

					<div class="cart">

						<div class="cart-icon">
							<a href="main.do"> <i class="fa fa-shopping-cart"></i></a>

						</div>

						<div class="cart-text">

							참여중인 경매 <br> 로그인해주세요

						</div>

					</div>

				</div>

			</div>

		</div>

	</div>

	<div class="navigation">

		<nav class="navbar navbar-theme">

			<div class="container">

				<!-- Brand and toggle get grouped for better mobile display -->

				<div class="navbar-header">

					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false">

						<span class="sr-only">Menu</span> <span class="icon-bar"></span> <span
							class="icon-bar"></span> <span class="icon-bar"></span>

					</button>

				</div>

				<div class="shop-category nav navbar-nav navbar-left">

					<!-- Single button -->

					<div class="btn-group">

						<button type="button"
							class="btn btn-shop-category dropdown-toggle"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

							경매 카테고리 <span class="caret"></span>

						</button>

						<ul class="dropdown-menu">

							<li><a href="productList.do?C_ID=1">패션의류/잡화</a></li>

							<li><a href="productList.do?C_ID=2">뷰티</a></li>

							<li><a href="productList.do?C_ID=3"> 유아 </a></li>

							<li role="separator" class="divider"></li>

							<li><a href="productList.do?C_ID=4">식품</a></li>

							<li><a href="productList.do?C_ID=5">주방용품/홈 인테리어</a></li>

							<li><a href="productList.do?C_ID=6">가전/디지털/자동차</a></li>
							
							<li role="separator" class="divider"></li>

							<li><a href="productList.do?C_ID=7">스포츠/레저/건강용품</a></li>

							<li><a href="productList.do?C_ID=8">도서/음반/DVD</a></li>

							<li><a href="productList.do?C_ID=9">완구/취미/문구</a></li>

						</ul>

					</div>

				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->

				<div class="collapse navbar-collapse" id="navbar">

					<ul class="nav navbar-nav navbar-right">

						<li><a href="mypagedefault.do">마이페이지</a></li>

						<li><a href="#">이벤트</a></li>

						<li><a href="bid_List.do">경매 신청</a></li>

						<li><a href="info_page.do">문의 & FAQ</a></li>
					</ul>

				</div>
				<!-- /.navbar-collapse -->

			</div>
			<!-- /.container-fluid -->

		</nav>

	</div>

	<!--  end of header -->
	
	<!-- Page content-->
	<div class="container">
		<div class="row">
			<!-- Blog entries-->
			<div class="col-lg-4">
				<!-- Featured blog post-->
				<div class="card mb-4">
					<div class="card-body">
						<div class="card mb-4">
							<div class="card-body">
								<ul class="bxslider">

									<%-- 이미지 설정 --%>

									<li><img src="resources/images/${product.a_IMG1}" /></li>

									<c:if test="${not empty product.a_IMG2}">
										<li><img src="resources/images/${product.a_IMG2}" /></li>
									</c:if>

									<c:if test="${not empty product.a_IMG3}">
										<li><img src="resources/images/${product.a_IMG3}" /></li>
									</c:if>

								</ul>
								<div id="bx-pager">
									<a data-slide-index="0" href="">1</a>

									<c:if test="${not empty product.a_IMG2}">
										<a data-slide-index="1" href="">2</a>
									</c:if>

									<c:if test="${not empty product.a_IMG3}">
										<a data-slide-index="2" href="">3</a>
									</c:if>

								</div>

								<div class="small text-muted"></div>
							</div>
						</div>
						<div class="row"></div>
						<div class="card mb-4">
							<div class="card-body">

								<%-- 로그인 정보 - 계좌 --%>

								현재 계좌 : 000,000,000원<br> 
								내가 입찰한 금액 : 000,000,000원
							</div>
						</div>
						<div class="row"></div>
						<div class="card mb-4">
							<div class="card-body">

								<%-- 로그인 참조 --%>
								<h4>참여 인원 : ${product.a_ACCESS} / ${product.a_LIMIT}</h4><!-- 경매참여인원 -->
								
								<h4>경매 상태 : <strong> 경매 진행중</strong></h4><!-- 경매중 -->
								<h4><strong>현재가 : ${product.START_COST} 원</strong></h4><!-- 11.07 2:54 경매중 호가로 바꿔야함-->
								<!-- 호가가 0 원일때는 STARTCOST로 출력하기-->
	
							</div>
						</div>
						<a class="btn ms-lg-6 btn-primary" id="attendAuctionButton">입찰하기</a>
					</div>
				</div>
				<!-- Nested row for non-featured blog posts-->
				<div class="row"></div>
				<!-- Pagination-->
			</div>
			<div class="col-lg-4">
				<!-- Featured blog post-->
				<div class="card mb-4">
					<div class="card-header">
						제목 ${product.a_TITLE}

						<div class="text-right">
							<a class="btn btn-outline-dark mt-auto" href="#"> 경매가 </a>
						</div>
					</div>
					<div class="card-body">
						<div class=""></div>
						<div class="small text-muted">${product.a_CONTENT}</div>
					</div>
				</div>
				
				<div class="card mb-4">
					<div class="card-header">
						입찰하기
					</div>
					<div class="card-body">
						<input id="호가" value=""/>	<td><button>입찰하기</button></td>
					</div>
				</div>

				<!-- Nested row for non-featured blog posts-->
				<div class="row"></div>
				<!-- Pagination-->
			</div>
			<!-- Side widgets-->

			<div class="col-lg-4">
				<!-- Search widget-->
				<div class="card mb-4">
					<div class="card-header">판매자 정보</div>
					<div class="card-body">${product.a_SELLER}
						<%-- 왜 이런지 모름 --%>
						<br>
					</div>
				</div>
				<!-- Categories widget-->
				<div class="card mb-4">
					<div class="card-header">남은 시간</div>
					<div class="card-body">
						경매 등록일 : <fmt:formatDate value="${product.a_DATE}" pattern="yyyy-MM-dd" /><br>
						경매 시작일 :
						<fmt:formatDate value="${product.a_STARTDAY}" pattern="yyyy-MM-dd" /><br>
						경매 종료일 : 
						<fmt:formatDate value="${product.a_ENDDAY}" pattern="yyyy-MM-dd" /> <br>
						남은시간: 경매 종료일- 현재 시간 <br>						 
 						
						
					</div>
				</div>
				<!-- Side widget-->
				<div class="card mb-4">
					<div class="card-header">즉시입찰가</div>
					<div class="card-body">
						10,000,000원 
					</div>
				</div>
				
				<div class="card mb-4">
					<div class="card-body">
						<a class="btn ms-lg-5 btn-primary" href="#1">기록 확인</a> 

						<a id="warnWrite" class="btn ms-lg-5 btn-primary" href="bid_Write.do?A_NUM=${product.a_NUM}&W_CUSTOMER=${ sessionScope.logId }">신고 하기</a>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- Footer-->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2023</p>
		</div>
	</footer>

	<!-- jQuery Library -->

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

	<!-- Latest compiled and minified JavaScript -->

	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	<!-- Core theme JS-->
	<script src="${path}/resources/js/scripts.js"></script>
	<script src="resources/js/sidolcript.js" type="text/javascript"></script>
</body>
</html>