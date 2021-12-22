<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록</title>

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
	height: 600px;
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

/* 유저 네임 란 */
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
	margin-bottom: 10px;
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
	margin-left: 105px;
	text-align: center;
	margin-bottom: 10px;
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
	margin-left: 45px;
	text-align: center;
	margin-bottom: 10px;
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
	margin-left: 150px;
	font-size: 13px;
	box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
}

h3 {
	margin-left: 40%;
	font-family: 'Ubuntu', sans-serif;
}

a {
	margin-left: 63%;
	font-size: 17px;
	text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
	color: #E1BEE7;
	text-decoration: none
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
	<h3>회원등록</h3>
		
	<form class="form1"  action="./addCtr.do" method="post">
		<p>아이디:<input class="un"  type="text" name="id"></p>
		<p>암호:<input class="un2" type="password" name="password"></p>
		<p>이름:<input class="un2" type="text" name="name"></p>
		<p>이메일:<input class="un" type="text" name="email"></p>
		<p>휴대폰번호:<input class="un3" type="text" name="phonenum"></p>
	 
		<input class="submit" type="submit" value="회원추가">
		<input class="submit" type="reset" value="취소">
	</form>
	</div>
 
</body>
</html>