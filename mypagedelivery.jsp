<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- // 부트스트랩 설정 --> 
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
 
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700|Raleway:400,300,500,700,600' rel='stylesheet' type='text/css'>
<!-- // 구글 폰트 설정 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css" type="text/css">
<!-- // CSS 적용 -->  
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/responsive.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
<meta charset="UTF-8">
<title>Insert title here</title>
 
<script>
	// jQuery function to set the active class on click
	$(document).ready(function() {
		$('.nav-link').on('click', function() {
			// Remove 'active' class from all links
			$('.nav-link').removeClass('active');

			// Add 'active' class to the clicked link
			$(this).addClass('active');
		});
		
		$('#categorybtn').on('click', function() {
			  var isOpen = $('.btn-group').hasClass('open');

		        // Remove 'active' class from all links
		        if (isOpen) {
		            $('.btn-group').removeClass('open');
		        } else {
		            $('.btn-group').addClass('open');
		        }

		
		});
		
	});
</script>


<style>
#sidebar {
	
	width: calc(100% - 140px);
	
}


.userinfo {
	
	margin-left: -100px;
	
}

/* 배송리스트 템플릿 style */
a.list-group-item {
    height:auto;
    min-height:220px;
}
a.list-group-item.active small {
    color:#fff;
}
.stars {
    margin:20px auto 1px;    
}

</style>
</head>



<body>


	<!-- 최상단 페북,트위터,Google 배너  -->
	<div class="top-bar">

		<!-- 최상단 페북,트위터,Google 배너  -->
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



			</div>

		</div>

	</div>



	<!-- 배너 -->
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
                     data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" id="categorybtn">

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


	<!-- (col-md-4")사이드 메뉴 + (col-md-8)회원정보 입력-->
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<!-- It can be fixed with bootstrap affix http://getbootstrap.com/javascript/#affix-->
				<div id="sidebar" class="well sidebar-nav">
					<h5>
						<i class=""></i> <b>MY 정보</b>
					</h5>
					<ul class="nav nav-pills nav-stacked">
						<li class="nav-link"><a href="mypagedefault.do">개인정보확인/수정</a></li>
						<li class="nav-link"><a href="mypageaccount.do">계좌관리</a></li>
						<li class="active nav-link"><a href="mypagedelivery.do">배송내역</a></li>
					</ul>
					<h5>
						<i class=""></i> <b>MY 쇼핑</b>
					</h5>
					<ul class="nav nav-pills nav-stacked">
						<li class="nav-link"><a href="mypageauctionpro.do">진행중인 경매</a></li>
						<li class="nav-link"><a href="mypageauctionlist.do">경매내역</a></li>
						<li class="nav-link"><a href="mypagewishlist.do">찜 리스트</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-8 userinfo">
				<!-- 배송상태리스트 -->
				<div class="">
					<form class="auctionlistform" action=" " method="post">
						<h1 class="usermodify-auth-title">배송내역</h1>
						<br></br>
						
						<div class="container">
							<div class="row">
								<div class="well">
									<h1 class="text-center">배송내역 리스트</h1>
									<div class="list-group">
										<a href="#" class="list-group-item">
											<div class="media col-md-3">
												<figure class="pull-left">
													<img class="media-object img-rounded img-responsive"
														src="http://placehold.it/350x250"
														alt="placehold.it/350x250">
												</figure>
											</div>
											<div class="col-md-6">
												<h4 class="list-group-item-heading">배송중
												</h4>
												<p class="list-group-item-text">플러피 쿼카 스트레스볼</p>
												<br></br>
												<p class="list-group-item-text">낙찰가 : 1,000,000,000 원</p>
											</div>
											<div class="col-md-3 text-center">
												<button type="button"
													class="btn btn-default btn-lg btn-block">배송조회
												</button>
												<button type="button"
													class="btn btn-default btn-lg btn-block">주문 / 배송 취소
												</button>
												<div class="stars">
													<span class="glyphicon glyphicon-star"></span> <span
														class="glyphicon glyphicon-star"></span> <span
														class="glyphicon glyphicon-star"></span> <span
														class="glyphicon glyphicon-star"></span> <span
														class="glyphicon glyphicon-star-empty"></span>
												</div>
												<p>
													Average 4.5 <small> / </small> 5
												</p>
											</div>
										</a> <a href="#" class="list-group-item">
											<div class="media col-md-3">
												<figure class="pull-left">
													<img class="media-object img-rounded img-responsive"
														src="http://placehold.it/350x250"
														alt="placehold.it/350x250">
												</figure>
											</div>
											<div class="col-md-6">
												<h4 class="list-group-item-heading">배송대기중
												</h4>
												<p class="list-group-item-text">플러피 쿼카 스트레스볼</p>
												<br></br>
												<p class="list-group-item-text">낙찰가 : 1,000,000,000 원</p>
											</div>
											<div class="col-md-3 text-center">
												<button type="button"
													class="btn btn-default btn-lg btn-block">배송조회
												</button>
												<button type="button"
													class="btn btn-default btn-lg btn-block">주문 / 배송 취소
												</button>
												<div class="stars">
													<span class="glyphicon glyphicon-star"></span> <span
														class="glyphicon glyphicon-star"></span> <span
														class="glyphicon glyphicon-star"></span> <span
														class="glyphicon glyphicon-star"></span> <span
														class="glyphicon glyphicon-star-empty"></span>
												</div>
												<p>
													Average 4.5 <small> / </small> 5
												</p>
											</div>
										</a> <a href="#" class="list-group-item">
											<div class="media col-md-3">
												<figure class="pull-left">
													<img class="media-object img-rounded img-responsive"
														src="http://placehold.it/350x250"
														alt="placehold.it/350x250">
												</figure>
											</div>
											<div class="col-md-6">
												<h4 class="list-group-item-heading">2023.10.25 배송완료
												</h4>
												<p class="list-group-item-text">플러피 쿼카 스트레스볼</p>
												<br></br>
												<p class="list-group-item-text">낙찰가 : 1,000,000,000 원</p>
											</div>
											<div class="col-md-3 text-center">
												<button type="button"
													class="btn btn-default btn-lg btn-block">배송조회
												</button>
												<button type="button"
													class="btn btn-default btn-lg btn-block">주문 / 배송 취소
												</button>
												<div class="stars">
													<span class="glyphicon glyphicon-star"></span> <span
														class="glyphicon glyphicon-star"></span> <span
														class="glyphicon glyphicon-star"></span> <span
														class="glyphicon glyphicon-star"></span> <span
														class="glyphicon glyphicon-star-empty"></span>
												</div>
												<p>
													Average 4.5 <small> / </small> 5
												</p>
											</div>
										</a>
									</div>
								</div>
							</div>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>




	<!-- footer -->
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
</body>
</html>