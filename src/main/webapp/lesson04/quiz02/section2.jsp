<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<%
String check = request.getParameter("check");
%>
<%
if(check!=null && check.equals("O")){
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connection();
	
	String query = "select * from `seller`";
	ResultSet result = mysqlService.select(query);
%>
<div class="d-flex justify-content-center">
	<form method="get" action="/lesson04/quiz02_insert">
		<div class="inputBox">
			<div class="inputTitle display-4 d-flex align-items-center">물건 올리기</div>
			<div class="d-flex">
				<div class="inputChoiceBox d-flex align-items-center justify-content-between">
					<%-- 넘어가는 값 --%>
					<select class="selectBox form-control" name="id" id="id">
						<option value="100">-아이디 선택-</option>
						<%
							while(result.next()){
						%>
								<option value="<%=result.getInt("Id") %>"><%=result.getString("nickname") %></option>
						<%
							}
						%>
						
					</select>
					<input type="text" class="inputTitleBox form-control" value="제목" name="title" id="title">
					<div>
						<div class="input-group">
							<input type="text" class="form-control" placeholder="가격" name="price" id="price">
		 					<div class="input-group-prepend">
		 					<span class="input-group-text" id="basic-addon1">원</span>
							</div>
	  					</div>
					</div>
				</div>
			</div>
			<p>
				<textarea cols="125" rows="10" class="form-control mt-2" name="description"></textarea>
			</p>
			<div class="input-group">
	  			<div class="input-group-prepend">
	    			<span class="input-group-text" id="basic-addon1"><b>이미지 url</b></span>
		 		</div>
	 			<input type="text" class="form-control" name="url" id="url">
			</div>
			<input type="submit" class="inputButton btn btn-secondary mt-3" value="저장">
		</div>
	</form>
</div>
<%
	mysqlService.disconnect();
}
%>