<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 / 비밀번호 찾기</title>

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
	height: 880px;
	margin: 2.5em;
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

/* 유저 네임 란 */
.un {
	width: 76%;
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

/* 패스워드 란 */
.pass {
	width: 76%;
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

a {
	margin-left: 63%;
	font-size: 17px;
	text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
	color: #E1BEE7;
	text-decoration: none
}

hr{
	width: 600px;
	margin-left: 50px;
}

p{
	font-family: 'Ubuntu', sans-serif;
	font-size: 20px;
	font-weight: bold;
}
</style>

<link rel="stylesheet" href="resources/css/style.css">
<link href="https://fonts.googleapis.com/css?family=Ubuntu"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="path/to/font-awesome/css/font-awesome.min.css">


</head>
<body>
	<div class="main">
		<p class="sign" align="center">아이디 / 비밀번호 찾기</p>
	
		<form class="form1" action="findidpwCtr.do" method="post">
			<p align="center">아이디 찾기 </p>
			<input class="un" type="text" placeholder="name" name="name"><br />
			<input class="pass" type="text" placeholder="email" name="email"><br />
			<input class="submit" type="submit" value="아이디찾기">
		</form>
	 
		<br/>
		<hr>
		
		<form class="form1" action="findidpwCtr.do" method="post">
			<p align="center">비밀번호 찾기 </p>
			<input class="un" type="text" placeholder="id" name="id"><br />
			<input class="pass" type="text" placeholder="name" name="name"><br />
			<input class="submit" type="submit" value="비밀번호찾기">
		</form>
	</div>  
</body>
</html>