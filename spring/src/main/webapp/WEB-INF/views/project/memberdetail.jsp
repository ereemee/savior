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

<title>SAVIOR</title>
<head>
<%@include file="header.jsp"%>
</head>
<body>
	<script type="text/javascript" src="/resources/js/mdetail.js"></script>
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
								<h1 class="h4 text-gray-900 mb-4">내정보확인</h1>
								<hr>
							</div>
							<form name="frm1">
								<table class="type05">

									<tr>
										<th>아이디</th>
										<td><input type="hidden" name="id" value="${detail.id}"
											readonly>${detail.id}</td>
									</tr>

									<tr>
										<th>비밀번호</th>
										<td><input type="password" name="password"
											value="${detail.password}"></td>
									</tr>
									<tr>
										<th>이름</th>
										<td><input type="text" name="name" value="${detail.name}"
											readonly></td>
									</tr>
									<tr>
										<th>이메일주소</th>
										<td><input type="text" name="email"
											value="${detail.email}"></td>
									</tr>
									<tr>
										<th>휴대폰번호</th>
										<td><input type="text" name="pnumb"
											value="${detail.pnumb}"></td>
									</tr>
									<tr>
										<td colspan="2" class="text-center"><input type="submit"
											value="개인정보수정" class="nav-item btn btn-primary"
											onclick="javascript: form.action='/project/memberupdate';" />
											<input type="submit" value="탈퇴"
											class="nav-item btn btn-primary"
											onclick="javascript: form.action='/project/memberdelete';" /></td>
									</tr>
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