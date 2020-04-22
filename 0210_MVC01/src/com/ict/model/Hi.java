package com.ict.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Hi {
	
    // 실제 실행하는 메소드
	public String exec(HttpServletRequest request, HttpServletResponse response) {
			
		//일처리가 끝나 후  jsp에 보낼 정보를 request나 session에 저장해야 된다.
		String title = "Hi" ;
		String name = "둘리";
		int age = 24 ;
		
		// reqeust에 저장하자
		request.setAttribute("title", title);
		request.setAttribute("name", name);
		request.setAttribute("age", age);
		
		// 반환형  String은 결과를 표시할 페이지를 말한다.
		return "view/result.jsp";
	}
}
