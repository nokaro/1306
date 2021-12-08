<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록</title>

</head>

<body>

	<jsp:include page="/WEB-INF/views/Header.jsp"/>

	<h1>회원등록</h1>
		
	<form action="./addCtr.do" method="post">
		아이디:	<input type="text" name="id"><br/>
		암호:	<input type="password" name="password"><br/>
		이름:	<input type="text" name="name"><br/>
		이메일:	<input type="text" name="email"><br/>
		휴대폰번호:	<input type="text" name="phonenum"><br/>
				<input type="submit" value="회원추가">
				<input type="reset" value="취소">
	</form>

	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>