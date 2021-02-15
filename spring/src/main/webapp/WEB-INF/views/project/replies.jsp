<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<script type="text/javascript" src="/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="/resources/js/reply.js"></script>
<title>SAVIOR</title>
<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="/resources/vendor/bootstrap/css/bootstrap.min.css">

<!-- Custom styles for this template -->
<link rel="stylesheet" href="/resources/css/modern-business.css?a">

<head>

</head>
<body>
	<!-- 댓글창 -->
	<div class="card my-4">
		<h5 class="card-header">댓글</h5>
		<div class="card-body">
			<form>
				<div class="form-group">
					<textarea id="reply" name="reply" class="form-control" rows="3"></textarea>
				</div>
				<div class="text-right">
					<button id="replyAddBtn" class="btn btn-primary">댓글 쓰기</button>

				</div>
			</form>
		</div>
	</div>

	<!-- 댓글 -->
	<ul id="replies">

	</ul>
</body>
</html>