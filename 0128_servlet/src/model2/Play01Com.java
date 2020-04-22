package model2;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Play01Com implements Play {
	@Override
	public String play(HttpServletRequest request, HttpServletResponse response) {
		String result="";
		result =request.getRemoteAddr();
		return result;
	}
}
