<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>D-day 계산</title>
</head>
<body>
	<%-- 정렬할 것 생각하면 처음부터 div박고 시작하는 것이 좋은 것 같다... --%>
	<%
		Calendar today = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 M월 d일");
		// M을 하나만 해도 10은 10으로 나온다.
		out.println("<h3>오늘부터 1일</h3>");
		today.add(Calendar.DATE,-1);
		// 귀찮게 100을 곱하지 않고 반복할 때 100씩 더하게 하는 것이 더 편한 것 같다...
		for(int i=1; i<=10; i++){
			today.add(Calendar.DATE, 100);
	%>
		<div class="display-1">
			<span><%=(i*100)+"일 : "%></span>
			<span class = "text-danger"><%=sdf.format(today.getTime()) %></span>
			<%-- calendar 객체이기 때문에 .getTime()을 활용하여 today객체로 바꿔야 한다. --%>
		</div>		
	<%		
		}
	%>

</body>
</html>