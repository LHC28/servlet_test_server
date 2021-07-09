<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<%
String check = request.getParameter("check");
%>
<%	
// 물건 올리기를 누르지 않았을 때...
if(check==null || !check.equals("O")){
%>
<section class="mt-4">
		<%
			MysqlService mysqlService = MysqlService.getInstance();
			mysqlService.connection();
			
			String query = "select A.nickname, B.picture, B.title, B.price from seller as A join used_goods as B on A.id = B.sellerId";
			ResultSet result = mysqlService.select(query);
		%>
			<div class="d-flex flex-wrap justify-content-between">
		<%
			while(result.next()){
			
		%>
				<article class="mb-4">
					<div class="picture p-2"><img src="<%=result.getString("B.picture") %>" width="340px" height="200px"></div>
					<div class="title pl-2 pt-1 mt-2"><b><%=result.getString("title") %></b></div>
					<div class="price pl-2 pt-1"><%=result.getInt("B.price") %>원</div>
					<div class="nickname pl-2 pt-1"><b><%=result.getString("A.nickname") %></b></div>
				</article>
		<%
			}
			mysqlService.disconnect();
		%>
		</div>
</section>
<%
}
		%>
