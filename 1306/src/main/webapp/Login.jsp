<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head> 
<link href="${pageContext.request.contextPath}/resources/css/styles.css?after" rel="stylesheet" type="text/css">
	<style type="text/css">
	body {
        background-color: #F3EBF6;
        font-family: 'Ubuntu', sans-serif;
    }
    
    .main {
        background-color: #FFFFFF;
        width: 700px;
        height: 500px;
        margin: 18em; 
        margin-left: 450px;
        border-radius: 1.5em;
        box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
    }
    
	/* sign up 글귀 */
    .sign {
        padding-top: 60px;
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
	    width: 76%;
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
	    width: 76%;
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
        margin-left: 150px;
        font-size: 13px;
        box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
    }  
    
   	a {  
   		margin-left:63%;
   		font-size: 17px;
        text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
        color: #E1BEE7;
        text-decoration: none
    }
  </style>
  
  <link rel="stylesheet" href="resources/css/style.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
  
  <title>Sign in</title>
  
  <script type="text/javascript">
	   function joinMoveFnc(form) {
	      form.action = "member/add.do";
	      form.method = "get";
	      form.submit();
	      return true;
	   }
	</script>
</head>

<body>
  <div class="main">
    <p class="sign" align="center">Sign in</p>
    
    <form class="form1" action="loginCtr.do" method="post" >   
	    <input class="un" type="text" placeholder="Id" name="id"><br/>
		<input class="pass" type="password" placeholder="Password" name="password"><br/>
		<input class="submit" type="submit" value="로그인"> 
		<input class="submit" type="button" value="회원가입" onclick="joinMoveFnc(this.form);">  
		<p><a href=''>아이디/비밀번호 찾기</a>     
    </form>        
    </div>
     
    
</body> 

</html>
 