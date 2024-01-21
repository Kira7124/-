<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<title>LoginForm</title>
<style type = "text/css">

html{
	height:100%;
}

body{
	margin:0px;
	padding:0px;
	background-image: url("./img/stadium.jpg");
	background-position: center;
	background-repeat:no-repeat;
	background-size:cover;
	height:100%;
	overflow:hidden;
	
}
.loginForm{
	
	background-color: #ffffff; 	
	width:30%;
	height: auto;
	margin: 7% auto;
	padding: 25px 10px;
	
	
}
.primg{
	 float: left; /* 이미지를 왼쪽으로 띄우기 */
  	 margin-right: 10px; /* 이미지와 오른쪽 내용 간격 조절 (원하는 만큼 조절 가능) */

}


.text-center {
  text-align: center;
  display: flex;
  align-items: center;
  justify-content: center;
}





</style>
</head>
<body>
	<!-- login Form -->
	
	<div class="loginForm">
			<h3 class="text-center text-primary mt-2 mb-4">
			<a href="./main.ma"><img src="./img/pr.png" class="primg"></a>LOGINPAGE
			</h3>
		<div class = "container">
	   	<form action ="./loginAction.me" method="post">
		  <div class="mb-3">
		    <label for="exampleInputEmail1" class="form-label">ID</label>
		    <input type="text" class="form-control" placeholder="아이디를입력하세요" name="userid" id="exampleInputEmail1" aria-describedby="emailHelp">
		  </div>
		  <div class="mb-3">
		    <label for="exampleInputPassword1" class="form-label">Password</label>
		    <input type="password" class="form-control" placeholder="비밀번호를입력하세요" name="userpw" id="exampleInputPassword1">
		  </div>
		  <div class="mb-3 form-check">
		    <input type="checkbox" class="form-check-input" id="exampleCheck1">
		    <label class="form-check-label" for="exampleCheck1">ID자동입력</label>
		    &nbsp;&nbsp;<a href="#">비밀번호를 잊으셨나요?</a>
		  </div><br>
		  <button type="submit" class="btn btn-primary col-lg-12 col-12 mt-2 mb-3">로그인</button>
		</form>
   </div>
</div>
	
	
   



	
	
     <!-- login Form -->
	
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>	
</body>
</html>