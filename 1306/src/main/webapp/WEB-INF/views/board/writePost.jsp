<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 등록</title>
<style type="text/css">
.submit_c {
	cursor: pointer;
	border-radius: 5em;
	color: #fff;
	background: linear-gradient(to right, #cd5ce0, #e385f2);
	border: 0;
	padding-left: 40px;
	padding-right: 40px;
	padding-top: 10px;
	padding-bottom: 10px;
	font-family: 'Ubuntu', sans-serif;
	margin: 20px;
	margin-bottom:20px;
	font-size: 15px;
	font-weight: bolder;
	box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
}
#input_content{
	width:600px;
	height:200px;
	border-color:purple;
}

#input_tag{
	width:600px;
	height:100px;
	border-color:purple;
}

.tmpt{
	text-align:center;
}
</style>
</head>
<body>
	<div id="content">
		<form action=./board/writeCtr.do method="post">
			<input type="hidden" name="id" value="${member.id}" />
			<input id="input_content" type="text" name="content" placeholder="무슨 일이 일어나고 있나요?"
				required> <br><br> <input id="input_tag" type="text" name="tag"
				placeholder="태그">
			<div class="tmpt">
				<button type="submit" class="submit_c">등록</button>
				<button type="reset" class="submit_c">취소</button>
			</div>
		</form>
	</div>
</body>
</html>