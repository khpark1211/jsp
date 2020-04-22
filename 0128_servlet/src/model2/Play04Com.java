package model2;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Play04Com implements Play {
	@Override
	public String play(HttpServletRequest request, HttpServletResponse response) {
		String result="";
		 result = "나의 이름은 홍길동 입니다." ;
		return result;
	}
}
