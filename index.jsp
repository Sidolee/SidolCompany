<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

// 부트스트랩 설정
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700|Raleway:400,300,500,700,600' rel='stylesheet' type='text/css'>
// 구글 폰트 설정
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css" type="text/css">
// CSS 적용
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/responsive.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">

<%
/* 굳이 누르고 넘기기보단 창열자마자 바로 컨트롤러 타게하는편이 보기좋을듯 */
	response.sendRedirect("form.do");
%>
