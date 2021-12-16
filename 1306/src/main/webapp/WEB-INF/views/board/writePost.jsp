<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 등록</title>
</head>
<body>
	<div id="content">
		<form action=./board/writeCtr.do method="post">
			<input type="hidden" name="id" value="${member.id}" /> <input
				id="daily" type="text" name="content" placeholder="무슨 일이 일어나고 있나요?"
				required> <input id="tag" type="text" name="tag"
				placeholder="tag">
			<button type="submit">등록</button>
			<button type="reset">취소</button>
		</form>
	</div>
</body>
</html>