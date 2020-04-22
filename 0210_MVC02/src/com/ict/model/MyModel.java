package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyModel {
	
	public String exec01(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("title", "hi");
		request.setAttribute("name", "둘리");
		request.setAttribute("age", "24");
		return "view/result.jsp";
	}
	
	public String exec02(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("title", "hello");
		request.getSession().setAttribute("name", "태권브이");
		request.getSession().setAttribute("age", "34");
		return "view/result.jsp";
	}
	
	public String exec03(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("title", "bye");
		request.setAttribute("name", "인재개발원");
		request.setAttribute("age", "20");
		
		request.getSession().setAttribute("name", "대한민국");
		request.getSession().setAttribute("age", "127");
		return "view/result.jsp";
	}
	
	public String exec04(HttpServletRequest request, HttpServletResponse response) {
		// 파라미터값을 받아서 나눠 처리할 수 있다.
		String cmd = request.getParameter("cmd");
		switch (cmd) {
		case "1": 
			request.setAttribute("title", "hi");
			request.setAttribute("name", "둘리");
			request.setAttribute("age", "24");
			
			break;
		case "2":	
			request.setAttribute("title", "hello");
			request.getSession().setAttribute("name", "태권브이");
			request.getSession().setAttribute("age", "34");
			
			break;
		case "3":
			request.setAttribute("title", "bye");
			request.setAttribute("name", "인재개발원");
			request.setAttribute("age", "20");
			
			request.getSession().setAttribute("name", "대한민국");
			request.getSession().setAttribute("age", "127");
			
			break;
	}
		
		return "view/result.jsp";
	}
	
	
	
	
	
	
	
}
