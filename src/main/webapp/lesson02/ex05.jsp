<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Calendar today = Calendar.getInstance(); // calendar의 객체를 받아올 수 있다.
		out.println(today);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
		out.println("오늘 날짜 : "+sdf.format(today.getTime())+"<br>");
		// 그냥 today를 넣으면 오류가 발생한다...
		// calendar 객체를 date 객체로 변환 후 format 적용...
		// calendar 객체가 날짜에 대한 연산을 하는 것이 더 편하기 때문에 date 대신 사용한다.
		
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy년 MM월 dd일");
		// 어제 날짜 구하기
		Calendar yesterday = Calendar.getInstance();
		// 현재 날짜가 들어 있다.
		//yesterday.add(Calendar.DATE,-1); // 하루전 날짜로 연산
		//out.println("어제 날짜 : "+sdf2.format(yesterday.getTime())+"<br>");
		//yesterday.add(Calendar.MONTH,-1);
		//out.println("한달전 : "+sdf2.format(yesterday.getTime()));
		//yesterday.add(Calendar.YEAR,-1);
		//out.println("1년전 : "+sdf2.format(yesterday.getTime()));
		
		// 두 날짜 비교
		// compareTo - 참고하자... 1(앞이 더 큰 경우), 0, -1
		int result = today.compareTo(yesterday); // 기준값(today)가 더 크면 1, 같으면 0, 작으면 -1
		if(result>0){
			out.print("today가 더 크다");
		}else if(result==0){
			out.print("두 날짜는 같다.");
		}else{
			out.print("yesterday가 더 크다");
		}
		
		
	%>
</body>
</html>