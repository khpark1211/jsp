package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Bye {

	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 일처리가 끝나 후 jsp에 보낼 정보를 request나 session에 저장해야 된다.
		String title = "Bye";
		String name = "ICT 인재개발원";
		int age = 20;

		// request에 저장하자
		request.setAttribute("title", title);
		request.setAttribute("name", name);
		request.setAttribute("age", age);
		
		// session에 저장하자
		request.getSession().setAttribute("title", title);
		request.getSession().setAttribute("name", "대한민국");
		request.getSession().setAttribute("age",  "127");
		// 반환형 String은 결과를 표시할 페이지를 말한다.
		return "view/result.jsp";
	}
}
