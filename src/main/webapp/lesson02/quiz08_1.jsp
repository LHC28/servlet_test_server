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
<title>책 목록</title>
</head>
<body>
	<%
    List<Map<String, Object>> list = new ArrayList<>();
    Map<String, Object> map = new HashMap<String, Object>() {
        { 
            put("id", 1000);
            put("title", "아몬드"); 
            put("author", "손원평"); 
            put("publisher", "창비");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/267/x9788936434267.jpg");
        } 
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        { 
            put("id", 1001);
            put("title", "사피엔스"); 
            put("author", "유발 하라리"); 
            put("publisher", "김영사");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/464/x9788934972464.jpg");
        } 
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        { 
            put("id", 1002);
            put("title", "코스모스"); 
            put("author", "칼 세이건"); 
            put("publisher", "사이언스북");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/892/x9788983711892.jpg");
        } 
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        { 
            put("id", 1003);
            put("title", "나미야 잡화점의 기적"); 
            put("author", "히가시노 게이고"); 
            put("publisher", "현대문학");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/194/x9788972756194.jpg");
        } 
    };
    list.add(map);
	%>
	
	<%
	String getId = request.getParameter("id");
	// 여기서 id값이 id = "id=1000"이 아니라 1000만 넘어오기 때문에 굳이 자르거나 기타 등등 할 필요가 없었다...
	// 한 번에 변환이 되지 않을 때는 그냥 변수 만들어서 하도록 하자.
	int id = Integer.valueOf(getId);
	%>
	
	<div class = "container">
		<div class = "d-flex">
			<%
			// 맵을 만들어 id에 해당하는 데이터를 넣는 방법도 있다.
			// 이 방법이 훨씬 덜 복잡하게 나오는 것 같다...
			for(int i=0; i<list.size(); i++){
				if((int)list.get(i).get("id")==id){
			%>
			<div>
				<img src=
					<%
					out.print(list.get(i).get("image"));
					%>
				width = 300px height = 400px>
			</div>
			<div class="ml-3">
			<%-- d-block을 활용하여 한 행에 자신만 출력될 수 있도록 할 수 있다. --%>
				<div class="display-2"><% out.print(list.get(i).get("title")); %></div>
				<div class="display-3 text-success"><% out.print(list.get(i).get("author")); %></div>
				<div class="display-4 text-primary"><% out.print(list.get(i).get("publisher")); %></div>
			<%	
				break;
				}
			}
			%>
			</div>
		</div>
	</div>
	
	

</body>
</html>