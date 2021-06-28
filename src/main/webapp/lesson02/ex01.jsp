<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 예제</title>
</head>
<body>
	<!-- HTML 주석 문법 : 소스보기에서 보인다. -->
	<%-- JSP의 주석 : 소스보기에서 보이지 않는다. --%>
	<h1>Hello world!!!</h1>
	
	<%
		// java 문법 시작 --> 자바 주석
		// scriptlet 구간을 의미함
		// 자바 메인함수에 작성하는 느낌
		// 1+2+3+...+10
		
		int sum = 0;
		for(int i=1; i<=10; i++){
			sum+=i;
		}
	%>
	
	<strong>합계 : </strong>
	<input type="text" value="<%=sum%>"> <!-- 여기서는 ;을 붙이지 않는다. -->
	
	<br>
	
	<%!
		// 선언문
		//-- 일반 크래스 같은 느낌(필드, 메소드 정의)
		// 선언을 하는 구간이라고 한다.
		
		// field
		private int num = 100;
	
		// method
		public String getHelloWorld(){
			return "Hello World!!!";
		}
	%>
	
	<%-- 표현식 : 선언되어 있는 변수값이나, 메소드의 리턴값을 출력한다. --%>
	<%= getHelloWorld() %> <!-- 여기에서는 ;을 붙이지 않는다. -->
	<!-- 리턴 값이 있는 것을 출력하거나 간단한 계산도 가능하다. -->
	<br>
	<%=num+200 %> <!-- 출력용으로 생각하자. -->
	
</body>
</html>