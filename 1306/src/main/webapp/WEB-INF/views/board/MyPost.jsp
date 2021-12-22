<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 게시글 목록</title>
<style type="text/css">
.empty {
	padding-bottom: 30px;
}

.test {
    width: 100%;
    border: 1px solid purple;
    border-collapse: collapse;
  	th, td {
    border: 1px solid purple;
  }
 }
</style>
</head>

<body>
	<table class="test">
		<tr>
			<th>번호</th>
			<th>ID</th>
			<th>내용</th>
			<th>작성일</th>
		</tr>
		<c:forEach var="boardVo" items="${MyPostList}">
			<tr>
				<td>${boardVo.pno}</td>
				<td>${boardVo.id}</td>
				<td><a href='./readPost.do?pno=${boardVo.pno}'>${boardVo.content}</a></td> 
				<td><fmt:formatDate value="${boardVo.regiDate}"
						pattern="YYYY-MM-dd hh:mm" />
				</td>
				<td><a href='./correctPost.do?pno=${boardVo.pno}'>[수정]</a></td>
				<td><a href='./deletePost.do?pno=${boardVo.pno}'>[삭제]</a></td>
			</tr>
		</c:forEach>

	</table>
	<div class="empty"></div>
</body>
</html>