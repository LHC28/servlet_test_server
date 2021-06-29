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
	
	<div class = "container">
		<h1>체격 조건 입력</h1>
		<!-- 외우기 -->
		<form method="get" action="/lesson02/quiz03_1.jsp" class = "d-flex">
		<!-- 다음 작성하기 전에 action에 있는 주소에 잘 연결되는지 확인하는 것이 좋다... -->
			<div>
				<input type="text" id="height" name="height" placeholder="키를 입력하세요." class="form-control">
				<!-- name에 있는 값이 넘어가는 거임... from-control은 w-100이 자동으로 들어간다. -->
				<!-- 길이는 col-?써도 된다... -->
			</div>
			<div class="m-2">cm</div> <!-- span태그 써도 된다... -->
			<!-- margin을 써서 떼어놓는 방법이 있다... -->
			<div>
				<input type="text" id="weight" name = "weight" placeholder = "몸무게를 입력하세요." class="form-control">
			</div>
			<div class="m-2">kg</div>
			<input type="submit" value="계산" class="btn btn-primary bg-success">
		</form>	
			
	</div>
	
</body>
</html>