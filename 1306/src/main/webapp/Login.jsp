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
        width: 800px;
        height: 400px;
        margin: 7em auto;
        border-radius: 1.5em;
        box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
    }
    
    .sign {
        padding-top: 40px;
        color: #8C55AA;
        font-family: 'Ubuntu', sans-serif;
        font-weight: bold;
        font-size: 23px;
    }
    
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
    margin-left: 90px;
    text-align: center;
    margin-bottom: 27px;
    font-family: 'Ubuntu', sans-serif;
    }
    
    form.form1 {
        padding-top: 40px;
    }
    
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
    margin-left: 90px;
    text-align: center;
    margin-bottom: 27px;
    font-family: 'Ubuntu', sans-serif;
    }
    
   
    .un:focus, .pass:focus {
        border: 2px solid rgba(0, 0, 0, 0.18) !important;
        
    }
    
    .submit {
      cursor: pointer;
        border-radius: 5em;
        color: #fff;
        background: linear-gradient(to right, #9C27B0, #E040FB);
        border: 0;
        padding-left: 40px;
        padding-right: 40px;
        padding-bottom: 10px;
        padding-top: 10px;
        font-family: 'Ubuntu', sans-serif;
        margin-left: 35%;
        font-size: 13px;
        box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
    }
    
    .forgot {
        text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
        color: #E1BEE7;
        padding-top: 15px;
    }
    
    a {
        text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
        color: #E1BEE7;
        text-decoration: none
    }
    
    @media (max-width: 600px) {
        .main {
            border-radius: 0px;
        }
	</style>
  <link rel="stylesheet" href="css/style.css">
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
    
    <form action="loginCtr.do" method="post" class="form1">   
	    <input class="un " type="text"  placeholder="Username" name="id"><br/>
		<input class="pass" type="password"   placeholder="Password" name="password"><br/>
		<input class="submit" align="center" type="submit" value="로그인"> 
		<input type="button" class="submit"   value="회원가입" onclick="joinMoveFnc(this.form);">       
    </form>        
    </div>
     
</body>

</html>

<!-- <html>
<head>
<link href="${pageContext.request.contextPath}/resources/css/styles.css?after" rel="stylesheet" type="text/css">
<meta charset="UTF-8">

<title>로그인</title>

<script type="text/javascript">
   function joinMoveFnc(form) {
      form.action = "member/add.do";
      form.method = "get";
      form.submit();
      return true;
   }
</script>
 
<body>

	<h4>로그인</h4>
	<form action="loginCtr.do" method="post">
		아이디:	<input type="text" name="id"><br/>
		암호:		<input type="password" name="password"><br/>
				<input type="submit" value="로그인"> 
				<input type="button" value="회원가입" onclick="joinMoveFnc(this.form);">  
	</form> 
</body>
</html>
 -->