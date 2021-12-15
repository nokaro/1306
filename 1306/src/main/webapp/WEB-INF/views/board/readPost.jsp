<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 읽기</title>
<script type="text/javascript">
	function pageMoveListFnc() {
		location.href = './list.do';
	}

	function pageMoveDeleteFnc(no) {
		var url = './deletePost.do?pno=' + no;
		location.href = url;
	}
	
	function pageMoveCorrectFnc(no) {
		var url = './correctPost.do?pno=' + no;
		location.href = url;
	}
</script>
</head>

<body>
	<table border="1" align="center">
		<tr align="center">
			<td width=20%><b>ID</b></td>
			<td width=20%><b>등록일</b></td>
			<td width=20%><b>내용</b></td>
			<td width=20%><b>태그</b></td>
		</tr>
		<tr align="center">
			<td>${boardVo.id}</td>
			<td><fmt:formatDate value="${requestScope.boardVo.regiDate}"
					pattern="YYYY-MM-dd hh:mm" /></td>
			<td>${boardVo.content}</td>
			<td>${boardVo.tag}</td>
		</tr>
	</table>
	<input type="button" value="수정" onclick="pageMoveCorrectFnc(${boardVo.pno});">
	<input type="button" value="삭제"
		onclick="pageMoveDeleteFnc(${boardVo.pno})">
	<!-- 글 전체목록으로 되돌아가기 -->
	<input type="button" value="뒤로가기" onclick="pageMoveListFnc();">

</body>
</html>