package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ByeCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("title", "bye");
		request.setAttribute("name", "인재개발원");
		request.setAttribute("age", "20");
		
		request.getSession().setAttribute("name", "대한민국");
		request.getSession().setAttribute("age", "127");
		return "view/result.jsp";
	}
}
