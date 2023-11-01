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
									placeholder="���⼭ ��ǰ �˻��Ұ���?">

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

							�α��� �� ǥ�� <br> ����

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

							��� ī�װ� <span class="caret"></span>

						</button>

						<ul class="dropdown-menu">

							<li><a href="">�м��Ƿ�/��ȭ</a></li>

							<li><a href="">��Ƽ</a></li>

							<li><a href="">���/���Ƶ�</a></li>

							<li role="separator" class="divider"></li>

							<li><a href="">��ǰ</a></li>

							<li><a href="">�ֹ��ǰ</a></li>

							<li><a href="">Ȩ ���׸���</a></li>

							<li role="separator" class="divider"></li>

							<li><a href="">����/������</a></li>

							<li><a href="">������/����</a></li>

							<li><a href="">�ڵ�����ǰ</a></li>

							<li role="separator" class="divider"></li>

							<li><a href="">����/����/DVD</a></li>

							<li><a href="">�ϱ�/���</a></li>

							<li><a href="">����/���ǽ�</a></li>

							<li role="separator" class="divider"></li>

							<li><a href="">�ݷ�������ǰ</a></li>

							<li><a href="">�ｺ/�ǰ���ǰ</a></li>

							<li><a href="">�ݷ�������ǰ</a></li>



						</ul>

					</div>

				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->

				<div class="collapse navbar-collapse" id="navbar">

					<ul class="nav navbar-nav navbar-right">

						<li><a href="#">����������</a></li>

						<li><a href="#">�̺�Ʈ</a></li>

						<li><a href="#">��� ��û</a></li>

						<li><a href="#">���� & FAQ</a></li>
					</ul>

				</div>
				<!-- /.navbar-collapse -->

			</div>
			<!-- /.container-fluid -->

		</nav>

	</div>



<!--  ȸ������ �� �±� ���� ���� -->

<form action='member/insertMember.do' method='get'>
<section>
<article >
<table>

<h3> ȸ������</h3>

<tr>
<td class='joinForm-label'>���̵�</td>
<td class='joinForm-input'><input type="text" name="M_ID"/></td>
<td class='joinForm-add'><input type='button' value='�ߺ�Ȯ��'/></td>
</tr>
<tr>
<td class='joinForm-label'>��й�ȣ</td>
<td class='joinForm-input'><input type="text" name="M_PW"/></td>
<td class='joinForm-add'></td>
</tr>
<tr>
<td class='joinForm-label'>�̸�</td>
<td class='joinForm-input'><input type="text" name="M_NAME"/></td>
<td class='joinForm-add'></td>
</tr>
<tr>
<td class='joinForm-label'>����</td>
<td class='joinForm-input' > <li>
<input type='radio' name='M_GENDER' value='male'> ����
<input type='radio'  name='M_GENDER' value='female'>����
</li></td>
<td class='joinForm-add'></td>
</tr>
<tr>
<td class='joinForm-label'>������� ��</td>
<td class='joinForm-input'><input type="date"  value='time' name="M_BIRTH"/></td>
<td class='joinForm-add'></td>
</tr>
<tr>
<td class='joinForm-label'>��ȭ��ȣ ��</td>
<td class='joinForm-input'><input type="text" name="M_TEL"/></td>
<td class='joinForm-add'> </td>
</tr>
<tr>
<td class='joinForm-label'>�̸��� ��</td>
<td class='joinForm-input'><input type="text" name="M_EMAIL" ></td>
<td class='joinForm-add'> <input type='button' value='email �����ϱ�'/> </td>
</tr>
<tr>
<td class='joinForm-label'>�ּ� ��</td>
<td class='joinForm-input'><input type="text" name="M_ADDR"/></td>
<td class='joinForm-add'></td>
</tr>
<tr>
<td class='joinForm-label'>����ī�װ�</td>
<td class='joinForm-input'>

<!-- 
<select name="M_CATEGORY3">

<optgroup label ="���� ī�װ�3" size = ��10��>

<option value = ��1��>ī�װ�1</option>
<option value = ��2��>ī�װ�2</option>
<option value = ��3��>ī�װ�3</option>
<option value = ��4��>ī�װ�4</option>
<option value = ��5��>ī�װ�5</option>
<option value = ��6��>ī�װ�6</option>
<option value = ��7��>ī�װ�7</option>
<option value = ��8��>ī�װ�8</option>
<option value = ��9��>ī�װ�9</option>
<option value = ��10��>ī�װ�10</option>

</optgroup>
</select>
  -->
  
<label><input type="checkbox" name="M_CATEGORY1" value="1"/> ī�װ�1 </label>
<label><input type="checkbox" name="M_CATEGORY1" value="2"/> ī�װ�2 </label>
<label><input type="checkbox" name="M_CATEGORY1" value="3"/> ī�װ�3 </label>
<label><input type="checkbox" name="M_CATEGORY1" value="4"/> ī�װ�4 </label>
<label><input type="checkbox" name="M_CATEGORY1" value="5"/> ī�װ�5 </label>
<label><input type="checkbox" name="M_CATEGORY1" value="6"/> ī�װ�6 </label>
<label><input type="checkbox" name="M_CATEGORY1" value="7"/> ī�װ�7 </label>
<label><input type="checkbox" name="M_CATEGORY1" value="8"/> ī�װ�8 </label>
<label><input type="checkbox" name="M_CATEGORY1" value="9"/> ī�װ�9 </label>
</td>
<td class='joinForm-add'></td>
</tr>
<tr>
<td class='joinForm-label'>�������� ����</td>
<td class='joinForm-input' >
<label><input type="checkbox" name="M_AGREE_INFO" value="agree"/> ������ </label>
<label><input type="checkbox" name="M_AGREE_INFO" value="disagree"/> �������� ���� </label>
</td>
<td class='joinForm-add'></td>

</tr>
<tr>
<td class='joinForm-label'>������ ���� ����</td>
<td class='joinForm-input' name="M_AGREE_MARKETING" >
<label><input type="checkbox" name="M_AGREE_MARKETING" value="agree"/> ������ </label>
<label><input type="checkbox" name="M_AGREE_MARKETING" value="disagree"/> �������� ���� </label>
</td>
<td class='joinForm-add'></td>
</tr>
</table>
<input type='submit' value='�����ϱ�'>
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