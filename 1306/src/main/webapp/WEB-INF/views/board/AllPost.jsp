<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모든 게시글 목록</title>
<style type="text/css">
.submit {
	cursor: pointer;
	border-radius: 5em;
	color: #fff;
	background: linear-gradient(to right, #cd5ce0, #e385f2);
	border: 0;
	padding-left: 40px;
	padding-right: 40px;
	padding-top: 10px;
	font-family: 'Ubuntu', sans-serif;
	margin: 20px;
	margin-left: 200px;
	font-size: 15px;
	font-weight: bolder;
	box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
}
#input_content{
	width:600px;
	height:200px;
	border-color:purple;
}
</style>
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
	<button type="submit" class="submit" onclick="location.href='./loginCtr2.do#all';">뒤로가기</button>
</body>
</html>