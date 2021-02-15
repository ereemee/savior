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
								<h1 class="h4 text-gray-900 mb-4">전체회원목록</h1>
								<hr>
							</div>


							<table class="type08">
								<thead>
									<tr>

										<th>아이디</th>
										<th>이름</th>
										<th>이메일</th>
										<th>휴대폰번호</th>
									</tr>
								</thead>
								<!-- for시작 -->
								<c:forEach items="${mlist}" var="member">
									<tr>
										<td>${member.id}</td>
										<td>${member.name}</td>
										<td>${member.email}</td>
										<td>${member.pnumb}</td>
									</tr>

								</c:forEach>
								<!-- for끝-->
							</table>
							<hr>
							<div class="text-center">
								<c:if test="${pageMaker.prev}">
									<a
										href="/project/memberlist?pageNum=${pageMaker.startPage-1}&amount=${pageMaker.cri.amount}">이전</a>
								</c:if>
								<c:forEach var="num" begin="${pageMaker.startPage}"
									end="${pageMaker.endPage}">
									<a
										href="/project/memberlist?pageNum=${num}&amount=${pageMaker.cri.amount}">${num}</a>
								</c:forEach>
								<c:if test="${pageMaker.next}">
									<a
										href="/project/memberlist?pageNum=${pageMaker.endPage+1}&amount=${pageMaker.cri.amount}">다음</a>
								</c:if>
								<br>
								<form action="/project/memberlist" method="get">
									<select name="type">
										<option value="i">아이디</option>
										<option value="a">이메일</option>

									</select> <input type="text" name="keyword"> <input
										type="submit" value="회원검색">
								</form>
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