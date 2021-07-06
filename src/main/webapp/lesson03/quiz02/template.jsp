<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Melong</title>
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<style>
		<!-- 너무 많이 사용한 듯... 정리를 잘 할 필요가 있을듯... 부분별로 묶어서 정리하도록 해야겠다. -->
		#wrap {height:900px;}
		header {height:100px;}
		#logo {color:green; font-weight:bold; font-size:30px; height:100px; width:150px;}
		.searchbox {height:100px; width:400px;}
		<!-- 위치 찾기가 어렵다 -->
		.aC:link {text-decoration:none; color:green;}
		.aC:visited {text-decoration:none; color:green;}
		.aC:hover {text-decoration:none; color:green;}
		.aC:active {text-decoration:none; color:green;}
		nav {height:80px; font-size:18px;}
		<!-- 목차의 색, 밑줄을 없애는 등 부분 -->
		nav>ul>li>a:link {text-decoration:none; color:black;}
		nav>ul>li>nav>a:visited {text-decoration:none; color:black;}
		nav>ul>li>nav>a:hover{text-decoration:none; color:black;}
		nav>ul>li>nav>a:active {text-decoration:none; color:black;}
		.content {height:180px; border:2px solid rgb(60,175,85);}
		.picture {height:180px; width:180px;}
		.pictureExplain {height:180px;}
		.contents {height:400px;}
		.contents_1 {height: 100px;}
		.contentsTitle {height:50px}
		.contentsTitle1 {height:60px}
		.content1 {height:230px; border:2px solid rgb(60,175,85);}
		.picture1 {height:230px; width:230px;}
		.musicEx {height:20px; width:150px;}
		.musicEx1 {height:20px; width:75px; font-size:15px; color:rgb(203,206,209);}
		.lyrics {height:80px;}
		.lyrics1 {height:90px; border-top:1px solid rgb(203,206,209); border-bottom:1px solid rgb(203,206,209);}
		.lyrics2 {height:60px;}
		.font {font-size:25px;}
		.font1 {font-size:18px;}
		.font2 {font-size:40px; font-weight:100;}
		.font3 {font-size:15px; color:green; font-weight:bold;}
		footer {height:20px; color:rgb(203,206,209);}
	</style>
	<%-- 그냥 css파일을 하나 만들어서 활용하는 방법도 있다. 이 경우 연결을 해야 한다. --%>
	<%-- link rel="stylesheet" type="text/css" href="" --%>
</head>
<body>
	<%-- 무조건 다 가져갈 필요는 없다고 한다. --%>
	<div id="wrap" class="container">
		<jsp:include page="header.jsp"/>
		<div>
			<jsp:include page="nav.jsp"/>
		</div>
		<jsp:include page="section.jsp"/>
		<jsp:include page="contents.jsp"/>
		<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>