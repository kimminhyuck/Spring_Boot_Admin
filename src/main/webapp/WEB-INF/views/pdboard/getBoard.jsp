<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>물품 등록 페이지</title>
<meta charset="UTF-8">
<meta name="description" content="loans HTML Template">
<meta name="keywords" content="loans, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="static/img/favicon.ico" rel="shortcut icon" />

<!-- Google font -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&display=swap"
	rel="stylesheet">

<!-- Stylesheets -->
<link rel="stylesheet" href="/static/css/bootstrap.min.css" />
<link rel="stylesheet" href="/static/css/font-awesome.min.css" />
<link rel="stylesheet" href="/static/css/owl.carousel.min.css" />
<link rel="stylesheet" href="/static/css/flaticon.css" />
<link rel="stylesheet" href="/static/css/slicknav.min.css" />

<!-- Main Stylesheets -->
<link rel="stylesheet" href="/static/css/style.css" />

<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<!-- Page Preloder -->

	<!-- Header Section -->
	<header class="header-section">
		<a href="index.html" class="site-logo"> <img src="img/logo.png"
			alt="">
		</a>
		<nav class="header-nav">
			<ul class="main-menu">
				<li><a href="index.html">Home</a></li>
				<li><a href="about-us.html">About Us</a></li>
				<li><a href="contact.html" class="active">Contact</a></li>
			</ul>
		</nav>
	</header>
	<!-- Header Section end -->

	<!-- Contact Section end -->
	<section class="contact-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<h2>상품 을 등록해 주세요</h2>
						<form action="updateBoard" method="post" enctype="multipart/form-data">
							<input type="hidden" name="pdcode" value="${pdread.pdcode}" />
						<div class="row">
							<div class="col-md-6">
							<h5>상품 등록한 업체</h5>
								<input type="text"
									class="form-control" id="admin" name="admin" value="${pdread.admin}">
							</div>
							<div class="col-md-6">
								<h5>상품 가격</h5>
								<input type="text" class="form-control"
									id="price" name="price" value="${pdread.price}">
							</div>
							<div class="col-md-6">
								<h5>제목</h5>
								<input type="text"class="form-control"
									id="title" name="title" value="${pdread.title}">
							</div>
							<div class="col-md-6">
								<h5>물품 수량</h5>
								<input type="text"class="form-control"
									id="amount" name="amount" value="${pdread.amount}">
							</div>
							<div class="col-md-12">
								<h5>상품 내용</h5>
								<textarea class="form-control" id="content"
									name="content" rows="3">${pdread.content}</textarea>
							</div>
						<td><img src="/static/Upload/Upload${filelist.fileName}" height="500px"/></td>
						</div>
				</div>
				<div class="col-md-6">
								<button type="submit" class="site-btn btn btn-primary" value="수정">상품 수정하기</button>
				</form>
					<button colspan="2" onclick="location.href='getBoardList'" class="site-btn" style="margin-top: 20px;">상품 목록으로 돌아가기</button>
					<button onclick="location.href='deleteBoard?pdcode=${pdread.pdcode}'" class="site-btn" style="margin-top: 20px;">상품 삭제하기</button>
				</div>
			</div>
		</div>
		</div>
	</section>

	<!--====== Javascripts & Jquery ======-->
	<script src="/static/js/jquery-3.2.1.min.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>
	<script src="/static/js/jquery.slicknav.min.js"></script>
	<script src="/static/js/owl.carousel.min.js"></script>
	<script src="/static/js/jquery-ui.min.js"></script>
	<script src="/static/js/main.js"></script>
</body>
</html>
