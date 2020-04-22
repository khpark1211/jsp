package model2;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Play02Com implements Play {
	@Override
	public String play(HttpServletRequest request, HttpServletResponse response) {
		String result="";
		Calendar now = Calendar.getInstance();
        int year = now.get(Calendar.YEAR);
        int month = now.get(Calendar.MONTH) +1 ;
        int day = now.get(Calendar.DATE);
        result = year +"년 " + month+"월 "+ day +"일";
		return result;
	}
}
