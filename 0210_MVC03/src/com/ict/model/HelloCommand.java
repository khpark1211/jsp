package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("title", "hello");
		request.getSession().setAttribute("name", "태권브이");
		request.getSession().setAttribute("age", "34");
		return "view/result.jsp";
	}
}
