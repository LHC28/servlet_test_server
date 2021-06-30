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
<title>길이 변환</title>
</head>
<body>

	<%
	String[] lengthArr = request.getParameterValues("leng");
	// 값을 받아오기 위해 입력하는 것은 name이지만 실제로 가져오는 것은 value이다...
	//굳이 변수를 다 만들 필요없이 조건문에 변수 하나를 만들어 넣는 것이 훨씬 좋다.......
	
	double cm = Double.valueOf(request.getParameter("length"));
	String[] unit = new String[lengthArr.length];
	double[] lengthArr1= new double[lengthArr.length];
	double inch = 0;
	double yard = 0;
	double feet = 0;
	double meter = 0;
	for(int i=0; i<lengthArr.length; i++){
		if(lengthArr[i].equals("inch")){
			inch = cm*0.393701;
			lengthArr1[i] = inch;
			unit[i] = "in";
		}else if(lengthArr[i].equals("yard")){
			yard = cm*0.0109361;
			lengthArr1[i] = yard;
			unit[i] = "yd";
		}else if(lengthArr[i].equals("feet")){
			feet = cm*0.0328084;
			lengthArr1[i] = feet;
			unit[i] = "feet";
		}else if(lengthArr[i].equals("meter")){
			meter = cm*0.01;
			lengthArr1[i] = meter;
			unit[i] = "m";
		}
	}
	
	%>
	<div class = "container">
		<h1>길이 변환 결과</h1>
		<h3><%=cm %>cm</h3>
		<hr>
		<h3>
		<%
		for(int i=0; i<lengthArr1.length; i++){
			out.print(lengthArr1[i]+" "+unit[i]);
			out.print("<br>");
			// 줄바꿈은 println도 넘어가지 않아서 위와 같이 br을 직접 넣어줘야 한다고 한다.
		}
		// 무의미한 변수를 너무 많이 만들었다...........
		// 단위별 변수를 만드는 것은 맞나보다.
		// 자바부분에서도 html 요소를 쓸 수 있다는 것을 생각해둬야겠다.
		
		%>
		</h3>
	</div>

</body>
</html>