package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.BVO;
import com.ict.db.DAO;

public class ListCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		Paging paging = new Paging();
		
		// 1. 전체 게시물의 수 구하기 
		paging.setTotalRecord(DAO.getCount());
		
		// 2. 전체 게시물의 수을 가지고 전체 페이지의 수를 구하자
		if(paging.getTotalRecord() <= paging.getNumPerPage()) {
			paging.setTotalPage(1);
		}else {
			paging.setTotalPage(paging.getTotalRecord()/paging.getNumPerPage());
			
			if(paging.getTotalRecord() % paging.getNumPerPage() != 0) {
			   paging.setTotalPage(paging.getTotalPage()+1);	
			}
		}
		
		// 3. 현재 페이지 구하기 
		// list.jsp로 부터 cPage 파라미터에 현재 페이지값이 들어 있다.
		// 맨 처음 list.jsp에서 들어오면 현재 페이지 1페이지이다.(nowPage=1 지정)
		// 그 다음 부터는 cPage가 nowPage가 된다.
		// 즉 cPage는 nowPage로 변한다.
		String cPage = request.getParameter("cPage");
		if(cPage == null) {
			paging.setNowPage(1);
		}else {
			paging.setNowPage(Integer.parseInt(cPage));
		}
		
		// 4. **현재 페이지 시작번호와 끝번호 구하기                                                                        // 1  2  3
		 paging.setBegin((paging.getNowPage()-1) * paging.getNumPerPage()+1); // 1  6  11
		 paging.setEnd((paging.getBegin()-1) + paging.getNumPerPage())  ;     // 5  10 15
		 
		 List<BVO> list = DAO.getList(paging.getBegin(), paging.getEnd()); 
		 
		 // 5. ** 현재 페이지의 시작블록 번화와 끝 블록 번호 구하기
		 paging.setBeginBlock((int)((paging.getNowPage()-1)/paging.getPagePerBlock())*paging.getPagePerBlock()+1);
		 paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock()-1);
		 
		 // 1=> 1-3, 2=> 1-3, 3=> 1-3, 
		 // 4=> 4-6, 5=> 4-6, 6=> 4-6
		 
		 // 주의 사항 : endBlock이 totalPage보다 클 수 있다.
		 //          endBlock 값을 totalPage로 변경해야 된다.
		 if(paging.getEndBlock() > paging.getTotalPage()) {
			 paging.setEndBlock(paging.getTotalPage());
		 }
		   
		request.setAttribute("paging", paging);
		request.setAttribute("list", list);
		return "view/list.jsp";
	}
}
