package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;

public class Delete_okCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String cPage = request.getParameter("cPage");
		String idx = request.getParameter("idx");
		DAO.getDelete(idx);
		
		return "/MyController?cmd=list&cPage="+cPage;
	}
}
