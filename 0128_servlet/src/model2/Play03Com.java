package model2;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Play03Com implements Play {
	@Override
	public String play(HttpServletRequest request, HttpServletResponse response) {
		String result="";
		 int luck = (int)(Math.random()*101);
	        result = "오늘은 운수는 "+ luck + "% 입니다.";
		return result;
	}
}
