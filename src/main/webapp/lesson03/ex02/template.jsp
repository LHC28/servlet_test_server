<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>템플릿 구성</title>
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <style>
  	#wrap {width:100%; height:900px;}
  	header {height:50px;}
  	.contents {height:850px;}
  	nav {width:15%; height:850px;}
  	.right {width:85%; height:850px}
  	.content {height:90%;}
  	footer {height:10%;}
  </style>
</head>
<body>
	<div id = "wrap" class = "bg-secondary">
		<%-- 동적 방식 include --%>
		<jsp:include page="header.jsp"/> <%-- 닫은 것과 사이에 들어갈 것이 없는 경우 /를 넣어주는 것이 좋다. 그냥 닫는 것도 괜찮다고 한다. --%>
		<div class="bg-info contents d-flex">
			<jsp:include page="menu.jsp"></jsp:include>
			<section class="right bg-success">
				<%
					String contentName = "content2.jsp";
				%>
				<jsp:include page="<%=contentName %>"></jsp:include>
				<jsp:include page="footer.jsp"></jsp:include>
			</section>
		</div>
	</div>
</body>
</html>