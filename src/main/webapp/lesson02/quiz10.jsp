<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>달력</title>
</head>
<body>
	
	<%
	// 첫 날짜 지정 후 해당 일자+비는 일자만큼 반복해서 채웠다...
		// 필요한 값 구하기 (1일의 요일을 구하기 위함.)
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat yearMonth = new SimpleDateFormat("yyyy-MM");
		SimpleDateFormat day = new SimpleDateFormat("d");
		 // 이번 달 일수
		int lastDate = cal.getActualMaximum(Calendar.DATE);
		// 몇주
		int weekCount = cal.getActualMaximum(Calendar.WEEK_OF_MONTH);
		// 오늘 일자와 요일
		int todayDay = cal.DAY_OF_WEEK; // 일주일, 뒤에서 1일의 요일을 구할 때 사용
		String date = day.format(cal.getTime()); // 오늘 날짜
		int num = Integer.valueOf(date)%7; // 첫주 날짜 / 오늘 날짜를 기준으로 1일의 요일을 구함.
		
		int count = 0; // 첫 주의 빈 칸 세기
		while(num>=0){
			num-=1;
			count+=1;
		}
		
		todayDay-=count-1; // 1일의 요일.
		count=1; // 뒤에서 1일이 들어갈 위치 찾을 때 활용
		int nums=1; // 일자.
	%>
	
	<div class="container">
		<table class="table text-center">
			<thead>
				<tr>
					<h2 class="text-center"><%=yearMonth.format(cal.getTime()) %></h2>
				</tr>
				<tr class="text-center">
					<th class = "text-danger">일</th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
					<th>토</th>
				</tr>
			</thead>
			<tbody>
				<%
				for(int i=0; i<weekCount; i++){ // 주 수만큼 반복
				%>
				<tr>
				<%	
					// 1일의 조건이 걸리면 그 곳부터 시작...count를 통해 위치 찾은 후 해당 조건으로 계속 진행
					for(int j=1; j<=7; j++){ // 일 수만큼 반복(일주일은 7일)
						count+=1;
						if(count==lastDate+(todayDay)+1){ // 마지막 날짜에서 멈추기 위해 들어감.
						// 그 달 날짜 + 요일(숫자)
						// 위에서 count+1을 했기 때문에 조건문에서도 1을 더해야 맞다.
						// 마지막에 들어가는 것이 더 좋았을 것 같다... 굳이 1을 더할 필요가 없다...
							break;
						}
						if(count>todayDay){ // 등호가 들어가지 않는 것은 count가 0이 아니라 1부터 시작했기 때문.
							// 위에서 count 값을 0으로 했으면 등호가 들어가도 잘 나왔을 것이다...
							
				%>		
							<td><h3><%=nums %></h3></td>
				<%		
							nums+=1; // 날짜 입력할 때마다 1씩 더한 것
						}else{
				%>
							<td><%="" %></td> <%-- 앞의 비는 날짜 채우기 --%>
				<%
						}
					}
				}
				%>
				</tr>
			</tbody>
		</table>
	</div>
	
	
	
	
</body>
</html>