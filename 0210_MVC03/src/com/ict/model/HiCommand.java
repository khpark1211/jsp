package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HiCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("title", "hi");
		request.setAttribute("name", "둘리");
		request.setAttribute("age", "24");
		return "view/result.jsp";
	}
}
