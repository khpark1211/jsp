package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.model.Hi;

@WebServlet("/HiController")
public class HiController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
     public HiController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		Hi hi = new Hi();
		
		String path = hi.exec(request, response);
		// hi 클래스에서 request에 정보를 저장하고 result.jsp에서 해당 정보를 받기 위해서는 
		// request로 보내야 한다.
		
		// 만약에 response.sendRedirect로 보내면 request 정보는 사용할 수 없다. 
		// 이경우에 정보를 사용하기 위해서는 session에 저장해야 한다.
		request.getRequestDispatcher(path).forward(request, response);
		
		// response.sendRedirect(path);
	}
}






