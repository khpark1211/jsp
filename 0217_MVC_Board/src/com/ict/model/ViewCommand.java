package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;

public class ViewCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String idx= request.getParameter("idx");
		String cPage = request.getParameter("cPage");
		
		// 히트수 업데이트 
		DAO.getHit(idx);
		
		// 상세보기 
		VO vo = DAO.getView(idx);
		
		// 수정, 삭제를 위해서 session에 저장
		request.getSession().setAttribute("vo", vo);
		request.setAttribute("cPage", cPage);
		
		return "view/view.jsp";
	}
}
