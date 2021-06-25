package com.text.lesson2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz04") // 이 부분은 다시 확인해보자
public class UrlMappingQuiz01 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		// print만 써도 문제 없나보다...
		PrintWriter out = response.getWriter();
		
		out.println("<html><head></head><body>");
		out.println("<ul>");
		for(int i=1; i<=30; i++) {
			out.println("<li>"+i+"번째 리스트</li>");
		}
		out.println("</ul>");
		out.println("</body></html>");
	}
}
