<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!-- // 부트스트랩 설정 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700|Raleway:400,300,500,700,600' rel='stylesheet' type='text/css'>
<!-- // 구글 폰트 설정 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css" type="text/css">
<!-- // CSS 적용 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/responsive.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">

<title>Main_logout ver. </title>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700|Raleway:400,300,500,700,600'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css"
	type="text/css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/responsive.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css">
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

							<li><a href="member/main_login.do"><i class="fa fa-user"></i> 로그인</a></li>

							<li><a href="member/join.do"><i class="fa fa-lock"></i> 회원가입</a></li>

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

						<a href="index.html"> <img src="resources/images/sidolLogo.png"
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

						<div class="cart-icon">

							<a href=""><i class="fa fa-shopping-cart"></i></a>

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

							<li><a href="">패션의류/잡화</a></li>

							<li><a href="">뷰티</a></li>

							<li><a href=""> 유아 </a></li>

							<li role="separator" class="divider"></li>

							<li><a href="">식품</a></li>

							<li><a href="">주방용품/홈 인테리어</a></li>

							<li><a href="">가전/디지털/자동차</a></li>
							
							<li role="separator" class="divider"></li>

							<li><a href="">스포츠/레저/건강용품</a></li>

							<li><a href="">도서/음반/DVD</a></li>

							<li><a href="">완구/취미/문구</a></li>



						</ul>

					</div>

				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->

				<div class="collapse navbar-collapse" id="navbar">

					<ul class="nav navbar-nav navbar-right">

						<li><a href="#">마이페이지</a></li>

						<li><a href="#">이벤트</a></li>

						<li><a href="#">경매 신청</a></li>

						<li><a href="#">문의 & FAQ</a></li>
					</ul>

				</div>
				<!-- /.navbar-collapse -->

			</div>
			<!-- /.container-fluid -->

		</nav>

	</div>

<!--  end of header -->

	<div class="slider">

		<div class="container">

			<div class="row">

				<div class="col-md-8 col-sm-8">

					<div class="slider big-slider">

						<div id="featured" class="carousel slide" data-ride="carousel">

							슬라이드

							<ol class="carousel-indicators">

								<li data-target="#featured" data-slide-to="0" class="active"></li>

							</ol>



							하실건가요

							<div class="carousel-inner" role="listbox">

								<div class="item active"
									style="background-image: url('resources/images/test2.png')">

									<div class="carousel-caption">

										<h4> 지금 진행중인 이벤트 보기 </h4>

										<h2 class="raleway">
											문구는 같이 정합시다 <span> </span>
										</h2>


									</div>

								</div>

							</div>

						</div>

					</div>

				</div>

				<div class="col-md-4 col-sm-4">

					<div class="slider small-slider">

						<div id="small-featured" class="carousel slide"
							data-ride="carousel">

							저희도

							<ol class="carousel-indicators">

								<li data-target="#small-featured" data-slide-to="0"
									class="active"></li>

							</ol>



							슬라이드 하는게 좋겠죠,,,?

							<div class="carousel-inner" role="listbox">

								<div class="item active"
									style="background-image: url('resources/images/test4.png')">

									<div class="carousel-caption">

										<h3> 인기 카테고리 </h3>

										<p> 지금 가장 핫한 경매들</p>


									</div>

								</div>

							</div>


						</div>

					</div>

				</div>

			</div>

		</div>

	</div>
	<!--  end of first fow -->







	<!--  second row  -->
	<div class="banner">

		<div class="container">

			<div class="row">

				<div class="col-md-4 col-sm-4">

					<div class="single-banner"
						style="background-image: url(resources/images/banner-1.jpg)">

						<div class="banner-caption">

							<h3> 패션의류/잡화 </h3>


						</div>

					</div>

				</div>
				<!--  end of Each category -->

				<div class="col-md-4 col-sm-4">

					<div class="single-banner"
						style="background-image: url(resources/images/banner-2.jpg)">

						<div class="banner-caption">

							<h3> 뷰티 </h3>


						</div>

					</div>

				</div>
				<!--  end of Each category -->

				<!--  카테고리 구분 -->
				<div class="col-md-4 col-sm-4">

					<div class="single-banner"
						style="background-image: url(resources/images/banner-3.jpg)">

						<div class="banner-caption">

							<h3> 아동 </h3>

						</div>

					</div>

				</div>
				<!--  end of Each category -->


		</div> <!--  end of second  row div  -->
			
	</div> <!--  end of second container div -->
			
</div> <!--  end of second banner div -->



	<!--  third row -->
	<div class="banner">

		<div class="container">

			<div class="row">

				<div class="col-md-4 col-sm-4">

					<div class="single-banner"
						style="background-image: url('resources/images/banner-1.jpg')">

						<div class="banner-caption">

								<h3> 식품 </h3>
						</div>

					</div>

				</div> <!--  end of each category -->

				<div class="col-md-4 col-sm-4">

					<div class="single-banner"
						style="background-image: url(resources/images/banner-2.jpg)">

							<div class="banner-caption">

								<h3> 주방용품/홈인테리어</h3>
							</div>

					</div>

				</div>

						<!--  카테고리 구분 -->
						<div class="col-md-4 col-sm-4">

							<div class="single-banner"
								style="background-image: url(resources/images/banner-3.jpg)">

								<div class="banner-caption">

									<h3>가전/디지털/자동차</h3>


								</div>

							</div>

						</div> <!--  end of Each category -->


					</div> <!--  end of third row div -->
					
			</div> <!--  end of third container div -->
			
	</div> <!--  end of third banner div -->



					<!--  second row  -->
					<div class="banner">

						<div class="container">

							<div class="row">

								<div class="col-md-4 col-sm-4">

									<div class="single-banner"
										style="background-image: url(resources/images/banner-1.jpg)">

										<div class="banner-caption">

											<h3>스포츠/레저/건강용품</h3>


										</div>

									</div>

								</div>
								<!--  end of Each category -->

								<div class="col-md-4 col-sm-4">

									<div class="single-banner"
										style="background-image: url(resources/images/banner-2.jpg)">

										<div class="banner-caption">

											<h3>도서/음반/DVD</h3>


										</div>

									</div>

								</div>
								<!--  end of Each category -->

								<!--  카테고리 구분 -->
								<div class="col-md-4 col-sm-4">

									<div class="single-banner"
										style="background-image: url(resources/images/banner-3.jpg)">

										<div class="banner-caption">

											<h3>완구/취미/문구</h3>


										</div>

									</div>

								</div>
								<!--  end of Each category -->


							</div> <!--  end of  fourth row div -->


						</div> <!--  end of  fourth container div -->

					</div> <!--  end of  fourth banner div -->









			<!--  여기서 부터는 밑에 하단 동그라미 메뉴 -->
			<!-- 쓰고 싶어질 수도 있으니까 일단 주석처리  -->
<!-- 			<div class="shopping-process text-center">

				<div class="container">

					<div class="row">

						<div class="col-md-3 col-sm-3">

							<div class="single-process">

								<i class="fa fa-check"></i>

								<h3>Choose a Product</h3>

								<p>The European languages are members the same family. Their
									separate existence science</p>

							</div>

						</div>

						<div class="col-md-3 col-sm-3">

							<div class="single-process">

								<i class="fa fa-cart-arrow-down"></i>

								<h3>Add to Cart</h3>

								<p>The European languages are members the same family. Their
									separate existence science</p>

							</div>

						</div>

						<div class="col-md-3 col-sm-3">

							<div class="single-process">

								<i class="fa fa-money"></i>

								<h3>Make Order</h3>

								<p>The European languages are members the same family. Their
									separate existence science</p>

							</div>

						</div>

						<div class="col-md-3 col-sm-3">

							<div class="single-process">

								<i class="fa fa-dashcube"></i>

								<h3>Deliver For Free</h3>

								<p>The European languages are members the same family. Their
									separate existence science</p>

							</div>

						</div>

					</div>

				</div>

			</div>
 -->

			<div class="footer">

				<div class="container">

					<div class="row">

						<div class="col-md-3 col-sm-3">

							<div class="single-widget">

								<h2 class="widget-title">About Us</h2>

								<div class="widget-inner">

									<p>Office: 868 Fake Street, New York</p>

									<p>Phone: (08) 8827 633354</p>

									<p>Fax: 08) 08 4752 1499</p>

									<p>Email: mail@yourdomain.com</p>

									<img src="resources/images/payment.png" alt="we accept">

								</div>

							</div>

						</div>

						<div class="col-md-3 col-sm-3">

							<div class="single-widget">

								<h2 class="widget-title">Information</h2>

								<div class="widget-inner">

									<ul>

										<li><a href="">Frequently Asked Question</a></li>

										<li><a href="">Terms and Condition</a></li>

										<li><a href="">Privacy Policy</a></li>

										<li><a href="">Customer Service</a></li>

										<li><a href="">Delivery Information</a></li>

										<li><a href="">Manufacturers</a></li>

									</ul>

								</div>

							</div>

						</div>

						<div class="col-md-3 col-sm-3">

							<div class="single-widget">

								<h2 class="widget-title">Customer Care</h2>

								<div class="widget-inner">

									<ul>

										<li><a href="">Contact Us</a></li>

										<li><a href="">Sitemap</a></li>

										<li><a href="">Gift Vouchers</a></li>

										<li><a href="">Live Chat 24x7</a></li>

									</ul>

								</div>

							</div>

						</div>

						<div class="col-md-3 col-sm-3">

							<div class="single-widget">

								<h2 class="widget-title">Our Services</h2>

								<div class="widget-inner">

									<ul>

										<li><a href="">Shipping & Returns</a></li>

										<li><a href="">Secure Shopping</a></li>

										<li><a href="">International Shipping</a></li>

										<li><a href="">Affiliates</a></li>

										<li><a href="">Contact</a></li>

									</ul>

								</div>

							</div>

						</div>

					</div>

				</div>

			</div>

			<div class="copyright text-center">

				<div class="container">

					<div class="row">

						<p class="copyright">
							Shared by <i class="fa fa-love"></i><a
								href="https://bootstrapthemes.co">BootstrapThemes</a>
						</p>

					</div>

				</div>

			</div>

			<!-- jQuery Library -->

			<script
				src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

			<!-- Latest compiled and minified JavaScript -->

			<script
				src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

			<!-- Script -->

			<script src="js/script.js"></script>
</body>

</html>
