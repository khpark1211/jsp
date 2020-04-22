package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Update_okCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String path = request.getServletContext().getRealPath("/upload");
		try {
			MultipartRequest mr = new MultipartRequest(request,
					path, 100*1024*1024, "utf-8", new DefaultFileRenamePolicy());
			
			String cPage = mr.getParameter("cPage");
			
			VO vo = new VO();
			vo.setWriter(mr.getParameter("writer"));
			vo.setTitle(mr.getParameter("title"));
			vo.setContent(mr.getParameter("content"));
			vo.setPwd(mr.getParameter("pwd"));
			vo.setIdx(mr.getParameter("idx"));
			
			
			if(mr.getFile("file_name") != null) {
				vo.setFile_name(mr.getFilesystemName("file_name"));
			}else {
				vo.setFile_name("");
			}
			
			DAO.getUpdate(vo);
			
			return "/MyController?cmd=view&cPage="+cPage+"&idx="+vo.getIdx();
		}catch (Exception e) {
		System.out.println(e);
		}
		return null;
	}
}
