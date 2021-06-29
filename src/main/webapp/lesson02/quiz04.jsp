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
	<div class="container">
		<h1>사칙 연산 계산기</h1>
		<div>
			<form method="post" action="/lesson02/quiz04_1.jsp" class="d-flex">
				<input type="text" name="num1" class="form-control col-2 mr-2">
				<select name = "cal" class = "form-control col-1 mr-2">
					<option name="+">+</option>
					<option name="-">-</option>
					<option name="*">*</option>
					<option name="/">/</option>
					<!-- 굳이 name을 써줄 필요 없었다... -->
				</select>
				<input type="text" name="num2" class="form-control col-2 mr-2">
				<button type="submit" class="btn btn-success">계산하기</button>
			</form>
		</div>
	</div>
</body>
</html>