<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

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
	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading/sub head -->
		<h1 class="mt-4 mb-3">
			입양후기 <small>ADOPT REVIEW</small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item">세이비어는 사지않고 입양하는 문화를 만듭니다.</li>
		</ol>

	</div>
<body class="bg-gradient-primary">
	<div class="container">
		<!-- Outer Row -->
		<div class="row justify-content-center">
			<div class="col-xl-10 col-lg-12 col-md-9">
				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<div class="row">
							<div class="p-5">
								<div class="text-center"></div>
								<table class="type08">
									<thead>
										<tr>
											<th>번호</th>
											<th>제목</th>
											<th>작성일</th>
											<th>작성자</th>
											<th>조회수</th>
										</tr>
									</thead>
									<tbody>

										<!-- for시작 -->
										<c:forEach items="${after}" var="alist">
											<tr>

												<td>${alist.no}</td>
												<td><a href="afterDetail?no=${alist.no}">${alist.title}</a></td>
												<td>${alist.writedate}</td>
												<td><a>${alist.writer}</a></td>
												<td>${alist.hit}</td>
											</tr>

										</c:forEach>
										<!-- for끝-->

									</tbody>
								</table>




								<!-- page -->
								<div class="text-center">
									<c:if test="${pageMaker.prev}">
										<a
											href="/project/after?category=1&pageNum=${pageMaker.startPage-1}&amount=${pageMaker.cri.amount}">이전</a>
									</c:if>
									<c:forEach var="num" begin="${pageMaker.startPage}"
										end="${pageMaker.endPage}">
										<a
											href="/project/after?category=1&pageNum=${num}&amount=${pageMaker.cri.amount}">${num}</a>
									</c:forEach>
									<c:if test="${pageMaker.next}">
										<a
											href="/project/after?category=1&pageNum=${pageMaker.endPage+1}&amount=${pageMaker.cri.amount}">다음</a>
									</c:if>
									<br>




									<form action="/project/after" method="get">
										<select name="type">
											<option value="t">제목</option>
											<option value="w">작성자</option>

										</select> <input type="text" name="keyword"> <input
											type="hidden" name="category" value="1"> <input
											type="submit" value="검색">
									</form>

									<div class="text-right">

										<c:choose>
											<c:when test="${id!=null}">
												<a class="nav-item btn btn-primary" href="afterwrite">글쓰기</a>&nbsp;&nbsp;


</c:when>
											<c:otherwise>





											</c:otherwise>

										</c:choose>
									</div>





									<!-- /.row -->

								</div>
							</div>
						</div>

					</div>

				</div>
			</div>

		</div>
		<!-- /.row -->

		<hr>



		<br>

	</div>


	<!-- /.container -->
	<%@include file="footer.jsp"%>
</body>
</html>