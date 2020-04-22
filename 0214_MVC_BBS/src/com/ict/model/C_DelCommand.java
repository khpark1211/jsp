package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;

public class C_DelCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String c_idx = request.getParameter("c_idx");
		String b_idx = request.getParameter("b_idx");
		String cPage = request.getParameter("cPage");
		System.out.println(c_idx);
		System.out.println(b_idx);
		System.out.println(cPage);
		int result = DAO.getC_Delete(c_idx);
		
		return "/MyController?cmd=onelist&b_idx="+b_idx+"&cPage="+cPage;
	}
}
