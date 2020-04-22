package com.ict.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 매핑 변경
// init(), service(), destroy()는 지정하지 않으면 나오지 않는다.
@WebServlet("/hello")
public class Ex02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public Ex02() {
        super();
    }
    // service()를 호출 하지 않으면 요청방식을 알아서 처리 해준다.
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("doGet()를 거쳤나요?");
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 콘솔에 출력하기 
		// System.out.println("doPost() 실행 했습니다.");
		
		// 서블릿은 자바 기반에서 HTML 태그를 사용하여 웹 브라우저에 표현 하는 것이다. 
		// ** 1. 2. 3.은 반드시 해야 됩니다.
		
		// 1. 요청에 대한 한글 처리 
		request.setCharacterEncoding("UTF-8");
		
		// 2. 응답에 대한 한글 처리 하기 
		response.setContentType("text/html; charset=UTF-8");
		
		// 3. 브라우저에 출력하기
		PrintWriter out = response.getWriter();
		out.println("<h1> 서블릿 예제 </h1>");
		out.println("<h2> Hello World </h2>");
		out.println("Hello World           Hello World");
		out.println("Hello World           Hello World");
		
	}
}













