<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Dashboard - NiceAdmin Bootstrap Template</title>
<meta content="" name="description">
<meta content="" name="keywords">


<!-- 챠트 js 파일 -->
<script src="resources/js/chart.js"></script>


<!-- Favicons -->
<link href="${path}/resources/assets/img/favicon.png" rel="icon">
<link href="${path}/resources/assets/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link
	href="${path}/resources/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${path}/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link
	href="${path}/resources/assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="${path}/resources/assets/vendor/quill/quill.snow.css"
	rel="stylesheet">
<link href="${path}/resources/assets/vendor/quill/quill.bubble.css"
	rel="stylesheet">
<link href="${path}/resources/assets/vendor/remixicon/remixicon.css"
	rel="stylesheet">
<link href="${path}/resources/assets/vendor/simple-datatables/style.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="${path}/resources/assets/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: Sep 18 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
	<!-- ======= Header ======= -->
	<header id="header" class="header fixed-top d-flex align-items-center">

		<div class="d-flex align-items-center justify-content-between">
			<a href="index.html" class="logo d-flex align-items-center"> <img
				src="assets/img/logo.png" alt=""> <span
				class="d-none d-lg-block">관리자 페이지</span>
			</a> <i class="bi bi-list toggle-sidebar-btn"></i>
		</div>
		<!-- End Logo -->

		<div class="search-bar">
			<form class="search-form d-flex align-items-center" method="POST"
				action="#">
				<input type="text" name="query" placeholder="Search"
					title="Enter search keyword">
				<button type="submit" title="Search">
					<i class="bi bi-search"></i>
				</button>
			</form>
		</div>
		<!-- End Search Bar -->

		<nav class="header-nav ms-auto">
			<ul class="d-flex align-items-center">

				<li class="nav-item d-block d-lg-none"><a
					class="nav-link nav-icon search-bar-toggle " href="#"> <i
						class="bi bi-search"></i>
				</a></li>
				<!-- End Search Icon-->

				<li class="nav-item dropdown"><a class="nav-link nav-icon"
					href="#" data-bs-toggle="dropdown"> <i class="bi bi-bell"></i>
						<span class="badge bg-primary badge-number">4</span>
				</a> <!-- End Notification Icon -->

					<ul
						class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
						<li class="dropdown-header">You have 4 new notifications <a
							href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View
									all</span></a>
						</li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li class="notification-item"><i
							class="bi bi-exclamation-circle text-warning"></i>
							<div>
								<h4>Lorem Ipsum</h4>
								<p>Quae dolorem earum veritatis oditseno</p>
								<p>30 min. ago</p>
							</div></li>

						<li>
							<hr class="dropdown-divider">
						</li>

						<li class="notification-item"><i
							class="bi bi-x-circle text-danger"></i>
							<div>
								<h4>Atque rerum nesciunt</h4>
								<p>Quae dolorem earum veritatis oditseno</p>
								<p>1 hr. ago</p>
							</div></li>

						<li>
							<hr class="dropdown-divider">
						</li>

						<li class="notification-item"><i
							class="bi bi-check-circle text-success"></i>
							<div>
								<h4>Sit rerum fuga</h4>
								<p>Quae dolorem earum veritatis oditseno</p>
								<p>2 hrs. ago</p>
							</div></li>

						<li>
							<hr class="dropdown-divider">
						</li>

						<li class="notification-item"><i
							class="bi bi-info-circle text-primary"></i>
							<div>
								<h4>Dicta reprehenderit</h4>
								<p>Quae dolorem earum veritatis oditseno</p>
								<p>4 hrs. ago</p>
							</div></li>

						<li>
							<hr class="dropdown-divider">
						</li>
						<li class="dropdown-footer"><a href="#">Show all
								notifications</a></li>

					</ul> <!-- End Notification Dropdown Items --></li>
				<!-- End Notification Nav -->

				<li class="nav-item dropdown"><a class="nav-link nav-icon"
					href="#" data-bs-toggle="dropdown"> <i
						class="bi bi-chat-left-text"></i> <span
						class="badge bg-success badge-number">3</span>
				</a> <!-- End Messages Icon -->

					<ul
						class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
						<li class="dropdown-header">You have 3 new messages <a
							href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View
									all</span></a>
						</li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li class="message-item"><a href="#"> <img
								src="assets/img/messages-1.jpg" alt="" class="rounded-circle">
								<div>
									<h4>Maria Hudson</h4>
									<p>Velit asperiores et ducimus soluta repudiandae labore
										officia est ut...</p>
									<p>4 hrs. ago</p>
								</div>
						</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li class="message-item"><a href="#"> <img
								src="assets/img/messages-2.jpg" alt="" class="rounded-circle">
								<div>
									<h4>Anna Nelson</h4>
									<p>Velit asperiores et ducimus soluta repudiandae labore
										officia est ut...</p>
									<p>6 hrs. ago</p>
								</div>
						</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li class="message-item"><a href="#"> <img
								src="assets/img/messages-3.jpg" alt="" class="rounded-circle">
								<div>
									<h4>David Muldon</h4>
									<p>Velit asperiores et ducimus soluta repudiandae labore
										officia est ut...</p>
									<p>8 hrs. ago</p>
								</div>
						</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li class="dropdown-footer"><a href="#">Show all messages</a>
						</li>

					</ul> <!-- End Messages Dropdown Items --></li>
				<!-- End Messages Nav -->

				<li class="nav-item dropdown pe-3"><a
					class="nav-link nav-profile d-flex align-items-center pe-0"
					href="#" data-bs-toggle="dropdown"> <img
						src="assets/img/profile-img.jpg" alt="Profile"
						class="rounded-circle"> <span
						class="d-none d-md-block dropdown-toggle ps-2">K. Anderson</span>
				</a> <!-- End Profile Iamge Icon -->

					<ul
						class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
						<li class="dropdown-header">
							<h6>Kevin Anderson</h6> <span>웹 디자이너</span>
						</li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li><a class="dropdown-item d-flex align-items-center"
							href="users-profile.html"> <i class="bi bi-person"></i> <span>내
									정보</span>
						</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li><a class="dropdown-item d-flex align-items-center"
							href="users-profile.html"> <i class="bi bi-gear"></i> <span>설정</span>
						</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li><a class="dropdown-item d-flex align-items-center"
							href="pages-faq.html"> <i class="bi bi-question-circle"></i>
								<span>도움</span>
						</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li><a class="dropdown-item d-flex align-items-center"
							href="#"> <i class="bi bi-box-arrow-right"></i> <span>로그아웃</span>
						</a></li>

					</ul> <!-- End Profile Dropdown Items --></li>
				<!-- End Profile Nav -->

			</ul>
		</nav>
		<!-- End Icons Navigation -->

	</header>
	<!-- End Header -->

	<!-- ======= Sidebar ======= -->
	<aside id="sidebar" class="sidebar">

		<ul class="sidebar-nav" id="sidebar-nav">

			<li class="nav-item"><a class="nav-link " href="main_scm.do">
					<i class="bi bi-house"></i> <span>메인 페이지</span>
			</a></li>

			<li class="nav-item"><a class="nav-link collapsed" href="#">
					<i class="bi bi-person"></i> <span>회원관리</span>
			</a></li>
			<!-- End Profile Page Nav -->

			<li class="nav-item"><a class="nav-link collapsed" href="#">
					<i class="bi bi-exclamation-diamond-fill"></i> <span>경고 게시글</span>
			</a></li>
			<!-- End F.A.Q Page Nav -->

			<li class="nav-item"><a class="nav-link collapsed" href="#">
					<i class="bi bi-calendar2-event"></i> <span>이벤트 관리</span>
			</a></li>
			<!-- End Contact Page Nav -->

			<li class="nav-item"><a class="nav-link collapsed"
				data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-gem"></i><span>경매 관리</span><i
					class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="icons-nav" class="nav-content collapse "
					data-bs-parent="#sidebar-nav">
					<li><a href="#"> <i class="bi bi-circle"></i><span>예정</span>
					</a></li>
					<li><a href="#"> <i class="bi bi-circle"></i><span>진행중</span>
					</a></li>
					<li><a href="#"> <i class="bi bi-circle"></i><span>완료</span>
					</a></li>
				</ul></li>
			<!-- End Icons Nav -->

			<li class="nav-item"><a class="nav-link collapsed" href="#">
					<i class="bi bi-journal-medical"></i> <span>공지사항</span>
			</a></li>
			<!-- End Login Page Nav -->

			<li class="nav-item"><a class="nav-link collapsed" href="#">
					<i class="bi bi-question-circle"></i> <span>문의글</span>
			</a></li>
			<!-- End Error 404 Page Nav -->

			<li class="nav-item"><a class="nav-link collapsed" href="#">
					<i class="bi bi-file-ruled-fill"></i> <span>작업기록</span>
			</a></li>
			<!-- End Blank Page Nav -->

			<li class="nav-item"><a class="nav-link collapsed" href="#"><i
					class="bi bi-file-earmark-bar-graph"></i><span>통계</span></a></li>

			<li class="nav-item"><a class="nav-link collapsed" href="#"><i
					class="bi bi-grid"></i><span>UI</span></a></li>
		</ul>

	</aside>
	<!-- End Sidebar-->

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>통계</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">관리자 페이지</a></li>
					<li class="breadcrumb-item"><a href="info_list.do">회원관리</a></li>
					<li class="breadcrumb-item active">회원정보</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<main id="main" class="main">

			<div class="pagetitle">
				<h1>Chart.js</h1>
				<nav>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.html">Home</a></li>
						<li class="breadcrumb-item">Charts</li>
						<li class="breadcrumb-item active">Chart.js</li>
					</ol>
				</nav>
			</div>
			<!-- End Page Title -->

			<p>
				Chart.JS Examples. You can check the <a
					href="https://www.chartjs.org/docs/latest/samples/" target="_blank">official
					website</a> for more examples.
			</p>

			<section class="section">
				<div class="row">

				<!--구매 데이터 테이블 -->
					<div class="col-lg-6">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">[구매 데이터]</h5>
								<div class="card-body">

									<!-- Default Tabs -->
									<ul class="nav nav-tabs" id="myTab" role="tablist">
										<li class="nav-item" role="presentation">
											<button class="nav-link active" id="home-tab"
												data-bs-toggle="tab" data-bs-target="#home" type="button"
												role="tab" aria-controls="home" aria-selected="true">가격대 판매량</button>
										</li>
										<li class="nav-item" role="presentation">
											<button class="nav-link" id="profile-tab"
												data-bs-toggle="tab" data-bs-target="#profile" type="button"
												role="tab" aria-controls="profile" aria-selected="false"
												tabindex="-1">요일 판매량</button>
										</li>
										<li class="nav-item" role="presentation">
											<button class="nav-link" id="contact-tab"
												data-bs-toggle="tab" data-bs-target="#contact" type="button"
												role="tab" aria-controls="contact" aria-selected="false"
												tabindex="-1">카테고리 판매량</button>
										</li>
									</ul>
									
									<div class="tab-content pt-2" id="myTabContent">
										<div class="tab-pane fade show active" id="home"
											role="tabpanel" aria-labelledby="home-tab">
											가격대 별 판매량 데이터를 활용하여 소비자의 선호도와 시장 동향을 파악하기 용이하고 최적의 가격을 설정할 수
											있습니다. 이는 제품의 가격 탄력성을 이해하고 수익을 극대화하는 데 도움이 됩니다. 또한, 경쟁사와의 비교를
											통해 시장에서 경쟁 우위를 확보하고 고객을 유치하는 전략을 구사할 수 있습니다.
											<!-- 가격대 판매량  Line Chart -->
											<canvas id="price_salesvolume_linechart"
												style="max-height: 400px; display: block; box-sizing: border-box; height: 315px; width: 630px;"
												width="630" height="315"></canvas>
											<!-- 가격대 판매량  End Bar CHart -->
										</div>
										<div class="tab-pane fade" id="profile" role="tabpanel"
											aria-labelledby="profile-tab">
											요일별 판매량 데이터를 활용하면 소비자의 구매 패턴을 파악하여 효율적인 재고 및 운영 계획을 수립할 수
											있습니다. 이를 통해 인기 상품을 적시에 공급하여 수요에 맞춰 생산하고 재고 비용을 최적화할 수 있습니다.
											또한, 프로모션 및 마케팅 활동을 특정 요일에 집중하여 효과적으로 고객을 유치하고 매출을 증가시킬 수
											있습니다.
											<!-- 요일 판매량 Bar Chart -->
											<canvas id="week_salesvolume_barchart"
												style="max-height: 400px; display: block; box-sizing: border-box; height: 315px; width: 630px;"
												width="630" height="315"></canvas>

											<!-- 요일 판매량 End Bar CHart -->
										</div>
										<div class="tab-pane fade" id="contact" role="tabpanel"
											aria-labelledby="contact-tab">
											어떤 제품이 가장 수요가 높은지를 파악하여 제품 라인업을 최적화할 수 있습니다. 이를 통해 인기 있는
											카테고리에 자원을 집중하고 부진한 카테고리에 대한 전략을 재고할 수 있습니다. 또한, 고객 선호도를 이해하여
											타겟 시장에 맞춘 마케팅 전략을 구사하여 경쟁 우위를 확보하고 매출을 증가시킬 수 있습니다.
											<!-- 카테고리 판매량 Pie Chart -->
											<canvas id="category_salesvolume_piechart"
												style="max-height: 400px; display: block; box-sizing: border-box; height: 400px; width: 630px;"
												width="630" height="400"></canvas>

											<!-- 카테고리 판매량 End Pie CHart -->

										</div>
									</div>
									<!-- End Default Tabs -->

								</div>


							</div>
						</div>
					</div>
					<!--End of 구매 데이터 테이블 -->

				
				<!-- 방문 데이터 테이블 -->
					<div class="col-lg-6">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">[방문 데이터]</h5>

								<!--  일간 방문자 데이터 Line Chart -->
								<canvas id="daily_visitor_linechart"
									style="max-height: 400px; display: block; box-sizing: border-box; height: 315px; width: 630px;"
									width="630" height="315"></canvas>
								<!-- 일간 방문자 데이터End Line CHart -->

								<!-- 주간 방문자 데이터 Line Chart -->
								<canvas id="weekly_visitor_linechart"
									style="max-height: 400px; display: block; box-sizing: border-box; height: 315px; width: 630px;"
									width="630" height="315"></canvas>

								<!--주간 방문자 데이터 End Line CHart -->

							</div>
						</div>
					</div>
				<!--End of 방문 데이터 테이블 -->


				<!-- 매출 데이터 테이블 -->
					<div class="col-lg-6">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">[매출 데이터]</h5>
								<div class="card-body">
									
								<!-- 총매출 데이터 테이블 -->		
						              <div class="card info-card revenue-card">
						                <div class="card-body">
						                  <h5 class="card-title">Revenue <span>| This Year</span></h5>
						
						                  <div class="d-flex align-items-center">
						                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
						                      <i class="bi bi-currency-dollar"></i>
						                    </div>
						                    <div class="ps-3">
						                      <h6>$313,264</h6>
						                      <span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span>
						
						                    </div>
						                  </div>
						                </div>
						              </div>
            	<!-- End of 총매출 데이터 테이블 -->	
									
									<!-- Default Tabs -->
									<ul class="nav nav-tabs" id="myTab1" role="tablist">
										<li class="nav-item" role="presentation">
											<button class="nav-link active" id="home-tab1"
												data-bs-toggle="tab" data-bs-target="#home1" type="button"
												role="tab" aria-controls="home" aria-selected="true">성비 매출</button>
										</li>
										<li class="nav-item" role="presentation">
											<button class="nav-link" id="profile-tab1"
												data-bs-toggle="tab" data-bs-target="#profile1"
												type="button" role="tab" aria-controls="profile"
												aria-selected="false" tabindex="-1">카테고리 매출</button>
										</li>
										<li class="nav-item" role="presentation">
											<button class="nav-link" id="contact-tab1"
												data-bs-toggle="tab" data-bs-target="#contact1"
												type="button" role="tab" aria-controls="contact"
												aria-selected="false" tabindex="-1">월별 매출</button>
										</li>
									</ul>
									<div class="tab-content pt-2" id="myTabContent1">
										<div class="tab-pane fade show active" id="home1"
											role="tabpanel" aria-labelledby="home-tab1">
											<!-- 성비 매출 Pie Chart -->
											<canvas id="gender_ratiosales_piechart"
												style="max-height: 400px; display: block; box-sizing: border-box; height: 400px; width: 630px;"
												width="630" height="400"></canvas>

											<!-- 성비 매출 End Pie CHart -->
										</div>
										<div class="tab-pane fade" id="profile1" role="tabpanel"
											aria-labelledby="profile-tab">											
											<!-- 카테고리 매출 Bar Chart -->
											<canvas id="category_sales_barchart"
												style="max-height: 400px; display: block; box-sizing: border-box; height: 315px; width: 630px;"
												width="630" height="315"></canvas>
											<!-- 카테고리 매출 End Bar CHart -->
										</div>
										<div class="tab-pane fade" id="contact1" role="tabpanel"
											aria-labelledby="contact-tab">
											<!-- 월별 매출 Bar Chart -->
											<canvas id="monthly_sales_barchart"
												style="max-height: 400px; display: block; box-sizing: border-box; height: 315px; width: 630px;"
												width="630" height="315"></canvas>
											<!-- 월별 매출 End Bar CHart -->
										</div>
									</div>
									<!-- End Default Tabs -->
								</div>
							</div>
						</div>
					</div>
				<!--End of 매출 데이터 테이블 -->


				<!--고객 데이터 테이블 -->
					<div class="col-lg-6">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">[고객 데이터]</h5>
								<div class="card-body">

									<!-- Default Tabs -->
									<ul class="nav nav-tabs" id="myTab2" role="tablist">
										<li class="nav-item" role="presentation">
											<button class="nav-link active" id="home-tab2"
												data-bs-toggle="tab" data-bs-target="#home2" type="button"
												role="tab" aria-controls="home" aria-selected="true">고객
												연령층</button>
										</li>
										<li class="nav-item" role="presentation">
											<button class="nav-link" id="profile-tab2"
												data-bs-toggle="tab" data-bs-target="#profile2"
												type="button" role="tab" aria-controls="profile"
												aria-selected="false" tabindex="-1">남녀 성비</button>
										</li>

									</ul>
									<div class="tab-content pt-2" id="myTabContent2">
										<div class="tab-pane fade show active" id="home2"
											role="tabpanel" aria-labelledby="home-tab2">
											<!-- 고객 연령층  Line Chart -->
											<canvas id="customer_agegroup_linechart"
												style="max-height: 400px; display: block; box-sizing: border-box; height: 315px; width: 630px;"
												width="630" height="315"></canvas>

											<!-- 고객 연령층  End Line CHart -->



										</div>
										<div class="tab-pane fade" id="profile2" role="tabpanel"
											aria-labelledby="profile-tab">
											<!-- 남녀 성비 Pie Chart -->
											<canvas id="gender_ratio_piechart"
												style="max-height: 400px; display: block; box-sizing: border-box; height: 400px; width: 630px;"
												width="630" height="400"></canvas>

											<!-- 남녀 성비 End Pie CHart -->
										</div>

									</div>
									<!-- End Default Tabs -->

								</div>


							</div>
						</div>
					</div>
					
				<!--End of 고객 데이터 테이블 -->
					

				</div>
			<!--end of row  -->

			</section>

		</main>
	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
		<div class="copyright">
			&copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights
			Reserved
		</div>
		<div class="credits">
			<!-- All the links in the footer should remain intact. -->
			<!-- You can delete the links only if you purchased the pro version. -->
			<!-- Licensing information: https://bootstrapmade.com/license/ -->
			<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
			Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
		</div>
	</footer>
	<!-- End Footer -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script
		src="${path}/resources/assets/vendor/apexcharts/apexcharts.min.js"></script>
	<script
		src="${path}/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="${path}/resources/assets/vendor/chart.js/chart.umd.js"></script>
	<script src="${path}/resources/assets/vendor/echarts/echarts.min.js"></script>
	<script src="${path}/resources/assets/vendor/quill/quill.min.js"></script>
	<script
		src="${path}/resources/assets/vendor/simple-datatables/simple-datatables.js"></script>
	<script src="${path}/resources/assets/vendor/tinymce/tinymce.min.js"></script>
	<script
		src="${path}/resources/assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="${path}/resources/assets/js/main.js"></script>

</body>

</html>
