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
<script type="text/javascript" src="/resources/js/PJdetail.js"></script>

<title>SAVIOR</title>
<head>
<%@include file="header.jsp"%>
</head>
<body>
</head>
<body>
<body class="bg-gradient-primary">
	<div class="container">
		<!-- Outer Row -->
		<div class="row justify-content-center">
			<div class="card o-hidden border-0 shadow-lg my-5">
				<div class="card-body p-0">
					<!-- Nested Row within Card Body -->
					<div class="row">
						<div class="p-5">
							<div class="text-center">
								<h1 class="h4 text-gray-900 mb-4">공지사항</h1>
								<hr>
							</div>

							<form role="form" action="/project/noticedelete" method="post"
								enctype="multipart/form-data">
								<table class="type05">
									<thead>
										<tr>
											<th>번호</th>
											<th><input type="hidden" name="no" id="no"
												value="${noticedetail.no}" readonly>${noticedetail.no}</th>
										</tr>


										<tr>
											<th>제목</th>
											<th><input type="hidden" name="title"
												value="${noticedetail.title}" readonly>${noticedetail.title}</th>
										</tr>

									</thead>
									<tbody>
										<tr>
											<th>작성자</th>
											<th><a>관리자</a></th>

										</tr>
										<tr>
											<th>첨부파일</th>
											<td><input type="hidden" name="uploadFile" value="image">
											<div id="readult"><ul></ul></div></td>
										</tr>
										<tr>
											<th>내용</th>
											<td><input type="hidden" name="contents"
												value="${noticedetail.contents}" readonly>${noticedetail.contents}</td>
										</tr>

										<tr>
											<td colspan="2" class="text-center"><input type="submit"
												class="nav-item btn btn-primary" value="삭제하기"> <a
												class="nav-item btn btn-primary" href="noticelist?category=4">목록으로</a>
											</td>
										</tr>
									</tbody>

								</table>
							</form>


							<hr>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="footer.jsp"%>
</body>
</html>