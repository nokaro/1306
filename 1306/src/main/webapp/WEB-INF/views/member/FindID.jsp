<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 발견</title>

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
	margin: 10em;
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
	margin-left: 270px;
	font-size: 13px;
	box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
}
  
h3{ 
	padding-top: 25%;
	font-family: 'Ubuntu', sans-serif; 
	font-weight: bold; 
}
</style>

<link rel="stylesheet" href="resources/css/style.css">
<link href="https://fonts.googleapis.com/css?family=Ubuntu"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="path/to/font-awesome/css/font-awesome.min.css">

<script type="text/javascript" >
	// 로그인화면으로
	function pageMoveListFnc(){
		location.href = '../Login.jsp';
	}
</script>
</head>
<body>
	<div class="main">
	<h3 align="center">아이디: ${member.id} 입니다. </h3>
	 
	<br/>
	<input class="submit" type="submit" value="로그인하러가기" onclick="pageMoveListFnc();">
	 </div>
</body>
</html>