package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;

public class DelProductCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String p_num = request.getParameter("p_num");
		String id = request.getParameter("id");
		
		DAO.getCartDel(id,p_num);
		
		return "/MyController?cmd=viewcart&id="+id;
	}
}
