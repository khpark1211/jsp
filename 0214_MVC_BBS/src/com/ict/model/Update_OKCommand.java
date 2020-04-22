package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.BVO;
import com.ict.db.DAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Update_OKCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// MultipartRequest 이기때문 request 사용 못함 
		try {
			String path = request.getServletContext().getRealPath("/upload");
			
			MultipartRequest mr
				= new MultipartRequest(request, path, 
						100*1024*1024, "utf-8", new DefaultFileRenamePolicy());
			BVO bvo = new BVO();
			bvo.setSubject(mr.getParameter("subject"));
			bvo.setWriter(mr.getParameter("writer"));
			bvo.setContent(mr.getParameter("content"));
			bvo.setPwd(mr.getParameter("pwd"));
			bvo.setB_idx(mr.getParameter("b_idx"));
			
			String cPage = mr.getParameter("cPage");
			
			// 파일처리 
			if(mr.getFile("file_name") != null) {
				bvo.setFile_name(mr.getFilesystemName("file_name"));
			}else {
			   bvo.setFile_name("");
			}
			request.setAttribute("cPage", cPage);
			request.setAttribute("b_idx", bvo.getB_idx());
			int result = DAO.getUpdate(bvo);
			if(result > 0) {
				return "/MyController?cmd=onelist" ;
			}else {
				return "/MyController?cmd=write";
			}
			
		} catch (Exception e) {
		}
		return null;
		}
	}


