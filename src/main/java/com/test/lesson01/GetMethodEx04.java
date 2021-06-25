package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex04")
public class GetMethodEx04 extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String num = request.getParameter("num");
		int nums = Integer.parseInt(num);
		
		PrintWriter out = response.getWriter();
		
		response.setContentType("text/html");
		
		out.print("<html><head><title>"+num+"단</title></head><body>");
		out.print("<ul>");
		for(int i=1; i<=9; i++) {
			out.print("<li>"+num+" X "+i +" = "+(nums*i)+"</li>");
		}
		out.print("</ul></body></html>");
	}
	
}
