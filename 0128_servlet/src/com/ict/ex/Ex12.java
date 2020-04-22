package com.ict.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model3.C_Command;
import model3.Command;
import model3.G_Command;
import model3.S_Command;

@WebServlet("/Ex12")
public class Ex12 extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Ex12() {
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
		Command comm = null;
		switch (param) {
			case "1": comm = new G_Command() ;	break;
			case "2": comm = new C_Command() ; 	break;
			case "3": comm = new S_Command() ;	break;
		}
		
		String result = comm.exec(request, response);
		out.println(result);
		
	}
}




