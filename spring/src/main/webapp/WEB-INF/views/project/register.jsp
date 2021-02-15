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
<%@include file="header.jsp" %>
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
								<h1 class="h4 text-gray-900 mb-4">회원가입</h1>
							</div>
							<a>기본정보</a><br> <label style="font-size: 8px">*표시된
								빈칸은 반드시 입력해주세요.</label>
							<hr>

							<form action="/project/register" method="post">
								<table>

									<tr>
										<td style="font-size: 12px">아이디</td>
										<td><label style="color: red">*</label><input type="text"
											style="width: 150px; height: 20px; font-size: 10px;"
											name="id"> <input type="button"
											style="width: 80px; height: 20px; font-size: 10px;"
											value="ID중복검사"><br> <label
											style="font-size: 8px">아이디는 영문,숫자 조합으로 하셔야 합니다.[4자리
												이상 12자리 이하] </label></td>
									</tr>

									<tr>
										<td style="font-size: 12px">비밀번호</td>
										<td><label style="color: red">*</label><input
											type="password"
											style="width: 150px; height: 20px; font-size: 10px;"
											name="password"><br> <label
											style="font-size: 8px">비밀번호는 4자리 이상 12자리 이하로 입력해주세요.</label></td>
									</tr>

									<tr>
										<td style="font-size: 12px">비밀번호 확인</td>
										<td><label style="color: red">*</label><input
											type="password"
											style="width: 150px; height: 20px; font-size: 10px;"
											name="pwc"></td>
									</tr>

									<tr>
										<td style="font-size: 12px">이름</td>
										<td><label style="color: red">*</label><input type="text"
											style="width: 150px; height: 20px; font-size: 10px;"
											name="name"></td>
									</tr>


									<tr>
										<td style="font-size: 12px">이메일</td>
										<td><label style="color: red">*</label><input type="text"
											style="width: 150px; height: 20px; font-size: 10px;"
											name="email"></td>
									</tr>


									<tr>
										<td style="font-size: 12px">휴대폰 번호</td>
										<td><label style="color: red">*</label><input type="text"
											style="width: 150px; height: 20px; font-size: 10px;"
											name="pnumb" placeholder="- 없이 입력하세요"></td>
									</tr>
								</table>
								<hr>
								<input type="submit" class="btn btn-primary btn-user btn-block"
									value="회원가입">
							</form>
							<hr>
							<div class="text-center">
								<a class="small" href="login">이미 계정이 있나요?</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


<%@include file="footer.jsp" %>
</body>
</html>