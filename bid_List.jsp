<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경매 신청 확인 페이지</title>
<link rel="icon" type="image/x-icon"
	href="${path}/resources/assets/favicon.ico" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="${path}/resources/css/styles.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700|Ralew
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style1_1.css">ay:400,300,500,700,600'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css"
	type="text/css">

<link rel="stylesheet" type="text/css"
	href="${path}/resources/css/responsive1_1.css">

<link rel="stylesheet" type="text/css"
	href="${path}/resources/css/style1_1.css">

<link rel="stylesheet" type="text/css"
	href="${path}/resources/css/style2_2.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
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

							<li><a href="#"><i class="fa fa-user"></i> ${vo.M_NAME }님</a></li>

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

						<a href="main_login.do"> <img src="resources/images/sidolLogo.png"
							alt="Orani E-shop">

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

						<div class="cart-icon"><a href="main.do">

							<i class="fa fa-shopping-cart"></i></a>

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

							<li><a href="productList.do">패션의류/잡화</a></li>

							<li><a href="productList.do">뷰티</a></li>

							<li><a href="productList.do"> 유아 </a></li>

							<li role="separator" class="divider"></li>

							<li><a href="productList.do">식품</a></li>

							<li><a href="productList.do">주방용품/홈 인테리어</a></li>

							<li><a href="productList.do">가전/디지털/자동차</a></li>
							
							<li role="separator" class="divider"></li>

							<li><a href="productList.do">스포츠/레저/건강용품</a></li>

							<li><a href="productList.do">도서/음반/DVD</a></li>

							<li><a href="productList.do">완구/취미/문구</a></li>



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

	<%-- 내부 구성 --%>
	<div class="row">
		<div class="col-1"></div>
		<div class=" card col-5">
		 
			<div class="card-body">
				<table class="table table-inbox table-responsive table-bordered">
					<thead class="thead-dark">
                		<tr>
                    	<th>제목</th>
                    	<th>시간</th>
                    	<th>첨부파일</th>
                		</tr>
            		</thead>
					<tbody>
				 	<c:forEach items="${auctioninfoList}" var="auction">
				<!-- 프라퍼티이름 변경 -->
						<tr>
							<td align="left"><a href="bid_Ck_Pc.do?A_NUM=${auction.a_NUM}">
										${auction.a_TITLE }</a></td>
							<td>${auction.a_DATE }</td>
								
								<!-- 추가 -->
							<td>
								<c:choose>
								<c:when test="${auction.a_IMGSIZE==0} }">첨부파일없음</c:when>
								<c:otherwise>
											<a href='resources/upload/${auction.a_REALIMG }'> 
											<img src="resources/images/disk.gif">${auction.a_IMG1 }
											</a>
								</c:otherwise>
								</c:choose>
							</td>
								
								
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

		<div class="card col-5">
			<div class="card-body">
				<table class="table table-inbox table-responsive">
					<tbody>
						<tr class="unread">
							<td class="inbox-small-cells"><input type="checkbox"
								class="mail-checkbox"></td>
							<td class="view-message ">상품명</td>

							<td class="view-message text-right">내용</td>

							<td class="view-message inbox-small-cells text-right"><i
								class="fa fa-paperclip"></i></td>

							<td class="view-message text-right">시간 표시</td>
						</tr>
						<tr class="unread">
							<td class="inbox-small-cells"><input type="checkbox"
								class="mail-checkbox"></td>
							<td class="view-message ">상품명</td>

							<td class="view-message text-right">내용</td>

							<td class="view-message inbox-small-cells text-right"><i
								class="fa fa-paperclip"></i></td>

							<td class="view-message text-right">시간 표시</td>
						</tr>
						<tr class="">
							<td class="inbox-small-cells"><input type="checkbox"
								class="mail-checkbox"></td>
							<td class="view-message ">상품명</td>

							<td class="view-message text-right">내용</td>

							<td class="view-message inbox-small-cells text-right"><i
								class="fa fa-paperclip"></i></td>

							<td class="view-message text-right">시간 표시</td>
						</tr>
						
						<div class="card mb-1">
				<div class="card-body">
					<div class="row row-cols-4">
						<div class="col-2"></div>
						<a class="btn btn-primary col-4" href="bid_Wit.do">새로운 경매</a> <a
							class="btn btn-primary col-4" href="bid_Ck_Pc.do">경매 신청 삭제</a>
					</div>
				</div>
			</div>
						
					</tbody>
				</table>
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
	<script src="${path}/resources/js/scripts2.js"></script>
</body>
</html>