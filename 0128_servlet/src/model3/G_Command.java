package model3;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class G_Command implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String name = request.getParameter("name");
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int math = Integer.parseInt(request.getParameter("math"));
		
		int total = kor + eng + math;
		double avg = (int)(total/3.0*10) / 10.0;
		String hak = "";
		if(avg >= 90) {
			hak = "A";
		}else if (avg >= 80) {
			hak = "B";
		}else if (avg >= 80) {
			hak = "C";
		}else {
			hak = "F";
		}
		
		String result = "<h3><p>이름 : "+ name + "</p><p>국어 : " + kor + "</p>" +
						"<p>영어  : " + eng + "</p><p>수학  : " + eng + "</p>" +
						"<p>총점  : " + total + "</p><p>평균  : " + avg + "</p>" +
						"<p>학점  : " + hak + "</p></h3>";
		return result;
	}
}
