<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Refresh" content="3;url=/1306/member/findidpw.do">
<title>로그인 실패</title>
<link
	href="${pageContext.request.contextPath}/resources/css/styles.css?after"
	rel="stylesheet" type="text/css">
<style type="text/css">
body {
	background-color: #F3EBF6;
	font-family: 'Ubuntu', sans-serif;
}

.main {
	background-color: #FFFFFF;
	width: 700px;
	height: 500px;
	margin: 13em;
	margin-left: 350px;
	border-radius: 1.5em;
	box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
}

/* sign up 글귀 */
.sign {
	padding-top: 80px;
	color: #8C55AA;
	font-family: 'Ubuntu', sans-serif;
	font-weight: bold;
	font-size: 23px;
}

/* 폼: Id, Password, 로그인버튼, 로그아웃 버튼 */
form.form1 {
	padding-top: 40px;
}
 
h3 {
	margin-top: 20px;
	margin-left: 35%;
	font-family: 'Ubuntu', sans-serif;
}

p {
	margin-left: 15%;
	font-family: 'Ubuntu', sans-serif;
	font-size: 20px;
	font-weight: bold;
}
</style>
</head>

<body>
	<div class="main">
	<br/>
	<br/>
		<h3>회원 찾기 실패</h3>

		<form class="form1">
		<br/>
		<br/>
		<br/>
			<p>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;회원을 찾을 수 없습니다.
				<br /> 3초 뒤, 아이디/비밀번호 찾기 화면으로 전환합니다.
			</p>
		</form>

	</div>

</body>
</html>