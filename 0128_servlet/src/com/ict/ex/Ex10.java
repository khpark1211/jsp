package com.ict.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex10")
public class Ex10 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Ex10() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String param = request.getParameter("param");
		String result = "" ;
		switch (param) {
		case "1": result =request.getRemoteAddr();	break;
		case "2": Calendar now = Calendar.getInstance();
		         int year = now.get(Calendar.YEAR);
		         int month = now.get(Calendar.MONTH) +1 ;
		         int day = now.get(Calendar.DATE);
		         result = year +"년 " + month+"월 "+ day +"일"; break;
		case "3" :          
		        int luck = (int)(Math.random()*101);
		        result = "오늘은 운수는 "+ luck + "% 입니다."; break;
		case "4" :
			   result = "나의 이름은 홍길동 입니다." ; break;
		}
		
		out.println("<h2>  결과 :  "+ result +"</h2>");
	}
}
