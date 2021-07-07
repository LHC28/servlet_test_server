package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/quiz01")
public class quiz01 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		// DB를 가져오기 위해서는 객체가 필요하다... singleton이다.
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection(); // 여기서 DB 연결이 시작되는 것이다.
		
		
		try {
			String query = "insert into `real_estate` (`realtorId`, `address`, `area`,`type`,`price`,`rentPrice`)"
					+ "values"
					+ "(3,\"헤라펠리스 101동 5305호\",350,\"매매\",1500000,null)"; // 작동이 되는지 workbench에서 확인하는 것이 좋다.
			mysqlService.update(query);
			String selectQuery="select * from `real_estate` order by `id` desc limit 10;";
			ResultSet resultSet = mysqlService.select(selectQuery);
			PrintWriter out = response.getWriter();
			while(resultSet.next()) {
				out.println("매물주소 : "+resultSet.getString("address")
				+", 면적 : "+resultSet.getInt("area")+", 타입 : "+resultSet.getString("type"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mysqlService.disconnect(); // DB연결 해제
	}
}
