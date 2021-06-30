<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>장보기 목록</title>
</head>
<body>

	<%
		List<String> goodsList = Arrays.asList(new String[]{ 
		    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
		});
		int num=1;
		// 굳이 만들지 않아도 되는 변수였다...
	%>
	<div class="container">
		<h1 class="text-center">장보기 목록</h1>
		<table class="table table-hover text-center">
		<!-- thead tbody도 활용하도록 하자.... 이런 경우 뚜렷하게 나누어져 있으니... -->
			<tr>
				<th>번호</th>
				<td>품목</td>
			</tr>
			<%
				while(num<=goodsList.size()){
			%>
				<tr class="text-center">
				<!-- 다 먹히지 않아서 추가하니 적용됨... -->
					<th>
						<%=num %>
					</th>
					<td>
						<%
							out.print(goodsList.get(num-1));
							out.print("<br>");
							num+=1;
						%>
					</td>
				</tr>
			<%
				}
			// html 요소들도 반복되고 있다고 생각하면 될 것 같다.
			%>
		</table>
	</div>

</body>
</html>