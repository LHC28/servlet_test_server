<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST METHOD 폼 태그</title>
</head>
<body>

	<form method="post" action="/lesson02/ex03_1.jsp"> <!-- 값이 주소에 노출되지 않음... -->
		1. 별명은 무엇입니까?<input type="text" name="nickname"><br><br>
		2. 취미는 무엇입니까?<input type="text" name="hobby"><br><br>
		3. 강아지 or 고양이?
		<label for="dog">강아지<input type="radio" name="animal" id="dog" value="dog"></label>
		<label for="cat">고양이</label><input type="radio" name="animal" id="cat" value="cat"><br><br>
		<!-- for는 고양이와 같이 label을 씌웠을 때 필요한 것이다. -->
		
		4. 다음 중 선호하는 것을 모두 고르세요.<br>
		<label for="mincho">민트초코</label><input type="checkbox" name="food" id="mincho" value="mincho">
		<label for="pizza">하와이안 피자</label><input type="checkbox" name = "food" id = "pizza" value="pizza">
		<label for="pupa">번데기</label><input type="checkbox" name = "food" id = "pupa" value="pupa"> <br><br>
		
		5. 좋아하는 과일을 선택하세요.<br>
		<select name="fruit">
			<option value="apple">사과</option> <!-- 영어로 바꿔보내고 싶으면 value를 붙이면 된다. 속성이 우선이 되기 때문... -->
			<option value = "banana">바나나</option>
			<option value = "peach">복숭아</option>
			<option value = "strawberry">딸기</option>
			<option value = "grape">포도</option>
		</select><br><br>
		
		<button type="submit">제출</button>
	</form>
	
</body>
</html>