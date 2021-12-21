<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
	
<script type="text/javascript" >
	 
	//삭제
	function pageMoveDeleteFnc(id){ 
		location.href = './deleteCtr.do?id='+ id;
	}
</script>
	
</head>

<body> 
	<h1>회원정보 수정</h1>
		
	<form action="./updateCtr.do" method="post">
		아이디: <input type="text" name="id" value="${member.id}" readonly="readonly"><br/>
		비밀번호:	<input type="password" name="password"> <br/>
		이름:   <input type="text" name="name" value="${member.name}" readonly="readonly"><br/>
		이메일:	<input type="text" name="email"><br/>
		휴대전화: <input type="text" name="phonenum" ><br/>
							                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
		<input type="submit" value="수정">
 		<input type="button" value="탈퇴" onclick="pageMoveDeleteFnc(${member.id});">  
	</form>	
 
</body>
</html>