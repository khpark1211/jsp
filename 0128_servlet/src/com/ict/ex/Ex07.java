package com.ict.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ex07")
public class Ex07 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		
		// 파미라미터 받기 
		String name = req.getParameter("name");
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String email = req.getParameter("email");
		String gender = req.getParameter("gender");
		String[]  hobby = req.getParameterValues("hobby");
		
		out.println("<h2> 가입정보 </h2>");
		out.println("<h3><ul>");
		out.println("<li> 이름 : " + name +"</li>");
		out.println("<li> 아이디 : " + id +"</li>");
		out.println("<li> 패스워드 : " + pw +"</li>");
		out.println("<li> 이메일 : " + email +"</li>");
		out.println("<li> 성별 : " + gender +"</li>");
		out.println("<li> 취미 : ");
		for (int i = 0; i < hobby.length; i++) {
			out.println(hobby[i] + "&nbsp;&nbsp;");
		}
		out.println("</li>");
		out.println("</ul></h3>");
	}
}









