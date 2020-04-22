package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Update_OKCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

	try {
		String path = request.getServletContext().getRealPath("/upload");
		MultipartRequest mr = new MultipartRequest(request, path, 100 * 1024 * 1024, "utf-8",
				new DefaultFileRenamePolicy());

		VO vo = new VO();
		vo.setIdx(mr.getParameter("idx"));
		vo.setName(mr.getParameter("name"));
		vo.setSubject(mr.getParameter("subject"));
		vo.setContent(mr.getParameter("content"));
		vo.setPwd(mr.getParameter("pwd"));
		vo.setEmail(mr.getParameter("email"));

		// 파일은 업로드 할때와 안할때를 구별해야 된다.
		if (mr.getFile("f_name") != null) {
			vo.setFile_name(mr.getFilesystemName("f_name"));
		} else {
			vo.setFile_name("");
		}

		int result = DAO.getUpdate(vo);
		request.setAttribute("result", result);
	} catch (Exception e) {
	}
		return "view/update_ok.jsp";
	}
}
