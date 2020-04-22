package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;

public class ShopCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 카테고리가 가전제품이 리스트만 뽑아서 보내자
		String category = request.getParameter("category");
		if(category == null || category=="") {
			category= "ele002" ;
		}
		List<VO> list = DAO.getList(category);
		request.setAttribute("list", list);
		
		return "view/product_list.jsp";
	}
}
