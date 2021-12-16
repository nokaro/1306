<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모든 게시글 목록</title>
</head>

<body>
	<form id='pagingForm' action="./loginCtr2.do#all" method="post">
		<input type="text" name="keyword2" value="${searchMap.keyword2}" placeholder="태그 검색"> 
	</form> 
	
	
	<table>
		<tr>
			<th>번호</th>
			<th>ID</th>
			<th>내용</th>
			<th>생성날짜</th>
			<th>태그</th>
		</tr>
		<c:forEach var="boardVo" items="${AllPostList}">
			<tr>
				<td>${boardVo.pno}</td>
				<td>${boardVo.id}</td>
				<td>${boardVo.content}</td> 
				<td><fmt:formatDate value="${boardVo.regiDate}"
						pattern="YYYY-MM-dd hh:mm" />
				<td>${boardVo.tag}</td>		
				
			</tr>
		</c:forEach>

	</table>
</body>
</html>