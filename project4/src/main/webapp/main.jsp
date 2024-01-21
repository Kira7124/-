<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>부트스트랩테스트2</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha384-rKtoAdUChD3C3se9NdShtLcx5S14nsNF+Zi9xrWp66RjCqH-3U8XGfN9q0pFf/jt" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<style type="text/css">
.btn-hover:hover {
  /* Add your desired hover styles here */
  background-color: red; /* Change to the background color you want on hover */
  color: aqua; /* Change to the text color you want on hover */
  /* Add any other styles you want to apply on hover */
}

.navbar-brand{
	font-family: fantasy;
	
}
</style>


<script>
  $(document).ready(function() {
    $('.goSomewhereBtn').click(function() {
    	var confirmBtn = confirm('이동하시겠습니까?');  
    	if(confirmBtn){
    		alert('나무위키로 이동합니다!');
    		return true;
    	}
    	else{
    		alert('현재페이지에 머물겠습니다!');
    		return false;
    	}
    	
    });
    
   	    
    $("#logoutButton").click(function() {
    	var confirmBtn = confirm('로그아웃하시겠습니까?');
    	if(confirmBtn){
    		return true;
    	}else{
    		return false;
    	}
    });
    
  });
  
  
  
  
  
</script>



</head>



<body>


<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
	<a href="./main.ma"><img src="img/pr.png"></a>&nbsp;&nbsp;&nbsp;
    <a class="navbar-brand" href="#"><h3>TheFootball</h3></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
      
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           축구수다게시판
          </a>
          <ul class="dropdown-menu">
          	<li><a class="dropdown-item" href="#">EPL</a></li>
          	<li><a class="dropdown-item" href="#">LaLiga</a></li>
          	<li><a class="dropdown-item" href="#">Bundesliga</a></li>
          	<li><a class="dropdown-item" href="#">SeriaA</a></li>
          	<li><a class="dropdown-item" href="#">AFC</a></li>          
          </ul>
		</li>        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            4대리그 Details
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="./BoardWriteProAction.bo">EPL</a></li>
            <li><a class="dropdown-item" href="#">LaLiga</a></li>
            <li><a class="dropdown-item" href="#">Bundesliga</a></li>
            <li><a class="dropdown-item" href="#">SeriaA</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">건의사항</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          축구용품
          </a>
          <ul class="dropdown-menu">
          	<li><a class="dropdown-item" href="#">축구화</a></li>
          	<li><a class="dropdown-item" href="#">축구공</a></li>
          	<li><a class="dropdown-item" href="#">유니폼</a></li>
          	<li><a class="dropdown-item" href="#">기타용품</a></li>  
          	<li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">건의사항</a></li>        
          </ul>
        </li>
      </ul>
      <div class="login" id="logincontainer">
      	 <% if (session.getAttribute("userid") != null && !session.getAttribute("userid").toString().isEmpty()) { %>
      	 	<div id="loggedinContent">
   				 <button class="btn btn-light" id="useridButton"><%= session.getAttribute("userid") %>님 환영합니다!</button>
   				 <a href="./logoutAction.me">
   				 <button class="btn btn-light" id="logoutButton">로그아웃</button>
   				 </a>
   			</div>
  		<% } %>
      </div>
      
      <form action="./loginForm.me" method="get">
      	 <button type="submit"class="btn btn-light">로그인</button>
      </form>&nbsp;&nbsp;&nbsp;
      <form action="./joinForm.me" method="get">
      	<button type="submit"class="btn btn-light">회원가입</button>
      </form>&nbsp;&nbsp;&nbsp;
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
      
    
      
    </div>
  </div>
</nav><br><br>



<div class="row row-cols-auto">

 <div class="col">
	<div class="card mb-3" style="width: 18rem;">
  <img src="img/salah.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">모하메드살라</h5>
    <p class="card-text">리버풀의 역대급 스트라이커</p>
    <a href="https://namu.wiki/w/%EB%AA%A8%ED%95%98%EB%A9%94%EB%93%9C%20%EC%82%B4%EB%9D%BC" class="btn btn-primary btn-hover goSomewhereBtn" >상세정보</a>&nbsp;
	<a class="btn btn-primary btn-hover" href="img/salah.gif" role="button">핵심플레이</a>
  </div>
 </div>
</div>

	<div class="col">
	 <div class="card mb-3" style="width: 18rem;">
  <img src="img/kangin.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">이강인</h5>
    <p class="card-text">대한민국의 역대급 천재 미드필더</p>
    <a href="https://namu.wiki/w/%EC%9D%B4%EA%B0%95%EC%9D%B8" class="btn btn-primary btn-hover goSomewhereBtn" >상세정보</a>
    	<a class="btn btn-primary btn-hover" href="img/kangin.gif" role="button">핵심플레이</a>
    
  </div>
 </div>
</div>

	<div class="col">
		<div class="card mb-3" style="width: 18rem;">
  <img src="img/endo.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">엔도 야스히토</h5>
    <p class="card-text">일본 축구의 역대급 패스마스터</p>
    <a href="https://namu.wiki/w/%EC%97%94%EB%8F%84%20%EC%95%BC%EC%8A%A4%ED%9E%88%ED%86%A0" class="btn btn-primary btn-hover goSomewhereBtn">상세정보</a>
    	<a class="btn btn-primary btn-hover" href="img/endo.gif" role="button">핵심플레이</a>
    
  </div>
 </div>
</div>
	
	<div class="col">
		<div class="card mb-3" style="width: 18rem;">
  <img src="img/paul.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">폴 스콜스</h5>
    <p class="card-text">맨유 황금기 최고의 미드필더<br> 정확한 슈팅 패스의 대명사</p>
    <a href="https://namu.wiki/w/%ED%8F%B4%20%EC%8A%A4%EC%BD%9C%EC%8A%A4" class="btn btn-primary btn-hover goSomewhereBtn">상세정보</a>
    	<a class="btn btn-primary btn-hover" href="img/paul.gif" role="button">핵심플레이</a>
    
  </div>
 </div>	
</div>

<div class="col">
		<div class="card mb-3" style="width: 18rem;">
  <img src="img/son.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">손흥민</h5>
    <p class="card-text">대한민국 역사상 최고의선수 아시아유일 프리미어리그 득점왕</p>
    <a href="https://namu.wiki/w/%EC%86%90%ED%9D%A5%EB%AF%BC" class="btn btn-primary btn-hover goSomewhereBtn">상세정보</a>
    	<a class="btn btn-primary btn-hover" href="img/sonny.gif" role="button">핵심플레이</a>
    
  </div>
 </div>	
</div>

	<div class="col">
		<div class="card mb-3" style="width: 18rem;">
  <img src="img/messi.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">리오넬메시</h5>
    <p class="card-text">전세계 축구역사상 <br>최고의 축구선수 GOAT</p>
    <a href="https://namu.wiki/w/%EB%A6%AC%EC%98%A4%EB%84%AC%20%EB%A9%94%EC%8B%9C?from=%EB%A6%AC%EC%98%A4%EB%84%AC%EB%A9%94%EC%8B%9C" class="btn btn-primary btn-hover goSomewhereBtn">상세정보</a>
    	<a class="btn btn-primary btn-hover" href="img/messi.gif" role="button">핵심플레이</a>
    
  </div>
 </div>	
</div>


<div class="col">
		<div class="card mb-3" style="width: 18rem;">
  <img src="img/mitoma.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">미토마 카오루</h5>
    <p class="card-text">일본의 호날두.<br>떠오르는 초신성</p>
    <a href="https://namu.wiki/w/%EB%AF%B8%ED%86%A0%EB%A7%88%20%EC%B9%B4%EC%98%A4%EB%A3%A8?from=%EB%AF%B8%ED%86%A0%EB%A7%88%20%EA%B0%80%EC%98%A4%EB%A3%A8" class="btn btn-primary btn-hover goSomewhereBtn" >상세정보</a>
    	<a class="btn btn-primary btn-hover" href="img/mitoma.gif" role="button">핵심플레이</a>
    
  </div>
 </div>	
</div>


	<div class="col">
		<div class="card mb-3" style="width: 18rem;">
  <img src="img/rice.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">데클란 라이스</h5>
    <p class="card-text">잉글랜드의 신형엔진,<br> 아스날의 미래</p>
    <a href="https://namu.wiki/w/%EB%8D%B0%ED%81%B4%EB%9E%80%20%EB%9D%BC%EC%9D%B4%EC%8A%A4" class="btn btn-primary btn-hover goSomewhereBtn" >상세정보</a>
    	<a class="btn btn-primary btn-hover" href="img/rice.gif" role="button">핵심플레이</a>
    
  </div>
 </div>	
</div>

<div class="col">
		<div class="card mb-3" style="width: 18rem;">
  <img src="img/kane.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">해리 케인</h5>
    <p class="card-text">잉글랜드 역사상 <br>최고의 스트라이커</p>
    <a href="https://namu.wiki/w/%ED%95%B4%EB%A6%AC%20%EC%BC%80%EC%9D%B8?from=%ED%95%B4%EB%A6%AC%EC%BC%80%EC%9D%B8" class="btn btn-primary btn-hover goSomewhereBtn" >상세정보</a>
    	<a class="btn btn-primary btn-hover" href="img/kane.gif" role="button">핵심플레이</a>
    
  </div>
 </div>	
</div>

	<div class="col">
		<div class="card mb-3" style="width: 18rem;">
  <img src="img/jisung.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">박지성</h5>
    <p class="card-text">대한민국 축구 레전드<br> 맨유황금기 주역 미드필더</p>
    <a href="https://namu.wiki/w/%EB%B0%95%EC%A7%80%EC%84%B1" class="btn btn-primary btn-hover goSomewhereBtn" >상세정보</a>
    	<a class="btn btn-primary btn-hover" href="img/jisung.gif" role="button">핵심플레이</a>
    
  </div>
 </div>	
</div>


<div class="col">
		<div class="card mb-3" style="width: 18rem;">
  <img src="img/tomi.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">토미야스 타케히로</h5>
    <p class="card-text">일본축구 역대급 풀백/샌터백<br> 아스날의 핵심자원</p>
    <a href="https://namu.wiki/w/%ED%86%A0%EB%AF%B8%EC%95%BC%EC%8A%A4%20%ED%83%80%EC%BC%80%ED%9E%88%EB%A1%9C?from=%ED%86%A0%EB%AF%B8%EC%95%BC%EC%8A%A4%20%EB%8B%A4%EC%BC%80%ED%9E%88%EB%A1%9C" class="btn btn-primary btn-hover goSomewhereBtn" >상세정보</a>
    	<a class="btn btn-primary btn-hover" href="img/tomi.gif" role="button">핵심플레이</a>
    
  </div>
 </div>	
</div>

	<div class="col">
		<div class="card mb-3" style="width: 18rem;">
  <img src="img/minjae.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">김민재</h5>
    <p class="card-text">대한민국 축구역사 최고의 센터백.</p>
    <a href="https://namu.wiki/w/%EA%B9%80%EB%AF%BC%EC%9E%AC" class="btn btn-primary btn-hover goSomewhereBtn" >상세정보</a>
    	<a class="btn btn-primary btn-hover" href="img/minjae.gif" role="button">핵심플레이</a>
    
  </div>
 </div>	
</div>

</div>




























 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>