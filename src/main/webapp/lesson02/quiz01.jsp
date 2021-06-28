<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %><!-- 페이지 정보나 import 등 추가할 때... -->
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz01</title>
</head>
<body>
	<!-- 1 -->
	<%!
	private int num=0;
	public int sum(int n){
		num = 0; // 더해지는 것 방지용...
		for(int i=1; i<=n; i++){
			num+=i;
		}
		return num;
	}
	%>
	<h1><%="1부터 50까지의 합은 "+sum(50)+"입니다." %></h1>
	<!-- 굳이 글자를 자바안에서 ""붙이고 쓰지 않아도 html이니 밖에다 그냥쓰면 되겠다....... -->

	
	<!-- 2 -->
	<%
	int[] scores = {80, 90, 100, 95, 80};
	int sum=0;
	for(int i=0; i<5; i++){
		sum+=scores[i];
	}
	double avg = sum/(double)scores.length;
	%>
	<h1><%="평균점수는 "+avg+"입니다." %></h1>
	
	
	<%-- 3 --%>
	<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	int score=0;
	for(int i=0; i<scoreList.size(); i++){
		if(scoreList.get(i)=="O"){
			// 한 글자라 ==도 된듯...
			score+=10;
		}
	}
	%>
	<h1><%="채점결과는 "+score+"점 입니다." %></h1>
	
	
	<%-- 4 --%>
	<%
	String birthDay = "20010820";
	String birth = birthDay.substring(0,4);
	int birth1 = Integer.valueOf(birth);
	int age = 2021-birth1+1;
	%>
	<h1><%="20010820의 나이는 "+age+"세입니다." %></h1>
	
</body>
</html>