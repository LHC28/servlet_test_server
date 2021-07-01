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
<title>메뉴 검색</title>
</head>
<body>

	<%
		List<Map<String, Object>> list = new ArrayList<>();
	    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
	    list.add(map);
	    
	    String scoreCheck = request.getParameter("scoreCheck");
	    // 체크하면 value가 넘어오고 안 하면 null이 넘어온다.
	    String menu = request.getParameter("menu");
	%>
	
	<div class="container">
		<h1 class = "text-center">검색 결과</h1>
		<table class="table text-center">
			<thead>
				<th>메뉴</th>
				<th>상호</th>
				<th>별점</th>
				<!-- 여기서도 tr을 넣는 것이 좋아보인다.(thead, tbody구분이 되는 것 같아 넣지 않음.) -->
			</thead>
			<tbody>

					<%
					out.print(scoreCheck);
						for(int i=0; i<list.size(); i++){
							if(list.get(i).get("menu").equals(menu)){
								if(scoreCheck!=null){
								// null은 equals을 쓰는 것이 아닌가 보다....
								// &&나 ||도 쓰도록 하자.
									double score = (double)list.get(i).get("point");
								// object라서 형변환해주어야 비교가 가능하다.
									if(score>=4.0){
					%>
						<tr>
							<td>
								<%
									out.print(list.get(i).get("menu"));
								%>
							</td>
							<td>
								<%
									out.print(list.get(i).get("name"));
								%>
							</td>
							<td>
								<%
									out.print(list.get(i).get("point"));
								%>
							</td>
						</tr>
					<%
									}
								}
								else{
									// 두 번 반복하는 것이 맞을까????
									// continue를 활용하면 두번 반복 안 해도 된다.
					%>
						<tr>
							<td>
								<%
									out.print(list.get(i).get("menu"));
								%>
							</td>
							<td>
								<%
									out.print(list.get(i).get("name"));
								%>
							</td>
							<td>
								<%
									out.print(list.get(i).get("point"));
								%>
							</td>
						</tr>
					
					<%
								}
							}
						}
					 %>

			</tbody>
		</table>
	</div>
</body>
</html>