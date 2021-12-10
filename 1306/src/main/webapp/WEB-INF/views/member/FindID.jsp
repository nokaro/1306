<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 발견</title>

<script type="text/javascript" >
	// 로그인화면으로
	function pageMoveListFnc(){
		location.href = '../Login.jsp';
	}
</script>
</head>
<body>
	<h1>아이디는 </h1>
	
	아이디: ${member.id}  
	<br/>
	<input class="submit" type="submit" value="로그인하러가기" onclick="pageMoveListFnc();">
	 
</body>
</html>