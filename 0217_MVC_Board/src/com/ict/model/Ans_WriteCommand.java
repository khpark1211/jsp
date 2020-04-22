package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ans_WriteCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("cPage", request.getParameter("cPage"));
		return "view/ans_write.jsp";
	}
}
