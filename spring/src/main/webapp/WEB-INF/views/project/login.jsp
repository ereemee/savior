<!DOCTYPE html>
<html lang="ko">

<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

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
								<h1 class="h4 text-gray-900 mb-4">로그인</h1>
								<hr>
							</div>
							<form action="/project/login" method="post">
								<div class="form-group">
									<input type="text" name="id"
										class="form-control form-control-user"
										placeholder="아이디를 입력해주세요">
								</div>
								<div class="form-group">
									<input type="password" class="form-control form-control-user"
										name="password" placeholder="비밀번호를 입력해주세요">
								</div>
								<div class="form-group">
									<div class="custom-control custom-checkbox small">

										<input type="checkbox" class="custom-control-input"
											id="customCheck"> <label class="custom-control-label"
											for="customCheck">로그인 상태 유지</label>
									</div>
								</div>
								<input type="submit" class="btn btn-primary btn-user btn-block"
									value="로그인">
							</form>
							<hr>
							<div class="text-center">
								<a class="small" href="#">아이디 찾기 </a> <a>|</a> <a class="small"
									href="#">비밀번호 찾기 </a> <a>|</a> <a class="small" href="register">회원가입</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

		<%@include file="footer.jsp"%>
</body>
</html>