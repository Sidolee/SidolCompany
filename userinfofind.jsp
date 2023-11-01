<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- // 부트스트랩 설정 --> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700|Raleway:400,300,500,700,600' rel='stylesheet' type='text/css'>
<!-- // 구글 폰트 설정 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css" type="text/css">
<!-- // CSS 적용 -->  
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/responsive.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	// jQuery function to set the active class on click
	$(document).ready(function() {
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



<div style="display: flex; justify-content: space-between;">
    <!-- 첫 번째 네비게이션 바 (아이디찾기), 오른쪽으로 400px 이동 -->
    <nav class="navbar navbar-expand-lg navbar-light navbar-laravel" style="margin-right: auto; margin-left: 400px;">
        <div class="container">
            <a class="navbar-brand" href="#">아이디찾기</a>
        </div>
    </nav>

    <!-- 두 번째 네비게이션 바 (비밀번호찾기) -->
    <nav class="navbar navbar-expand-lg navbar-light navbar-laravel" style=" margin-left: -480px;">
        <div class="container">
            <a class="navbar-brand" href="#">비밀번호찾기</a>
        </div>
    </nav>
</div>

	<main class="login-form">
		<div class="container">
			<div class="row justify-content-center">
				<!-- 첫 번째 폼 -->
				<div class="col-lg-6 col-md-8">
					<div class="card">
						<div class="card-body">
							<form action="" method="">
								<main class="login-form">
									<div class="container">
										<div class="row justify-content-center">
											<div class="col-lg-6 col-md-8">
												<!-- col-lg 추가 -->
												<div class="card">
													<div class="card-body">
														<form action="" method="">
															<div class="form-group row">
																<label for="email_address"
																	class="col-md-4 col-form-label text-md-right" style="margin-left: -100px;">이메일
																	주소</label>
																<div class="col-md-8">
																	<input type="text" id="email_address"
																		class="form-control" name="email-address" required
																		autofocus style="margin-left: -100px;">
																</div>
															</div>
															<div class="form-group row">
																<label for="password"
																	class="col-md-4 col-form-label text-md-right"style="margin-left: -100px;">이름</label>
																<div class="col-md-8">
																	<input type="password" id="password"
																		class="form-control" name="password" required style="margin-left: -100px;">
																</div>
															</div>

															<div class="form-group row">
																<div class="col-md-8 offset-md-4">
																	<!-- offset 조정 -->
																</div>
															</div>

															<div class="form-group row">
																<div class="col-md-8 offset-md-4">
																	<!-- offset 조정 -->
																	<button type="submit" class="btn btn-primary" style="margin-left: 120px;">
																		아이디 찾기</button>
																</div>
															</div>
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>
								</main>
							</form>
						</div>
					</div>
				</div>

				<!-- 두 번째 폼: 첫 번째 폼과 똑같은 구조로 복제 -->
				<div class="col-lg-6 col-md-8">
					<div class="card">
						<div class="card-body">
							<form action="" method="">
								<main class="login-form">
									<div class="container">
										<div class="row justify-content-center">
											<div class="col-lg-6 col-md-8">
												<!-- col-lg 추가 -->
												<div class="card">
													<div class="card-body">
														<form action="" method="">
															<div class="form-group row">
																<label for="email_address"
																	class="col-md-4 col-form-label text-md-right" >이메일
																	주소</label>
																<div class="col-md-8">
																	<input type="text" id="email_address"
																		class="form-control" name="email-address" required
																		autofocus  style="margin-left: -100px;">
																</div>
															</div>

															<div class="form-group row">
																<label for="password"
																	class="col-md-4 col-form-label text-md-right">이름</label>
																<div class="col-md-8">
																	<input type="password" id="password"
																		class="form-control" name="password" required style="margin-left: -100px;">
																</div>
															</div>

															<div class="form-group row">
																<div class="col-md-8 offset-md-4">
																	<!-- offset 조정 -->
																</div>
															</div>

															<div class="form-group row">
																<div class="col-md-8 offset-md-4">
																	<!-- offset 조정 -->
																	<button type="submit" class="btn btn-primary" style="margin-left: 230px;">
																		비밀번호 찾기</button>
																</div>
															</div>
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>
								</main>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>





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