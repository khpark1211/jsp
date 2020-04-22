package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.BVO;
import com.ict.db.DAO;

public class Delete_OKCommand implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String cPage = request.getParameter("cPage");
		BVO bvo = (BVO) request.getSession().getAttribute("bvo");
		String b_idx = bvo.getB_idx();
		
		// 먼저 원글에 관련된 댓글 먼저 삭제 
		DAO.getC_AllDelete(b_idx);
		
		// 원글 삭제 
		int result = DAO.getDelete(b_idx);
		return "/MyController?cmd=list&cPage="+cPage;
	}
}
