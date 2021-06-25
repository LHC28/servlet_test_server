package com.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet; // 톰캣에서 가져오는 것이다...
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloController extends HttpServlet{

	@Override //request에 가져와서 reponse에 저장하여 보내는 것
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter(); //예외를 위로 던져서 처리하겠다는 것...
		out.println("Hello world!");
	}
	
}
