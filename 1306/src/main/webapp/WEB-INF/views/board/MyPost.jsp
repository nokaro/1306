<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 게시글 목록</title>
</head>

<body>
	<table>
		<tr>
			<th>번호</th>
			<th>ID</th>
			<th>내용</th>
			<th>생성날짜</th>
		</tr>
		<c:forEach var="boardVo" items="${MyPostList}">
			<tr>
				<td>${boardVo.pno}</td>
				<td>${boardVo.id}</td>
				<td><a href='./readPost.do?pno=${boardVo.content}'>${boardVo.content}</a></td> 
				<td><fmt:formatDate value="${boardVo.regiDate}"
						pattern="YYYY-MM-dd hh:mm" />
				</td>
				<td><a href='./correctPost.do?pno=${boardVo.pno}'>[수정]</a></td>
				<td><a href='./deletePost.do?pno=${boardVo.pno}'>[삭제]</a></td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>