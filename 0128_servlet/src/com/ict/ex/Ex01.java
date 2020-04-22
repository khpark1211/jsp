package com.ict.ex;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 서블릿 실행 순서(생명주기) : 생성자 => init() =>
// URL 매핑 주소 : localhost:8090/프로젝트이름/URL매핑주소(Ex01)
@WebServlet("/Ex01")
public class Ex01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Ex01() {
        super();
        System.out.println("서블릿 페이지 생성자");
        // 자동으로 init() 호출
    }
    
	public void init(ServletConfig config) throws ServletException {
		// 생성자와 같은 역할을 함 
		// 즉, 서블릿 객체 초기화, 최초로 한번만 호출 된다.
		System.out.println("init()");
		// 자동으로 service() 호출 
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request : 요청, response :응답
		// 요청방식(메소드)을 구별해서 요청정보를 알맞는 메소드에게 전달하는 역할을 한다.
		// 요청방식 => post방식 : body에 정보를 담아서 보내는 방식, 대용량, 내용 안보임, doPost()를 호출
		//          get 방식  : head에 정보를 담어서 보내는 방식, 소용량, 내용 보임, doGet()를 호출 
		
		System.out.println("service()");
		if(request.getMethod().equalsIgnoreCase("get")) {
			doGet(request, response);
		}else if(request.getMethod().equalsIgnoreCase("post")) {
			doPost(request, response);
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// get 방식으로 요청이 들어오면  doPost()로 보낸다.
		doPost(request, response);
		System.out.println("doGet()");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// get방식, post 방식 모두 처리하는 공간
		// 실제로 작업하는 메소드
		System.out.println("doPost()");
	}

    // 해당 프로젝트가 tomcat에서 내려올때 사용되는 메소드 
	public void destroy() {
		System.out.println("destroy()");
	}


}
