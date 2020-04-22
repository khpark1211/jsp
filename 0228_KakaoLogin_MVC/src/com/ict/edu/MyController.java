package com.ict.edu;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;


@WebServlet("/login")
public class MyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MyController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		// 1.  인증 코드 받기
		String code = request.getParameter("code");
		System.out.println("code:"+code);
		
		// 2. 토큰받기위해 코드값 저장 (1)
		// request.getSession().setAttribute("code", code);
		// response.sendRedirect("result.jsp");
			    
		// 2. 토큰받기위해 코드값 저장 (2)
		 String access_Token = "";
	     String refresh_Token = "";
	     String reqURL = "https://kauth.kakao.com/oauth/token";
	     try {
	    	 URL url = new URL(reqURL);
	         HttpURLConnection conn 
	         	= (HttpURLConnection) url.openConnection();
	         
	         // POST 요청을 위해 기본값이 false인 setDoOutput을 true로
	         conn.setRequestMethod("POST");
	         conn.setDoOutput(true);
	         
	         //	POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
	         BufferedWriter bw = 
	        		 	new BufferedWriter(
	        		 			new OutputStreamWriter(
	        		 					conn.getOutputStream()));
	         StringBuilder sb = new StringBuilder();
	         sb.append("grant_type=authorization_code");
	         sb.append("&client_id=3b4a6321cd8a2b5b3c9ab33e7ed7e322");
	         sb.append("&redirect_uri=http://localhost:8090/login");
	         sb.append("&code=" + code);
	         bw.write(sb.toString());
	         bw.flush();
	         
	         //	 결과 코드가 200이라면 성공
	         int responseCode = conn.getResponseCode();
	         System.out.println("responseCode : " + responseCode);

	         // 요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
	         BufferedReader br = 
	        		 new BufferedReader(
	        				 new InputStreamReader(
	        						 conn.getInputStream()));
	         String line = "";
	         String result = "";
	            
	         while ((line = br.readLine()) != null) {
	                result += line;
	         }
	         br.close();
	         bw.close();
	         
	        // 받은 결과 보기 
	        // out.println(result);
	      
	         // 받은 결과 json 이용해서
	         // access_token, refresh_token 정보를 session 저장 
	         // 저장이유는 사용자 정보를 가져오기 위함 
	         
	         JSONParser parsing = new JSONParser();  
		     Object obj = parsing.parse(result.toString());
		     JSONObject jsonobj = (JSONObject)obj;
		     
		     String access_token = (String)jsonobj.get("access_token");
		     String refresh_token = (String)jsonobj.get("refresh_token");
		     request.getSession().setAttribute("access_token", access_token);
		     request.getSession().setAttribute("refresh_token", refresh_token);
		     
		     
		     response.sendRedirect("result.jsp");

		} catch (Exception e) {
			System.out.println(e);
		}
		
	}
}
