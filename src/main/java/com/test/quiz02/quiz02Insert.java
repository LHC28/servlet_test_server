package com.test.quiz02;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_insert")
public class quiz02Insert extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Integer sellerId = Integer.valueOf(request.getParameter("id"));
		String title = request.getParameter("title");
		Integer price = Integer.valueOf(request.getParameter("price"));
		String description = request.getParameter("description");
		String url = request.getParameter("url");
		
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		String query = "insert into `used_goods`"
				+ "(`sellerId`,`title`,`price`,`description`,`picture`,`updatedAt`)"
				+ "value"
				+ "('"+sellerId+"','"+title+"','"+price+"','"+description+"','"+url+"','"+sdf.format(now)+"')";
		
		try {
			mysqlService.update(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mysqlService.disconnect();
		
		response.sendRedirect("/lesson04/quiz02/template.jsp");
	}
}
