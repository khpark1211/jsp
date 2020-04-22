package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.CVO;
import com.ict.db.DAO;
import com.ict.db.VO;

public class AddCartCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String idx = request.getParameter("idx");
		String id = request.getParameter("id");
		
		// idx를 이용해서 제품 정보를 가져오기 
		VO vo = DAO.getOneList(idx);
		
		// 카드 정보 가져오자
		CVO cvo = DAO.getCartList(id, vo.getP_num());
		
		if(cvo == null ) {
		  // 카드에 제품이 없는 경우 (카트에 추가) 
			CVO cvo2 = new CVO();
			cvo2.setP_num(vo.getP_num());
			cvo2.setP_price(String.valueOf(vo.getP_price()));
			cvo2.setP_name(vo.getP_name());
			cvo2.setId(id);
			DAO.getCartInsert(cvo2);
		}else {
		  // 카트에 제품이 있는 경우(카트에 제품의 갯수를 1증가 시킨다.)
			DAO.getCartUpdate(cvo);
		}
		return "/MyController?cmd=content&idx="+idx+"&id="+id;
	}
}







