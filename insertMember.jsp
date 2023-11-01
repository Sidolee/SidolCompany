<%@page contentType="text/html; charset=EUC-KR"%>
<% String projectName= "/sidol1";%>

<title>Main Page</title>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700|Raleway:400,300,500,700,600'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css"
	type="text/css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/responsive.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css">
	
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/sidol1.css">

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

							<li><a href=""><i class="fa fa-user"></i> Login</a></li>

							<li><a href=""><i class="fa fa-lock"></i> Register</a></li>

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

							로그인 등 표시 <br> 웅앵

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

							<li><a href="">출산/유아동</a></li>

							<li role="separator" class="divider"></li>

							<li><a href="">식품</a></li>

							<li><a href="">주방용품</a></li>

							<li><a href="">홈 인테리어</a></li>

							<li role="separator" class="divider"></li>

							<li><a href="">가전/디지털</a></li>

							<li><a href="">스포츠/레저</a></li>

							<li><a href="">자동차용품</a></li>

							<li role="separator" class="divider"></li>

							<li><a href="">도서/음반/DVD</a></li>

							<li><a href="">완구/취미</a></li>

							<li><a href="">문구/오피스</a></li>

							<li role="separator" class="divider"></li>

							<li><a href="">반려동물용품</a></li>

							<li><a href="">헬스/건강용품</a></li>

							<li><a href="">반려동물용품</a></li>



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



<!--  회원가입 폼 태그 시작 지점 -->

<form action='member/insertMember.do' method='get'>
<section>
<article >
<table>

<h3> 회원가입</h3>

<tr>
<td class='joinForm-label'>아이디</td>
<td class='joinForm-input'><input type="text" name="M_ID"/></td>
<td class='joinForm-add'><input type='button' value='중복확인'/></td>
</tr>
<tr>
<td class='joinForm-label'>비밀번호</td>
<td class='joinForm-input'><input type="text" name="M_PW"/></td>
<td class='joinForm-add'></td>
</tr>
<tr>
<td class='joinForm-label'>이름</td>
<td class='joinForm-input'><input type="text" name="M_NAME"/></td>
<td class='joinForm-add'></td>
</tr>
<tr>
<td class='joinForm-label'>성별</td>
<td class='joinForm-input' > <li>
<input type='radio' name='M_GENDER' value='male'> 남성
<input type='radio'  name='M_GENDER' value='female'>여성
</li></td>
<td class='joinForm-add'></td>
</tr>
<tr>
<td class='joinForm-label'>생년월일 라벨</td>
<td class='joinForm-input'><input type="date"  value='time' name="M_BIRTH"/></td>
<td class='joinForm-add'></td>
</tr>
<tr>
<td class='joinForm-label'>전화번호 라벨</td>
<td class='joinForm-input'><input type="text" name="M_TEL"/></td>
<td class='joinForm-add'> </td>
</tr>
<tr>
<td class='joinForm-label'>이메일 라벨</td>
<td class='joinForm-input'><input type="text" name="M_EMAIL" ></td>
<td class='joinForm-add'> <input type='button' value='email 인증하기'/> </td>
</tr>
<tr>
<td class='joinForm-label'>주소 라벨</td>
<td class='joinForm-input'><input type="text" name="M_ADDR"/></td>
<td class='joinForm-add'></td>
</tr>
<tr>
<td class='joinForm-label'>관심카테고리</td>
<td class='joinForm-input'>

<!-- 
<select name="M_CATEGORY3">

<optgroup label ="관심 카테고리3" size = “10”>

<option value = “1”>카테고리1</option>
<option value = “2”>카테고리2</option>
<option value = “3”>카테고리3</option>
<option value = “4”>카테고리4</option>
<option value = “5”>카테고리5</option>
<option value = “6”>카테고리6</option>
<option value = “7”>카테고리7</option>
<option value = “8”>카테고리8</option>
<option value = “9”>카테고리9</option>
<option value = “10”>카테고리10</option>

</optgroup>
</select>
  -->
  
<label><input type="checkbox" name="M_CATEGORY1" value="1"/> 카테고리1 </label>
<label><input type="checkbox" name="M_CATEGORY1" value="2"/> 카테고리2 </label>
<label><input type="checkbox" name="M_CATEGORY1" value="3"/> 카테고리3 </label>
<label><input type="checkbox" name="M_CATEGORY1" value="4"/> 카테고리4 </label>
<label><input type="checkbox" name="M_CATEGORY1" value="5"/> 카테고리5 </label>
<label><input type="checkbox" name="M_CATEGORY1" value="6"/> 카테고리6 </label>
<label><input type="checkbox" name="M_CATEGORY1" value="7"/> 카테고리7 </label>
<label><input type="checkbox" name="M_CATEGORY1" value="8"/> 카테고리8 </label>
<label><input type="checkbox" name="M_CATEGORY1" value="9"/> 카테고리9 </label>
</td>
<td class='joinForm-add'></td>
</tr>
<tr>
<td class='joinForm-label'>개인정보 동의</td>
<td class='joinForm-input' >
<label><input type="checkbox" name="M_AGREE_INFO" value="agree"/> 동의함 </label>
<label><input type="checkbox" name="M_AGREE_INFO" value="disagree"/> 동의하지 않음 </label>
</td>
<td class='joinForm-add'></td>

</tr>
<tr>
<td class='joinForm-label'>마케팅 수신 동의</td>
<td class='joinForm-input' name="M_AGREE_MARKETING" >
<label><input type="checkbox" name="M_AGREE_MARKETING" value="agree"/> 동의함 </label>
<label><input type="checkbox" name="M_AGREE_MARKETING" value="disagree"/> 동의하지 않음 </label>
</td>
<td class='joinForm-add'></td>
</tr>
</table>
<input type='submit' value='가입하기'>
</article>

<footer align="center">

</footer>

</section>

</form>
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

			<script src="resources/js/script.js"></script>

</body>

</html>