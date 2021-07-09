package com.test.quiz01;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson04/check")
public class check extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Integer sellerId = Integer.valueOf(request.getParameter("id"));
		String title = request.getParameter("title");
		Integer price = Integer.valueOf(request.getParameter("price"));
		String description = request.getParameter("description");
		String url = request.getParameter("url");
		
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		System.out.println(sellerId);
		
	}
}

