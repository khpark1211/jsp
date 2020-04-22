package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class AddProductCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String path = request.getServletContext().getRealPath("/images");
		try {
			MultipartRequest mr = new MultipartRequest(request, path,
					 100*1024*1024, "utf-8", new DefaultFileRenamePolicy());
			VO vo = new VO();
			vo.setCategory(mr.getParameter("category"));
			vo.setP_num(mr.getParameter("p_num"));
			vo.setP_name(mr.getParameter("p_name"));
			vo.setP_company(mr.getParameter("p_company"));
			vo.setP_price(Integer.parseInt(mr.getParameter("p_price")));
			vo.setP_saleprice(Integer.parseInt(mr.getParameter("p_saleprice")));
			vo.setP_image_s(mr.getFilesystemName("p_image_s"));
			vo.setP_image_l(mr.getFilesystemName("p_image_l"));
			vo.setP_content(mr.getParameter("p_content"));
		
			DAO.getProduct_Insert(vo);
		
			return "/MyController?cmd=shop&category="+ mr.getParameter("category");
		} catch (Exception e) {
		}
		return null;
	}
}
