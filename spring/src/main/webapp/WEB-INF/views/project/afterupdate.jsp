<!DOCTYPE html>
<html lang="ko">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<script type="text/javascript" src="/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="/resources/js/PJdetail.js"></script>
<script type="text/javascript" src="/resources/js/reply.js"></script>
<title>SAVIOR</title>
<head>
<%@include file="header.jsp"%>
</head>
<body>

	<div class="row">
		<div class="container">
			<h1 class="mt-4 mb-3">
				입양후기 <small> ADOPT REVIEW </small>
			</h1>
			<ol class="breadcrumb">
				<li class="breadcrumb-item active">세이비어는 사지않고 입양하는 문화를 만듭니다.</li>
			</ol>
			<form action="/project/afterupdate" method="post">
				<!-- 글번호 -->
				<hr>
				<p>
					<input type="hidden" name="no" id="no" value="${update.no}"
						readonly>${update.no}</p>
				<hr>
				<p class="lead">
					<input type="text" name="title" value="${update.title}">
				</p>
				<hr>

				<!-- 이미지 -->

				<input type="hidden" name="uploadFile" value="image">
				<div id="readult">
					<ul></ul>
				</div>
				<!-- 글 내용 -->
				<hr>
				<textarea name="contents" rows="10" cols="150">${update.contents}</textarea>

<br><br>

				<div class="text-center">
					<input type="submit" class="nav-item btn btn-primary" value="수정하기">
					<a class="nav-item btn btn-primary" href="after?category=1">취소</a>
				</div>
			</form>
		</div>
	</div>


	<%@include file="footer.jsp"%>
</body>
</html>