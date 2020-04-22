package com.ict.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hi")
public class Ex04 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		// 클라이언트가 서버에게 요청하면서 정보를 함께 보낼 수 있다.
		// 이러한 정보를 요청 정보 또는 파라미터라고 한다.
		// 파라미터는 페이지에서 다른 페이지로 이동 할때도 함께 보내지는 정보를 뜻한다.
		// 파라미터는 무조건 String 또는 String[] 이다.
		// get 방식에서는 파라미터가 보인다. (페이지이름?name=값&name=값&name=값)
		// post 방식 에서는 파라미터가 보이지 않다.
		
		// 파라미터값을 처리하는 메소드들(request)
		// 1. request.getParameter() : 일반적인 파라미터 받기 (String) **
		// 2. request.getParameterValues() : 같은이름의 파라미터가 여러 개 받을 경우 (String[]) **
		// 3. request.getParameterMap()   :  맵 형식의 파리미터 받기 
		// 4. request.getParameterNames() :  열거형의 파리미터 받기 
		
		// 만약에 이름(name)과 나이(age)가 파라미터 값으로 넘어왔을 때 처리 하는 방법
		out.println("<h1> 서블릿 파라미터 예제 </h1>");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		
		out.println("<h3>");
		out.println("<p> 이름 : " + name +"</p>");
		out.println("<p> 나이 : " + age + "</p>");
		
		
		// su1 , su2 파라미터의 숫자값을 받아서 더하기 결과를 출력해 보자 
		int su1 = Integer.parseInt(request.getParameter("su1"));
		int su2 = Integer.parseInt(request.getParameter("su2"));
		out.println("<p>"+su1 + " + " + su2 + " = " + (su1+su2) + "</p>");
		
		out.println("</h3>");
		out.println("<h3> 서블릿 파라미터 예제   끝</h3>");
	}
}








