package com.ict.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex08")
public class Ex08 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Ex08() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		out.println("<h2> 여기는 Ex08 페이지 입니다.</h2>");
		out.println("<h3> ID : " + id + "</h3>");
		out.println("<h3> PW : " + pw + "</h3>");
		
		// 페이지 이동 ( 포워딩, 리다이렉트 , a링크 )
		// 1. 리다이렉트 : 페이지 이동하면 기존의 request, response가 사라지고 
		//              새로운  request, response가 만들어진다.
		//              기존의 파라미터값들은 사라진다. 
		//              URL에 변화가 있다.
		// 사용법 : response.sendRedirect("이동할 주소")
		//        response.sendRedirect("Ex09");       // 자바 리소스에서 이동
		//        response.sendRedirect("ex09.html");  // html 문서로 이동
		
		// 2. 포워딩 : 페이지 이동하면서 기존의 request, response를 가지고 간다.
		//           즉 파라미터값들이 삭제 되지 않는다.
		//           URL에 변화도 없다.
		// 사용법 : request.getRequestDispatcher("이동할 주소").forward(request,response); 
		//        request.getRequestDispatcher("Ex09").forward(request,response);       
		//        request.getRequestDispatcher("ex09.html").forward(request,response);     
		
		// 3. a링크
	    out.println("<a href='"+ request.getContextPath()+"/Ex09'> Ex09로 이동  </a><br>");
	    out.println("<a href='/0128_servlet/Ex09'> Ex09로 이동  </a><br><br>");
	    out.println("<a href='Ex09'> Ex09로 이동  </a><br><br>");
	    out.println("<a href='Ex09?id="+id +"&pw="+pw+"'> Ex09로 이동  </a><br><br>");
		       
	}
}








