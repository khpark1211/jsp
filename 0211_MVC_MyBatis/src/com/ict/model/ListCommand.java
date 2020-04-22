package com.ict.model;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.mybatis.DAO;
import com.ict.mybatis.VO;

public class ListCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
  		   List<VO> list =	DAO.getList();
		   request.setAttribute("list", list);
		return "view/list.jsp";
	}
}
