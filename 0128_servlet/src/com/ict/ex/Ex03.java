package com.ict.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex03")
public class Ex03 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Ex03() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 요청에 대한 한글 처리
		request.setCharacterEncoding("UTF-8");
		// 2. 응답에 대한 한글 처리
		response.setContentType("text/html; charset=UTF-8");
		// 3. 응답 정보를 웹 브라우저에게 출력 할 수 있도록 클래스를 호출 해서 출력하게 하자
		PrintWriter out = response.getWriter();
		
		// 서블릿은 자바코드에서 HTML를 작성하는 것
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset=\"UTF-8\">");
		out.println("<title> 서블릿 연습 </title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1> 서블릿 예제 </h1>");
		out.println("<p> 서블릿 예제  </p>");
		out.println("서블릿 예제        서블릿 예제 ");
		out.println("서블릿 예제        서블릿 예제 ");
		out.println("서블릿 예제        서블릿 예제 ");
		out.println("<br><hr>");
	
		// 오늘날짜 운수 구하기 ( 자바식 )
		Calendar now = Calendar.getInstance();
		out.println(now.get(now.YEAR)+ "년  ");
		out.println(now.get(now.MONTH)+ 1 + "월 ");
		out.println(now.get(now.DATE)+ "일");
		
		int su = (int)(Math.random()*101); // 0- 100 까지 랜덤
		out.println(" 의 운수는 " + su +"%입니다.");
		
		// 요청정보들을 출력 해보자
		out.println("<h3><ul>");
		out.println("<li>"+request.getRemoteAddr()+"</li>");
		out.println("<li>"+request.getRemoteHost()+"</li>");
		out.println("<li>"+request.getRemotePort()+"</li>");
		out.println("<li>"+request.getRemoteUser()+"</li>");
		out.println("<li>"+request.getContextPath()+"</li>");
		out.println("<li>"+request.getRequestURI()+"</li>");
		out.println("</ul></h3>");
		out.println("</body>");
		out.println("</html>");
		
	}
}





