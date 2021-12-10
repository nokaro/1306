<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>

<script type="text/javascript" >
// 	//뒤로가기
// 	function pageMoveListFnc(){
// 		location.href = '../loginCtr2.do';
// 	}
</script>
</head>

<body>
	<h1>회원정보 수정</h1>
		
	<form action="./updatePWCtr.do" method="post"> 
		아이디: <input type="text" name="id" value="${member.id}" readonly="readonly"><br/>
		비밀번호:	<input type="password" name="password"> <br/>
<!-- 		비밀번호 재확인: <input type="password" name="password"> <br/>					                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            -->
		<input type="submit" value="수정">
 		 
<!--  		<input type="button" value="뒤로가기" onclick="pageMoveListFnc();">     -->
	</form>	
</body>
</html>