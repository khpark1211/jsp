package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Play01 {
	
	public String play(HttpServletRequest request, HttpServletResponse response) {
		String result="";
		result =request.getRemoteAddr();
		return result;
	}
}
