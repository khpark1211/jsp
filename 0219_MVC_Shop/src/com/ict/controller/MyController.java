package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.model.AddCartCommand;
import com.ict.model.AddProductCommand;
import com.ict.model.AdminCommand;
import com.ict.model.Command;
import com.ict.model.ContentCommand;
import com.ict.model.DelProductCommand;
import com.ict.model.EditCountCommand;
import com.ict.model.LoginCommand;
import com.ict.model.LoginOKCommand;
import com.ict.model.LogoutCommand;
import com.ict.model.ShopCommand;
import com.ict.model.ViewCartCommand;

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
		
		String cmd = request.getParameter("cmd");
		Command comm = null;
		switch (cmd) {
			case "login": comm = new LoginCommand(); break;
			case "login_ok": comm = new LoginOKCommand(); break;
			case "admin": comm = new AdminCommand(); break;
			case "shop": comm = new ShopCommand(); break;
			case "logout": comm = new LogoutCommand(); break;
			case "content": comm = new ContentCommand(); break;
			case "addcart": comm = new AddCartCommand(); break;
			case "viewcart": comm = new ViewCartCommand(); break;
			case "editcount": comm = new EditCountCommand(); break;
			case "delproduct": comm = new DelProductCommand(); break;
			case "addproduct": comm = new AddProductCommand(); break;
		}
		String path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}
}
