<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
<script type="text/javascript">
	function pageMoveMyPostFnc(id) {
		location.href = './MyPost.do?id=' + id;
	}
	
	function pageMoveDeleteFnc(no) {
		var url = './deletePost.do?no=' + no;
		location.href = url;
	}
</script>
</head>

<body>
	<form action="./correctPostCtr.do" method="post">
		내용:   <input type="text" name="content" value="${boardVo.content}" 
					required><br/>
		태그:   <input type="text" name="tag" value="${boardVo.tag}"><br/>
				<input type="hidden" name = "pno" value="${boardVo.pno}"/>			
			   <input type="submit" value="수정">
			   <input type="button" value="삭제"
			   		onclick="pageMoveDeleteFnc(${boardVo.pno})">
			   <input type="button" value="뒤로가기" 
			   		onclick="pageMoveMyPostFnc(${boardVo.id});">
	</form>
		
</body>
</html>