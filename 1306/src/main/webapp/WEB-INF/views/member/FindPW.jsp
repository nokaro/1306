<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>

<link
	href="${pageContext.request.contextPath}/resources/css/styles.css?after"
	rel="stylesheet" type="text/css">
<style type="text/css">
body {
	background-color: #F3EBF6;
	font-family: 'Ubuntu', sans-serif;
}

.main {
	background-color: #FFFFFF;
	width: 700px;
	height: 500px;
	margin: 14em;
	margin-left: 350px;
	border-radius: 1.5em;
	box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
}

/* 회원정보 수정 글귀 */
.sign {
	padding-top: 80px;
	color: #8C55AA;
	font-family: 'Ubuntu', sans-serif;
	font-weight: bold;
	font-size: 23px;
}

/* 폼: Id, Password, 로그인버튼, 로그아웃 버튼 */
form.form1 {
	padding-top: 40px;
}

/* 유저 네임 란 */
.un {
	width: 60%;
	color: rgb(38, 50, 56);
	font-weight: 700;
	font-size: 14px;
	letter-spacing: 1px;
	background: rgba(136, 126, 126, 0.04);
	padding: 10px 20px;
	border: none;
	border-radius: 20px;
	outline: none;
	box-sizing: border-box;
	border: 2px solid rgba(0, 0, 0, 0.02);
	margin-left: 85px;
	text-align: center;
	margin-bottom: 27px;
	font-family: 'Ubuntu', sans-serif;
}

/* 패스워드 란 */
.pass {
	width: 60%;
	color: rgb(38, 50, 56);
	font-weight: 700;
	font-size: 14px;
	letter-spacing: 1px;
	background: rgba(136, 126, 126, 0.04);
	padding: 10px 20px;
	border: none;
	border-radius: 20px;
	outline: none;
	box-sizing: border-box;
	border: 2px solid rgba(0, 0, 0, 0.02);
	margin-left: 65px;
	text-align: center;
	margin-bottom: 27px;
	font-family: 'Ubuntu', sans-serif;
}

.submit {
	cursor: pointer;
	border-radius: 5em;
	color: #fff;
	background: linear-gradient(to right, #cd5ce0, #e385f2);
	border: 0;
	padding-left: 40px;
	padding-right: 40px;
	padding-bottom: 10px;
	padding-top: 10px;
	font-family: 'Ubuntu', sans-serif;
	margin: 20px;
	margin-left: 290px;
	font-size: 13px;
	box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
}
 
  
p{
	font-family: 'Ubuntu', sans-serif;
	font-size: 20px;
	font-weight: bold;
}

h3{ 
	padding-top: 15%;
	font-family: 'Ubuntu', sans-serif; 
	font-weight: bold; 
}

.pc{
	margin-left: 100px;
}
</style>

<link rel="stylesheet" href="resources/css/style.css">
<link href="https://fonts.googleapis.com/css?family=Ubuntu"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="path/to/font-awesome/css/font-awesome.min.css">
 
<script type="text/javascript" >
// 	//뒤로가기
// 	function pageMoveListFnc(){
// 		location.href = '../loginCtr2.do';
// 	}
</script>
</head>

<body>
	<div class="main">
	<h3 align="center">회원정보 수정</h3>
		
	<form action="./updatePWCtr.do" method="post"> 
		<br/><br/>
		<p class="pc">아이디:<input class="un" type="text" name="id" value="${member.id}" readonly="readonly"></p>
		 
		<p class="pc">비밀번호:<input class="pass" placeholder="패스워드를 입력해주세요." type="password" name="password"></p>
		<br/>
<!-- 		비밀번호 재확인: <input type="password" name="password"> <br/>					                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            -->
		<input class="submit" type="submit" value="수정">
 		 
<!--  		<input type="button" value="뒤로가기" onclick="pageMoveListFnc();">     -->
	</form>	
	</div>
</body>
</html>