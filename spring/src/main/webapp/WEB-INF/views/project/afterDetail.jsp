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
<script type="text/javascript" src="/resources/js/detail.js"></script>
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
			<form name="frm1">
				<!-- 글번호 -->
				<hr>

				<p>
					<input type="hidden" name="no" id="no" value="${afterdetail.no}"
						readonly>${afterdetail.no}</p>

				<hr>
				<p>${afterdetail.writer}</p>
				<hr>
				<p class="lead">${afterdetail.title}</p>
				<hr>


				<!-- 이미지 -->

				<input type="hidden" name="uploadFile" value="image">
				<div id="readult">
					<ul></ul>
				</div>


				<!-- 글 내용 -->

				<hr>
				<p>${afterdetail.contents}</p>


				<div class="text-right">
					<input type="submit" value="수정하기" class="nav-item btn btn-primary"
						onclick="btn_click('update')" /> <input type="submit"
						value="삭제하기" class="nav-item btn btn-primary"
						onclick="btn_click('delete')" />
				</div>

				<hr>
			</form>
			
				<!-- 댓글창 -->
			<div class="card my-4">
				<h5 class="card-header">댓글</h5>
				<div class="card-body">
					<form>
					
						<div class="form-group">
							<textarea id="reply" name="reply" class="form-control" rows="3" placeholder="내용을 입력하세요"></textarea>
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

		</div>
	</div>




	<%@include file="footer.jsp"%>
</body>
</html>