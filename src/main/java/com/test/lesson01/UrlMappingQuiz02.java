package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingQuiz02 extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글이 깨지는 것을 방지 하기 위한...
		response.setCharacterEncoding("utf-8"); // 필터를 사용하면 이 부분을 안 써도 되는 것임.
		// 일반 글자를 쓴다는 의미...
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		Date time = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("현재시간은 HH시 mm분 ss초 입니다.");
		out.println(sdf.format(time));
	}

}
