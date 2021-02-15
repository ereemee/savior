<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>

		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<!-- Slide One - Set the background image for this slide in the line below -->
				<div class="carousel-item active"
					style="background-image: url('/resources/image/slide1.jpg')">
					<div class="carousel-caption d-none d-md-block">
						<h3>SAVIOR</h3>
						<p>This is a description for the first slide.</p>
					</div>
				</div>
				<!-- Slide Two - Set the background image for this slide in the line below -->
				<div class="carousel-item"
					style="background-image: url('/resources/image/slide1.jpg')">
					<div class="carousel-caption d-none d-md-block">
						<h3>SAVIOR</h3>
						<p>This is a description for the second slide.</p>
					</div>
				</div>
				<!-- Slide Three - Set the background image for this slide in the line below -->
				<div class="carousel-item"
					style="background-image: url('/resources/image/slide1.jpg')">
					<div class="carousel-caption d-none d-md-block">
						<h3>SAVIOR</h3>
						<p>This is a description for the third slide.</p>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	

<hr>
	<!-- 내용 -->
	<div class="container">

		<h2 class="my-4">소개</h2>

		<!-- 첫부분 -->
		<div class="row">
			<div class="col-lg-4 mb-4">
				<div class="card h-100">
					<h4 class="card-header">유기동물 입양 플랫폼</h4>
					<div class="card-body">
						<p class="card-text">
							<img class="card-img-top" src="../resources/image/hands.png"
								alt="">
						</p>
					</div>
					<div class="card-footer">
						<a href="intro" class="btn btn-primary">더보기</a>
					</div>
				</div>
			</div>
			<div class="col-lg-4 mb-4">
				<div class="card h-100">
					<h4 class="card-header">유기동물 건강검진 지원</h4>
					<div class="card-body">
						<p class="card-text">
							<img class="card-img-top" src="../resources/image/hands.png"
								alt="">
						</p>
					</div>
					<div class="card-footer">
						<a href="intro" class="btn btn-primary">더보기</a>
					</div>
				</div>
			</div>
			<div class="col-lg-4 mb-4">
				<div class="card h-100">
					<h4 class="card-header">SAVIOR 매거진</h4>
					<div class="card-body">
						<p class="card-text">
							<img class="card-img-top" src="../resources/image/hands.png"
								alt="">
						</p>
					</div>
					<div class="card-footer">
						<a href="intro" class="btn btn-primary">더보기</a>
					</div>
				</div>
			</div>
		</div>


<hr>
		<!-- Features Section -->
		<div class="row">
			<div class="col-lg-6">
				<h2>실종 동물</h2>
				<p>여러분의 제보가 큰 힘이 됩니다.</p>
				<ul>
					<li><strong>푸들(수컷/6살/연갈색)</strong></li>
					<li>12월 3일, 울산시 남구 컴퓨터학원 인근</li>
					<li>날짜: 12월 3일</li>
					<li>장소: 울산시 남구 컴퓨터학원 인근</li>
					<li>특징: 연갈색 털에 귀여움</li>
				</ul>
				<p>
					가족들이 애타게 찾고있습니다<br> 많은 제보 부탁드립니다.
				</p>
			</div>
			<div class="col-lg-6">
				<img class="img-fluid rounded" src="../resources/image/missing.jpg"
					alt="">
			</div>
		</div>
		<!-- /.row -->

		<hr>


		<!-- sns -->
		<div class="container text-center">

			<div>
				<br> <br> <a href="https://twitter.com/?lang=ko"><img
					src="../resources/image/tiwtter.png" style="width: 40px;"></a> <a
					href="https://www.instagram.com/"><img
					src="../resources/image/insta.png" style="width: 40px;"></a> <a
					href="https://www.facebook.com/"><img
					src="../resources/image/facebook.png" style="width: 40px;"></a>

			</div>
			<div>
				<br> <small>세이비어 SNS계정에서 다양한 소식들을 확인하세요.</small>
			</div>
		</div>
	</div>

	<!-- /.container -->
	<%@include file="footer.jsp"%>

</html>
