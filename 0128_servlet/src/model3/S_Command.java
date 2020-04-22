package model3;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class S_Command implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		int time = Integer.parseInt(request.getParameter("time"));
		int pay = 8350;
		int res = 0 ;
		if(time>8) {
			res = (int)((time-8)*pay*1.5) + (8*pay);
		}else {
			res = time * pay ;
		}
		String result = "<h3> " + time +" 시간,  급여 : " + res + "원</h3>" ;
		
		return result;
	}
}
