package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.MVO;

public class LoginOKCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MVO m_vo = new MVO();
		m_vo.setId(request.getParameter("id"));
		m_vo.setPw(request.getParameter("pw"));
		
		MVO mvo = DAO.getLogIn(m_vo);
		
		String str = "";
		if(mvo != null) {
			request.getSession().setAttribute("mvo", mvo);
			request.getSession().setAttribute("login", "ok");
			
			if(mvo.getId().equals("adm") && mvo.getPw().equals("adm")) {
				request.getSession().setAttribute("admin", "ok");
			}
			str = "/MyController?cmd=shop";
		}else {
			str = "view/login.jsp";
		}
		return str;
	}
}









