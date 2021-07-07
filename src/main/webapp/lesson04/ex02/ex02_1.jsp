<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.test.common.MysqlService" %> <%-- 컨트롤 클릭해서 이동하면 제대로 작동하는 것이다. --%>
<%@ page import = "java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자들</title>
</head>
<body>
	<%
		//db 연결
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		String query = "select * from `new_user`";
		ResultSet result = mysqlService.select(query);
	%>

	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>생년월일</th>
				<th>자기소개</th>
				<th>이메일</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<%
				while(result.next()){
			%>
			<tr>
				<td><%=result.getInt("id") %></td>
				<td><%=result.getString("name") %></td>
				<td><%=result.getString("yyyymmdd") %></td> <%-- 받아오는 자료형 확인 --%>
				<td><%=result.getString("introduce") %></td>
				<td><%=result.getString("email") %></td>
				<td><a href="/lesson04/ex02_delete?id=<%=result.getInt("id") %>">삭제하기</a></td>
			</tr>
			<%
				}
			%>
		</</tbody>
	</table>
	
	<%
		// db 연결 해제
		mysqlService.disconnect();
	%>
</body>
</html>