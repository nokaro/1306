<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="${pageContext.request.contextPath}/resources/css/styles.css?after" rel="stylesheet" type="text/css">
<meta charset="UTF-8">

<title>로그인</title>

<script type="text/javascript">
   function joinMoveFnc(form) {
      form.action = "member/add.do";
      form.method = "get";
      form.submit();
      return true;
   }
</script>
 
<body>

	<h4>사용자 로그인</h4>
	<form action="loginCtr.do" method="post">
		아이디:	<input type="text" name="id"><br/>
		암호:		<input type="password" name="password"><br/>
				<input type="submit" value="로그인"> 
				<input type="button" value="회원가입" onclick="joinMoveFnc(this.form);">  
	</form> 
</body>
</html>