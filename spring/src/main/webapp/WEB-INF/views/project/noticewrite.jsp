<!DOCTYPE html>
<html lang="ko">

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<script type="text/javascript" src="/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="/resources/js/write.js"></script>
<title>SAVIOR</title>
<head>
<%@include file="header.jsp"%>
</head>
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
								<h1 class="h4 text-gray-900 mb-4">공지작성</h1>
								<hr>
							</div>
							<form role="form" action="/project/noticewrite" method="post"
								enctype="multipart/form-data">

								<div class="form-group">
									<input type="text" name="title"
										class="form-control form-control-user"
										placeholder="제목을 입력해주세요">
								</div>

								<div class="form-group">
									<textarea name="contents"
										class="form-control form-control-user" rows="5" cols="33"
										placeholder="내용을 입력해주세요"></textarea>
								</div>
								<input type="file" name="uploadFile" multiple> 
								<input type="text" name="category" value="4" readonly>
								<hr>
								<input type="submit" class="btn btn-primary btn-user btn-block"
									value="작성하기">

								<div class="uploadResult">

									<ul>
									</ul>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="footer.jsp"%>
</body>
</html>