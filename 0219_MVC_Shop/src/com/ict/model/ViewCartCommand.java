package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.CVO;
import com.ict.db.DAO;

public class ViewCartCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		List<CVO> cartList = DAO.getCartList(id);
		request.setAttribute("cartList", cartList);
		return "view/viewcart.jsp";
	}
}
