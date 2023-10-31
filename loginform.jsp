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

<!-- 로그인 폼  -->
<div class="container login-container">
    <div class="row login-row">
        <div class="col-md-6 offset-md-3 col-lg-4 offset-lg-4"> <!-- Adjusted columns for responsiveness -->
            <h1 style="margin-left: 300px;"><i class="fa fa-lock" aria-hidden="true"></i> Login</h1>
            
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text" ><i class="fas fa-user-tie" style="margin-left: 300px;"></i></span>
                </div>
                <input type="text" name="" class="form-control" placeholder="Username or Email" style="margin-left: 300px;"/>
            </div><br />

            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i style="margin-left: 300px;"></i></span>
                </div>
                <input type="password" name="" class="form-control" placeholder="Password" style="margin-left: 300px;"/>
            </div><br />

            <div class="checkbox" >
                <label  style="margin-left: 300px; white-space: nowrap;"><input type="checkbox" value="" />아이디 기억하기</label>
            </div><br />

            <button type="submit" class="btn btn-success" style="margin-left: 300px;"><span class="glyphicon glyphicon-off" ></span> Login</button>
            <button type="submit" class="btn btn-info" style="margin-left: 300px;"><span class="glyphicon glyphicon-remove" ></span> Login with Facebook </button><br />

            <div class="footer-login">
                <p  style="margin-left: 300px;"><a href="#" >회원가입</a></p>
                <p  style="margin-left: 300px; white-space: nowrap;"><a href="userinfofind.do" >비밀번호찾기</a></p>
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