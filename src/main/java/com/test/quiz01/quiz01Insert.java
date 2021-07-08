package com.test.quiz01;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01_insert")
public class quiz01Insert extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String site = request.getParameter("site");
		String url = request.getParameter("url");
		// Mysql에서 사용하는 now()를 사용하면 에러가 발생한다.
		// 따라서 자바의 date클래스와 SimpleDateFormat클래스를 활용하여 시간을 직접 넣어주는 작업을 하였다.
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		String query = "insert into `urlGroup`"
				+ "(`name`,`url`,`createdAt`,`updatedAt`)"
				+ "values"
				+ "('"+site+"','"+url+"','"+sdf.format(now)+"','"+sdf.format(now)+"')";
		// 그냥 now를 활용할 수 있다고 하는데 확인해봐야겠다...
		try {
			mysqlService.update(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mysqlService.disconnect();
		
		response.sendRedirect("/lesson04/quiz01/quiz01.jsp");
	}
}
