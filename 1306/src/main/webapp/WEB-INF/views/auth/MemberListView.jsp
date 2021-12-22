<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>

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

<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript"> 
	function loginMoveFnc() {
		location.href = '/1306/member/logout.do';
    } 
	
	//회원 정보 삭제(탈퇴)창
	function deleteMsgFnc(id) {

		var msg = confirm("회원정보를 삭제합니다.");
		if (msg == true) {
			var url = '/1306/auth/deleteCtr.do?id=' + id;
			location.href = url;
		} else {
			return false;
		}
	}
 
</script>

<style type="text/css">
body {
	background-color: #F3EBF6;
	font-family: 'Ubuntu', sans-serif;
}

.main {
	background-color: #FFFFFF;
	width: 1000px;
	height: 850px;
	margin: 2.5em;
	margin-left: 200px;
	border-radius: 1.5em;
	box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
}
 
/* 폼: Id, Password, 로그인버튼, 로그아웃 버튼 */
form.form1 {
	padding-top: 40px; 
	margin-left: 15%;
}

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
	margin: 10px;
	margin-top: 10px;
	margin-left: 690px;
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
  
h3{
	padding-top: 10px;
	margin-left: 45%;
	font-family: 'Ubuntu', sans-serif; 
	color: #8C55AA;
	font-weight: bold;
}
 
  
table, tr, td, th {
	border: 1px solid black;	 
}

table { 
	text-align: center;
	margin-left: 15%;
	width: 700px;
	height: 490px;
	border-collapse: collapse;
}

</style>

</head>

<body>
 	<div class="main">
 	<br/>
 	<input class="submit" type="button" value="로그인 화면으로" onclick="loginMoveFnc();"> 
	<h3>회원목록</h3>
	  
	<form class="form1" id='pagingForm' action="./list.do" method="post">
		<select name='searchOption' >
			<c:choose>
				<c:when test="${searchMap.searchOption == 'all'}">
					<option value="all" selected="selected">전체</option>
					<option value="name">이름</option>
					<option value="email">이메일</option>
					<option value="phonenum">휴대전화</option> 
				</c:when>
			
				<c:when test="${searchMap.searchOption == 'name'}">
					<option value="all">전체</option>
					<option value="name" selected="selected">이름</option>
					<option value="email">이메일</option>
					<option value="phonenum">휴대전화</option>
				</c:when>
				
				<c:when test="${searchMap.searchOption == 'email'}">
					<option value="all">전체</option>
					<option value="name">이름</option>
					<option value="email" selected="selected">이메일</option>
					<option value="phonenum">휴대전화</option>
				</c:when>
				
				<c:when test="${searchMap.searchOption == 'phonenum'}">
					<option value="all">전체</option>
					<option value="name">이름</option>
					<option value="email">이메일</option>
					<option value="phonenum" selected="selected">휴대전화</option>
				</c:when>
			</c:choose>
		</select>
		
		<input type="text" name="keyword" value="${searchMap.keyword}"
			placeholder="이름/이메일/휴대전화 검색" style="width:300px;">
		
		<input type="hidden" id='curPage' name='curPage'
			value="${pagingMap.memberPaging.curPage}">	
	</form> 
	<br/>
	<table>
		<tr>
			<th>아이디</th><th>이름</th>
			<th>이메일</th><th>휴대전화</th>
			<th></th>
		</tr>
		<c:forEach var="memberVo" items="${memberList}">
		<tr>
			<td>${memberVo.id}</td>
			
			<td>
				${memberVo.name}  
			</td>
			
			<td>${memberVo.email}</td>
			
			<td>${memberVo.phonenum}</td>
			  
			<td>
				<a href='javascript:void(0);' onclick="deleteMsgFnc('${memberVo.id}')">[삭제]</a>	 
			</td> 
		</tr>
	</c:forEach>
		
	</table>
	   
	<jsp:include page="/WEB-INF/views/common/Paging.jsp">
		<jsp:param value="${pagingMap}" name="pagingMap"/>
	</jsp:include>
	</div>
</body>
</html>