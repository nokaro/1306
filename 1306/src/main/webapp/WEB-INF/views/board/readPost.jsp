<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 읽기</title>
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/styles.css" />
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
   
	function pageMoveListFnc() {
		location.href = './loginCtr2.do#all';
    }

   function pageMoveDeleteFnc(no) {
      var url = './deletePost.do?pno=' + no;
      location.href = url;
   }
   
   function pageMoveCorrectFnc(no) {
      var url = './correctPost.do?pno=' + no;
      location.href = url;
   }
   
   
   <!-- 작성자: 박지영 -->
   //댓글 삭제창
   function replyDeleteMsgFnc(pno, rno) {
      var msg = confirm("댓글을 삭제합니다.");
      if(msg == true){
         replyDeleteFnc(pno, rno);
      }
      else{
         return false;
      }
   }
   
   //댓글 삭제 
   function replyDeleteFnc(pno, rno){
      var url = './replyDelete.do?rno=' + rno + '&pno=' + pno;
      location.href = url;
   }
   
   //댓글 수정
   function replyUpdateFnc(pno, rno){
	   let replyContentObj = document.getElementById('replyContent');
	   let beforeReplyContent = replyContentObj.innerHTML;
	   replyContentObj.innerHTML = '<textarea rows="5" cols="50" name="content">';
	   replyContentObj.innerHTML += '</textarea>';
	   replyContentObj.firstChild.value = beforeReplyContent;
	   let replyUpdateBtnObj = document.getElementById('replyUpdateBtn');
	   replyUpdateBtnObj.text = "[저장]";
	   replyUpdateBtnObj.attributes[2].value = 'replySaveFnc(' + pno+',' + rno +')';
   }
   
   //댓글 수정 저장
   function replySaveFnc(pno, rno){
	   let replyContentObj = document.getElementById('replyContent');
	   let beforeReplyContent = replyContentObj.firstChild.value;
	   let url = './replyUpdate.do?pno=' + pno + '&rno=' + rno + '&content=' + beforeReplyContent;
	   location.href = url;
   }
   
   
</script>
<style type="text/css">
.submit_c {
	cursor: pointer;
	border-radius: 5em;
	color: #fff;
	background: linear-gradient(to right, #cd5ce0, #e385f2);
	border: 0;
	padding-left: 40px;
	padding-right: 40px;
	padding-top: 10px;
	padding-bottom: 10px;
	font-family: 'Ubuntu', sans-serif;
	margin: 20px;
	margin-bottom: 20px;
	font-size: 15px;
	font-weight: bolder;
	box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
}

.submit_com {
	cursor: pointer;
	border-radius: 5em;
	color: #fff;
	background: linear-gradient(to right, #cd5ce0, #e385f2);
	border: 0;
	padding-left: 40px;
	padding-right: 40px;
	padding-top: 10px;
	padding-bottom: 10px;
	font-family: 'Ubuntu', sans-serif;
	font-size: 15px;
		margin: 20px;
	font-weight: bolder;
	box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
}

.input_content {
	width: 600px;
	height: 200px;
	border: purple 3px solid;
}

.input_tag {
	width: 600px;
	height: 100px;
	border: purple 3px solid;
}

.tmpt {
	text-align: center;
}

.bg{
	text-algin:right;
	background-color:#FAF7FB;
}

.sub{
	padding-top:10px;
}
</style>
</head>
<body id="page-top">
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top"
		id="sideNav">
		<div class="navbar-brand">
			<p class="user">${member.id}님</p>
		</div>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="/1306/loginCtr2.do#write">게시물 작성</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="/1306/loginCtr2.do#all">모든 게시물</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="/1306/loginCtr2.do#me">나의 게시물</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="/1306/loginCtr2.do#memberupdate">회원 수정</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="/1306/loginCtr2.do#" onclick="logout()">로그아웃</a></li>
			</ul>
		</div>
	</nav>
	<div class="container-fluid p-0">
		<section class="resume-section" id="write">
			<div class="resume-section-content">
				<table border="1" align="center">
					<tr align="center">
						<td width=20%><b>ID</b></td>
						<td width=20%><b>등록일</b></td>
						<td width=20%><b>내용</b></td>
						<td width=20%><b>태그</b></td>
					</tr>
					<tr align="center">
						<td>${boardVo.id}</td>
						<td><fmt:formatDate value="${requestScope.boardVo.regiDate}"
								pattern="YYYY-MM-dd hh:mm" /></td>
						<td>${boardVo.content}</td>
						<td>${boardVo.tag}</td>
					</tr>
				</table>
				<input type="button" class="submit_c" value="수정"
					onclick="pageMoveCorrectFnc(${boardVo.pno});"> <input
					type="button" class="submit_c" value="삭제"
					onclick="pageMoveDeleteFnc(${boardVo.pno})">
			</div>
		</section>
		<hr class="m-0" />
		<!-- 작성자: 박지영 -->
		<!-- 댓글조회 -->
		<div class="container-fluid p-0">
			<section class="resume-section" id="write">
				<div class="resume-section-content">
					<form method="get" name="replyUpdateForm" action="./replyUpdate.do">
						<ol class="replyList">
							<c:forEach items="${replyList}" var="replyList">
								<li>
									<p>
										<%--                		<input type="hidden" name="pno" value="${replyList.pno}"> --%>
										<%--         			<input type="hidden" name="rno" value="${replyList.rno}"> --%>
										작성자 : ${replyList.writer}<br /> 작성 날짜 :
										<fmt:formatDate value="${replyList.wdate}"
											pattern="yyyy-MM-dd" />
									</p>

									<p id="replyContent">${replyList.content}</p>

									<div style="width: 700px; text-align: right;">
										<%-- 							<c:if test="${sessionScope.id == replyList.writer}"> --%>
										<tr>
											<td>
												<div class="btn-group btn-group-sm" role="group"
													aria-label="...">
													<div style="text-align: center;">
														<a href="#" id="replyUpdateBtn"
															onclick="replyUpdateFnc(${replyList.pno}, ${replyList.rno})">[수정]</a>
														<a href="#" id="replyDeleteBtn"
															onclick="replyDeleteMsgFnc(${boardVo.pno}, ${replyList.rno})">[삭제]</a>
													</div>
												</div>
											</td>
										</tr>
										<%-- 							</c:if> --%>
									</div>
								</li>
							</c:forEach>
						</ol>
					</form>
				</div>
			</section>
		</div>

		<!-- 댓글등록 -->
		<section class="resume-section" id="write">
			<div class="resume-section-content">
				<form method="post" name="replyForm" action="./writeReplyCtr.do">

					<p>
						<label>댓글 작성자: </label> ${boardVo.id} <input type="hidden"
							name="writer" value="${boardVo.id}">
					</p>
					<div>
						<textarea rows="5" cols="50" name="content"></textarea>
							<input type="hidden" name="pno" value="${boardVo.pno}">
							<button type="submit" class="submit_com">댓글 작성</button>
					</div>
				</form>
			</div>
		</section>
	</div>
	<!-- 글 전체목록으로 되돌아가기 -->
	<div class="bg">
		<input type="button" class="submit_c" value="뒤로가기"
		onclick="pageMoveListFnc();">
	</div>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="resources/js/scripts.js"></script>
</body>

</html>