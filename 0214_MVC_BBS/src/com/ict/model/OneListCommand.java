package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.BVO;
import com.ict.db.CVO;
import com.ict.db.DAO;

public class OneListCommand implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String b_idx =request.getParameter("b_idx");
		String cPage = request.getParameter("cPage");
		// 앞에서 히트수 처리
		 int result = DAO.getHit(b_idx);
		
		BVO bvo = DAO.getOneList(b_idx);
		
		// 뒤에서 히트수 처리 
		// int hit = Integer.parseInt(bvo.getHit()) + 1 ;
		// bvo.setHit(String.valueOf(hit));
				
		// DB의 히트 업데이트
		// int result = DAO.getHit(bvo);
		
		// 댓글 처리 
		List<CVO> c_list = DAO.getc_list(b_idx);
		request.setAttribute("c_list", c_list);
		
		
		// bvo 수정, 삭제 하기 위해서 session에 저장
		request.getSession().setAttribute("bvo", bvo);
		request.setAttribute("cPage", cPage);
		return "view/onelist.jsp";
	}
}
