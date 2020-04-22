package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.model.MyModel;

@WebServlet("/MyController")
public class MyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MyController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		/*
		String cmd = request.getParameter("cmd");
		MyModel model = new MyModel();
		String path = "";
		switch (cmd) {
			case "1": path = model.exec01(request, response);	break;
			case "2": path = model.exec02(request, response);	break;
			case "3": path = model.exec03(request, response);	break;
		}
		request.getRequestDispatcher(path).forward(request, response);
		*/
		
		
		MyModel model = new MyModel();
		String path = model.exec04(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}
}
