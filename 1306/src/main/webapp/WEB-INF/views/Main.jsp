<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<title>메인화면</title>

<link rel="icon" type="image/x-icon"
	href="resources/assets/img/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" />
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" />
<!-- Core theme CSS (includes Bootstrap)-->
<link rel="stylesheet" href="resources/css/styles.css" />


</head>

<body id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top"
		id="sideNav">
		
		<a class="navbar-brand js-scroll-trigger">   
			<p style="color: purple;">${member.id} 님</p>
		</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#write">게시물 작성</a></li>
				<!-- 				<li class="nav-item"><a class="nav-link js-scroll-trigger" href="./board/AllPost.do">모든 게시물</a></li> -->
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#all">모든 게시물</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#me">나의 게시물</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="#like">좋아요 랭킹</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="./member/update.do?id=${member.id}">회원 수정</a></li>
			</ul>
		</div>
	</nav>
	<!-- Page Content-->
	<div class="container-fluid p-0">

		<!-- 글 작성 -->
		<section class="resume-section" id="write">
			<div class="resume-section-content">
				<h2 class="mb-0">오늘의 일상은 어땠나요?</h2>
				<div class="subheading mb-5">
					<jsp:include page="/WEB-INF/views/board/writePost.jsp" />
				</div>
			</div>
		</section>
		<hr class="m-0" />

		<!-- 모든게시물-->
		<section class="resume-section" id="all">
			<div class="resume-section-content">
				
				<form id='pagingForm' action="./loginCtr2.do#all" method="get">
					<input type="text" name="keyword2" value="${searchMap.keyword2}"
						placeholder="태그 검색">
				</form>

				<table>
					<tr>
						<th>번호</th>
						<th>ID</th>
						<th>내용</th>
						<th>태그</th>
						<th>생성날짜</th>
					</tr>
					<c:forEach var="boardVo" items="${AllPostList}">
						<tr>
							<td>${boardVo.pno}</td>
							<td>${boardVo.id}</td>
							<td>${boardVo.content}</td>
							<td>${boardVo.tag}</td>
							<td><fmt:formatDate value="${boardVo.regiDate}"
									pattern="YYYY-MM-dd hh:mm" />

						</tr>
					</c:forEach>

				</table>
			</div>
		</section>
		<hr class="m-0" />

		<!-- 내 게시물 -->
		<section class="resume-section" id="me">
			<div class="resume-section-content">
				<h2 class="mb-5">me</h2>
				<table>
					<tr>
						<th>번호</th>
						<th>ID</th>
						<th>내용</th>
						<th>생성날짜</th>
					</tr>
					<c:forEach var="boardVo" items="${MyPostList}">
						<tr>
							<td>${boardVo.pno}</td>
							<td>${boardVo.id}</td>
							<td><a href='/1306/board/readPost.do?pno=${boardVo.pno}'>${boardVo.content}</a></td>
							<td><fmt:formatDate value="${boardVo.regiDate}"
									pattern="YYYY-MM-dd hh:mm" /></td>
							<td><a href='/1306/board/correctPost.do?pno=${boardVo.pno}'>[수정]</a></td>
							<td><a href='/1306/board/deletePost.do?pno=${boardVo.pno}'>[삭제]</a></td>
						</tr>
					</c:forEach>

				</table>

			</div>
		</section>
		<hr class="m-0" />


		<!-- 좋아요 랭킹 -->
		<section class="resume-section" id="like">
			<div class="resume-section-content">
				<h2 class="mb-5">like</h2>
				<div
					class="d-flex flex-column flex-md-row justify-content-between mb-5">
					<div class="flex-grow-1">
						<h3 class="mb-0">University of Colorado Boulder</h3>
						<div class="subheading mb-3">Bachelor of Science</div>
						<div>Computer Science - Web Development Track</div>
						<p>GPA: 3.23</p>
					</div>
					<div class="flex-shrink-0">
						<span class="text-primary">August 2006 - May 2010</span>
					</div>
				</div>
				<div class="d-flex flex-column flex-md-row justify-content-between">
					<div class="flex-grow-1">
						<h3 class="mb-0">James Buchanan High School</h3>
						<div class="subheading mb-3">Technology Magnet Program</div>
						<p>GPA: 3.56</p>
					</div>
					<div class="flex-shrink-0">
						<span class="text-primary">August 2002 - May 2006</span>
					</div>
				</div>
			</div>
		</section>
		<hr class="m-0" />


	</div>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="resources/js/scripts.js"></script>
</body>
</html>
