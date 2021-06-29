<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>quiz03</title>
</head>
<body>

	<%
	String result="";
	String height = request.getParameter("height");
	// 여기서 한번에 바꾸는 것이 더 효율적이다...
	String weight = request.getParameter("weight");
	
	double BMI = Double.valueOf(weight) / ((Double.valueOf(height)/100.0)*(Double.valueOf(height)/100.0));
	if(BMI<=20){
		result = "저체중";
	}else if(BMI>=21 && BMI<=25){
		result = "정상";
	}else if(BMI>=26 && BMI<=30){
		result = "과체중";
	}else if(BMI>=31){
		result = "비만";
	}
	// 조건 설정할 때 앞의 조건은 이미 해당하는 것이 아니기 때문에 굳이 넣어줄 필요가 없다..... 앞으로 참고하자.
	%>
	
	<div class = "container">
		<h1>BMI 측정 결과</h1>
		<div class = "display-3">당신은 <span class="text-success"><%=result %></span> 입니다.</div>
		BMI수치 : <%=BMI %>
	</div>

</body>
</html>