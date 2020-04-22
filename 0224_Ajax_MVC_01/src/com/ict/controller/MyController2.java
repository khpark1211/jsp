package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.model.Xml_Data_Command_01;

@WebServlet("/MyController2")
public class MyController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public MyController2() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/xml; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		StringBuffer sb = new StringBuffer();
		sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		sb.append("<products>");
		sb.append("<product>");
		sb.append("<name>딸기우유</name>");
		sb.append("<price>950</price>");
		sb.append("</product>");
		sb.append("<product>");
		sb.append("<name>탄산음료</name>");
		sb.append("<price>1100</price>");
		sb.append("</product>");
		sb.append("<product>");
		sb.append("<name>아메리카노</name>");
		sb.append("<price>1500</price>");
		sb.append("</product>");
		sb.append("<product>");
		sb.append("<name>작은 물</name>");
		sb.append("<price>500</price>");
		sb.append("</product>");
		sb.append("</products>");
		
		String msg = sb.toString();
		out.println(msg);
	}
}
