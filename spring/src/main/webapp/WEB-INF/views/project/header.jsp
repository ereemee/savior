<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>


<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SAVIOR</title>

<!-- CSS -->
<link rel="stylesheet"
	href="/resources/css/bootstrap.min.css">

<!-- Custom styles -->
<link rel="stylesheet" href="/resources/css/modern-business.css">

</head>

<body>
	<!-- 네비게이션 -->
	<nav class="navbar fixed-top navbar-expand-lg navbar-light bg-dark">
		<div class="container">
			<a class="navbar-brand" href="home"><img
				src="../resources/image/logo.png" style="width: 130px;"></a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="intro">소개</a></li>

					<li class="nav-item"><a class="nav-link"
						href="after?category=1">입양후기</a></li>
					<li class="nav-item"><a class="nav-link" href="donation">후원</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="noticelist?category=4">공지사항</a></li>

					<li><c:choose>
							<c:when test="${id!=null}">
								<li class="nav-item dropdown"><a
									class="nav-item btn btn-primary" href="#"
									id="navbarDropdownPortfolio" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false">마이페이지</a>
									<div class="dropdown-menu dropdown-menu-right"
										aria-labelledby="navbarDropdownPortfolio">
										<a class="dropdown-item" href="memberdetail">내정보확인</a>
										&nbsp;&nbsp; <a class="dropdown-item" href="memberlist">전체회원목록</a>
										&nbsp;&nbsp; <a class="dropdown-item" href="logout">로그아웃</a>&nbsp;&nbsp;
									</div></li>
							</c:when>
							<c:otherwise>
								<a class="nav-item btn btn-primary" href="login">로그인</a>&nbsp;&nbsp;
							</c:otherwise>

						</c:choose></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- nav end -->