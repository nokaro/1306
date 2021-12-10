<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 / 비밀번호 찾기</title>
</head>
<body>
	<div class="main">
		<p class="sign" align="center">아이디 / 비밀번호 찾기</p>

		<form class="form1" action="findidpwCtr.do" method="post">
			<input class="un" type="text" placeholder="name" name="name"><br />
			<input class="pass" type="text" placeholder="email" name="email"><br />
			<input class="submit" type="submit" value="아이디찾기">
		</form>
	</div>  
	
	<br/>
	
	<form class="form2" action="findidpwCtr.do" method="post">
			<input class="un" type="text" placeholder="id" name="id"><br />
			<input class="pass" type="text" placeholder="name" name="name"><br />
			<input class="submit" type="submit" value="비밀번호찾기">
		</form>
	
</body>
</html>