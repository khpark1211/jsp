package com.ict.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex05")
public class Ex05 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       public Ex05() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out =  response.getWriter();
		
		out.println("<h1>학점 구하기</h1>");
		out.println("<form action=\"Ex05\">");
		out.println("<fieldset>");
		out.println("<legend> 성적 입력하기 </legend>");
		out.println("<p> 이름 : <input type= \"text\" name=\"name\" placeholder=\"이름 입력\"> </p>");
		out.println("<p> 국어 : <input type= \"text\" name=\"kor\" placeholder=\"국어 입력\"> </p>");
		out.println("<p> 영어 : <input type= \"text\" name=\"eng\" placeholder=\"영어 입력\"> </p>");
		out.println("<p> 수학 : <input type= \"text\" name=\"math\" placeholder=\"수학 입력\"> </p>");
		out.println("<input type=\"submit\" ><br>");
		out.println("</fieldset>");
		out.println("</form>");
		
		//submit하면 해당 form 정보들이 /Ex05 로 보내진다.
		// /Ex05 가 자기 자신이름로 여기서 파라미터 처리를 한다. 
		String name = request.getParameter("name");
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int math = Integer.parseInt(request.getParameter("math"));
		
		int total = kor + eng + math ;
		double avg =  (int)(total /3.0 *10) /10.0 ;
		String hak = "";
		if(avg>=90) {
			hak = "A";
		}else if(avg>=80) {
			hak = "B";
		}else if(avg>=70) {
			hak = "C";
		}else{
			hak = "F";
		}
		
		out.println("<h3><ul>");
		out.println("<li> 이름 : "+ name + "</li>" );
		out.println("<li> 국어 : "+ kor + "</li>" );
		out.println("<li> 영어 : "+ eng + "</li>" );
		out.println("<li> 수학 : "+ math + "</li>" );
		out.println("<li> 총점 : "+ total + "</li>" );
		out.println("<li> 평균 : "+ avg + "</li>" );
		out.println("<li> 학점 : "+ hak + "</li>" );
		out.println("</ul></h3>");
	}
}











