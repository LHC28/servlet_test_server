<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz02</title>
	<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%-- server : 시간 또는 날짜 출력 --%>
	<%
	String answer = request.getParameter("type");
	String print="";
	Date time = new Date();
	
	if(answer.equals("time")){
		print+="현재 시간은 ";
		SimpleDateFormat sdf = new SimpleDateFormat("HH시 mm분 ss초");
		// 밖에서 변수명 정하고 들어가는 것이 더 좋아보인다... 어차피 변수명 다르게 할 필요없다...
		print += sdf.format(time);
	}
	else if(answer.equals("date")){
		print+="현재 날짜는 ";
		SimpleDateFormat df = new SimpleDateFormat("yyyy년 MM월 dd일");
		print += df.format(time);
	}
	// 괜히 길어진 것 같다... 그냥 sdf만들 때 문장 다 넣으면 편하다...
	%>
	
	<div class = "container">
		<!-- <h1><%=print %> 입니다.</h1> -->
		<div class = "display-4"><%=print %> 입니다.</div>
	</div>
	
</body>
</html>