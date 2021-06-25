package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date; //jdk에 있는 것

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingEx01 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain"); //content type을 넣는 것임
		
		PrintWriter out = response.getWriter();
		out.println("안녕하세요. 서블릿입니다.");
		
		Date now = new Date(); // 지금 시간이 찍히게 된다
		out.println(now);
		
		// 2021-06-21 16:13:05
		//formatter
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a hh:mm:ss");
		//a - am or pm
		out.println(sdf.format(now));
	}
	
}
