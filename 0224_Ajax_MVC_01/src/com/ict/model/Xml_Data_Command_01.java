package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Xml_Data_Command_01 {
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		StringBuffer sb = new StringBuffer();
		sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		sb.append("<products>");
		sb.append("<product>");
		sb.append("<name>흰우유</name>");
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
		return sb.toString();
	}
}
