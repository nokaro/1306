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

<script type="text/javascript" > 
	//삭제
	function pageMoveDeleteFnc(id){ 
		location.href = './deleteCtr.do?id='+ id;
	}
</script>

<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/assets/img/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" />
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" />
<!-- Core theme CSS (includes Bootstrap)-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css" />

<style type="text/css">
.submit {
	cursor: pointer;
	border-radius: 5em;
	color: #fff;
	background: linear-gradient(to right, #cd5ce0, #e385f2);
	border: 0;
	padding-left: 40px;
	padding-right: 40px;
	padding-bottom: 10px;
	padding-top: 10px;
	font-family: 'Ubuntu', sans-serif;
	margin: 20px;
	margin-left: 200px;
	font-size: 13px;
	box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
}

.un {
	width: 60%;
	color: rgb(38, 50, 56);
	font-weight: 700;
	font-size: 14px;
	letter-spacing: 1px;
	background: rgba(136, 126, 126, 0.04);
	padding: 10px 20px;
	border: none;
	border-radius: 20px;
	outline: none;
	box-sizing: border-box;
	border: 2px solid rgba(0, 0, 0, 0.02);
	margin-left: 85px;
	text-align: center;
	margin-bottom: 27px;
	font-family: 'Ubuntu', sans-serif;
}

.un2 {
	width: 60%;
	color: rgb(38, 50, 56);
	font-weight: 700;
	font-size: 14px;
	letter-spacing: 1px;
	background: rgba(136, 126, 126, 0.04);
	padding: 10px 20px;
	border: none;
	border-radius: 20px;
	outline: none;
	box-sizing: border-box;
	border: 2px solid rgba(0, 0, 0, 0.02);
	margin-left: 65px;
	text-align: center;
	margin-bottom: 27px;
	font-family: 'Ubuntu', sans-serif;
}

.un3 {
	width: 60%;
	color: rgb(38, 50, 56);
	font-weight: 700;
	font-size: 14px;
	letter-spacing: 1px;
	background: rgba(136, 126, 126, 0.04);
	padding: 10px 20px;
	border: none;
	border-radius: 20px;
	outline: none;
	box-sizing: border-box;
	border: 2px solid rgba(0, 0, 0, 0.02);
	margin-left: 75px;
	text-align: center;
	margin-bottom: 27px;
	font-family: 'Ubuntu', sans-serif;
}
 
h2{
	margin-left: 50%;
	font-family: 'Ubuntu', sans-serif; 
}

.mb-0{
	margin-left: 40%;
	font-family: 'Ubuntu', sans-serif; 
}

p{
	margin-left: 32%;
	font-family: 'Ubuntu', sans-serif;
	font-size: 20px;
	font-weight: bold;
}
</style>
</head>

<body id="page-top">

	<!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
            <a class="navbar-brand js-scroll-trigger" href="#page-top">
                
            <p style="color: purple;">${member.id} 님</p>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#write">게시물 작성</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#all">모든 게시물</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#me">나의 게시물</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#memberupdate">회원 수정</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#interests">로그아웃</a></li> 
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


		<!-- 회원 수정 -->
		<section class="resume-section" id="memberupdate">
			<div class="resume-section-content">
				<h2 class="mb-5">회원 수정</h2>
				<form action="./updateCtr.do" method="post">
					<p>아이디:<input class="un" type="text" name="id" value="${member.id}" readonly="readonly"></p> 
					<p>비밀번호:<input class="un2" type="password" name="password"></p>  
					<p>이름:<input class="un3" type="text" name="name" value="${member.name}" readonly="readonly"></p> 
					<p>이메일:<input class="un2" type="text" name="email"> 
					<p>휴대전화:<input class="un" type="text" name="phonenum" > 
										                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
					<input class="submit" type="submit" value="수정">
			 		<input class="submit" type="button" value="삭제" onclick="pageMoveDeleteFnc(${member.id});"> 
			 		<input class="submit" type="button" value="뒤로가기" onclick="pageMoveListFnc();">    
				</form>	
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
