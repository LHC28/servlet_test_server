package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ex02_delete")
public class ex02Delete extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Integer id = Integer.valueOf(request.getParameter("id"));
		// int보다 integer, null 여부도 확인해주어야 한다.
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		// 쿼리
		String query = "delete from `new_user` where id ="+id;
		try {
			mysqlService.update(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mysqlService.disconnect();
		
		// response를 어떻게 해야하는지 생각해야 한다.
		// 목록 화면 이동
		response.sendRedirect("/lesson04/ex02/ex02_1.jsp");
	}
}
