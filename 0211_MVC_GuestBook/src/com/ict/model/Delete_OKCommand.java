package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.jdbc.DAO;
import com.ict.jdbc.VO;

public class Delete_OKCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		VO vo = (VO)request.getSession().getAttribute("vo");
	    String idx = vo.getIdx();
	    System.out.println(idx);
	    int result = DAO.getInstance().getDelete(idx); 
	    request.setAttribute("result", result);
		return "view/delete_ok.jsp";
	}
}
