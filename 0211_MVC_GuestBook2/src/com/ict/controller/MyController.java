package com.ict.controller;



import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.model.Command;
import com.ict.model.DeleteCommand;
import com.ict.model.Delete_OKCommand;
import com.ict.model.ListCommand;
import com.ict.model.OneListCommand;
import com.ict.model.UpdateCommand;
import com.ict.model.Update_OKCommand;
import com.ict.model.WriteCommand;
import com.ict.model.Write_OKCommand;

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
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String cmd = request.getParameter("cmd");
		Command comm = null;
		switch (cmd) {
			case "list": comm = new ListCommand(); break;
			case "write": comm = new WriteCommand(); break;
			case "write_ok": comm = new Write_OKCommand(); break;
			case "onelist": comm = new OneListCommand(); break;
			case "update": comm = new UpdateCommand(); break;
			case "update_ok": comm = new Update_OKCommand(); break;
			case "delete": comm = new DeleteCommand(); break;
			case "delete_ok": comm = new Delete_OKCommand(); break;
		}
		String path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}
}












