package com.ict.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Play01;
import model.Play02;
import model.Play03;
import model.Play04;
import model2.Play;
import model2.Play01Com;
import model2.Play02Com;
import model2.Play03Com;
import model2.Play04Com;

@WebServlet("/Ex11")
public class Ex11 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Ex11() {
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
		/*
		    방법1)
		switch (param) {
		case "1": 
			Play01 p1 = new Play01();
			result = p1.play(request, response); break;
		case "2":
			Play02 p2 = new Play02();
			result = p2.play(request, response); break;
		case "3" :          
			Play03 p3 = new Play03();
			result = p3.play(request, response); break; 
		case "4" :
			Play04 p4 = new Play04();
			result = p4.play(request, response); break;
		}
		
		*/
		// 방법2 : 인터페이스를 이용하는 방법
		Play p = null;
		switch (param) {
			case "1" :  p = new Play01Com();	break;
			case "2" :  p = new Play02Com();	break;
			case "3" :  p = new Play03Com();	break;
			case "4" :  p = new Play04Com();	break;
		}
		result = p.play(request, response);
		
		out.println("<h2>  결과 :  "+ result +"</h2>");
		
		// 차후에 jsp을 배우면  html,jsp 문서로 넘겨서 출력 할 수 있다.
		
	}
}
