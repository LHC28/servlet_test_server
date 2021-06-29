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
<title>사칙 연산 계산기</title>
</head>
<body>
	<%-- post이기 때문에 주소창에는 quiz04_1이 나오게 된다. --%>
	<%
		double result=0;
		int num1 = Integer.valueOf(request.getParameter("num1"));
		int num2 = Integer.valueOf(request.getParameter("num2"));
		String cal = request.getParameter("cal");
		// switch case를 쓸 수 있다. 여기서 break를 걸어야하는 것을 기억하자
		if(cal.equals("+")){
			result = num1+num2;
		}else if(cal.equals("-")){
			result = num1-num2;
		}else if(cal.equals("*")){
			result = num1*num2;
		}else if(cal.equals("/")){
			result = num1/(double)num2;
		}
		// 앞에서 name에 다른 이름을 저장하게 되면 String 변수를 하나 만들어 경우에 따라 넣어두는 것도 한 가지 방법이다.
	%>
	<div class = "container">
		<h1>계산결과</h1>
		<div class="display-3"><%=num1 %> <%=cal %> <%=num2 %> = <span class = "text-primary"><%=result %></span></div>
		<!-- out.print를 활용할 수 있다. -->
	</div>

</body>
</html>