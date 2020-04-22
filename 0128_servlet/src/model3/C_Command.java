package model3;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class C_Command implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		int su1 = Integer.parseInt(request.getParameter("su1"));
		int su2 = Integer.parseInt(request.getParameter("su2"));
		String op = request.getParameter("op");
		
		int res = 0 ;
		switch (op) {
			case "+": res = su1 + su2 ; break;
			case "-": res = su1 - su2 ; break;
			case "*": res = su1 * su2 ; break;
			case "/": res = su1 / su2 ; break;
		}
		String result = "<h3>"+ su1 + " "+ op +" "+ su2 + " = " + res + "</h3>";
		return result;
	}
}
