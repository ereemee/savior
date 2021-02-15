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
								<div class="text-center">

									<h1 class="h4 text-gray-900 mb-4">공지사항</h1>
									<hr>
								</div>
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
										<c:forEach items="${notice}" var="list">
											<tr>

												<td>${list.no}</td>
												<td><a href="noticedetail?no=${list.no}">${list.title}</a></td>
												<td>${list.writedate}</td>
												<td><a>관리자</a></td>
												<td>${list.hit}</td>
											</tr>

										</c:forEach>
										<!-- for끝-->

									</tbody>
								</table>






								<!-- 페이징-->

								<div class="text-center">
									<c:if test="${pageMaker.prev}">
										<a
											href="noticelist?category=4&pageNum=${pageMaker.startPage-1}&amount=${pageMaker.cri.amount}">이전</a>
									</c:if>
									<c:forEach var="num" begin="${pageMaker.startPage}"
										end="${pageMaker.endPage}">
										<a
											href="noticelist?category=4&pageNum=${num}&amount=${pageMaker.cri.amount}">${num}</a>
									</c:forEach>
									<c:if test="${pageMaker.next}">
										<a
											href="noticelist?category=4&pageNum=${pageMaker.endPage+1}&amount=${pageMaker.cri.amount}">다음</a>
									</c:if>
									<br>



									<!-- 검색 -->
									<form action="/project/noticelist?category=4" method="get">
										<select name="type">
											<option value="t">제목</option>
											

										</select> <input type="text" name="keyword"><input type="hidden" name="category" value="4"> <input
											type="submit" value="검색">
									</form>
								</div>
								<div class="text-right">
									<c:choose>
										<c:when test="${id!=null}">
											<a class="nav-item btn btn-primary" href="noticewrite">글쓰기</a>&nbsp;&nbsp;


										</c:when>
										<c:otherwise>

										</c:otherwise>

									</c:choose>

								</div>
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