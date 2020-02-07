package com.Controll;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.VO.cafeVO;
import com.VO.courseVO;
import com.VO.memberVO;

@WebServlet("/RecommendCafe")
public class RecommendCafe extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		memberVO vo = (memberVO) session.getAttribute("vo");
		ArrayList<courseVO> cvoArr = (ArrayList<courseVO>) session.getAttribute("cvoArr");
		
		String user_type = vo.getType();
		String course_id = request.getParameter("course_id");
		
		
		ArrayList<cafeVO> cafe_voArr = new ArrayList<>();
		
		int course_idInt = Integer.parseInt(course_id);

		String course_name = cvoArr.get(course_idInt).getTitle();
		
		session.setAttribute("selected_course", course_name);

		/*System.out.println(user_type);
		System.out.println(course_name);*/

		ProcessBuilder builder = new ProcessBuilder(
				"C:\\Users\\WonJae\\AppData\\Local\\Programs\\Python\\Python37\\python",
				"D:\\Users\\Web2\\Project1\\cafe_recommend.py", user_type, course_name);
		Process process = builder.start();
		Scanner errorScanner = new Scanner(process.getErrorStream());
		Scanner outputScanner = new Scanner(process.getInputStream());
		try {
			process.waitFor();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// 에러 스트림 from 파이썬파일
		while (errorScanner.hasNext()) {
			System.out.println(errorScanner.nextLine());
		}
		errorScanner.close();

		// 입력 스트립 from 파이썬파일

		String cafe_name ;
		String cafe_address ;
		String cafe_longitude;
		String cafe_latitude ;
		String cafe_weekday_time ;
		String cafe_saturday_time ;
		String cafe_sunday_time;
		String cafe_hollyday_time;
		String cafe_parking;
		
		int cnt=0;
		while (outputScanner.hasNext()) {
			/* System.out.println(outputScanner.nextLine());*/
			cafe_name = outputScanner.nextLine();
			
			if(cafe_name.equals("x")) {
				cnt=1;
				
				
			}else {
				cafe_address = outputScanner.nextLine();
				cafe_latitude = outputScanner.nextLine();
				cafe_longitude = outputScanner.nextLine();
				cafe_weekday_time = outputScanner.nextLine();
				cafe_saturday_time = outputScanner.nextLine();
				cafe_sunday_time = outputScanner.nextLine();
				cafe_hollyday_time = outputScanner.nextLine();
				cafe_parking = outputScanner.nextLine();
				
				String temp="";
				for(int i=1; i<cafe_latitude.length()-1; i++) {
					temp+=cafe_latitude.charAt(i);
				}
				cafe_latitude = temp;
				
				System.out.println(cafe_latitude);
				
				double cafe_lat = Double.parseDouble(cafe_latitude);
				
				temp ="";
				for(int i=1; i<cafe_longitude.length()-1; i++) {
					temp+=cafe_longitude.charAt(i);
				}
				cafe_longitude = temp;
				
				double cafe_long = Double.parseDouble(cafe_longitude);
	
			
				cafeVO cafe_vo = new cafeVO(cafe_name,cafe_address,cafe_lat,cafe_long,cafe_weekday_time,cafe_saturday_time,cafe_sunday_time
						 ,cafe_hollyday_time,cafe_parking);
				 cafe_voArr.add(cafe_vo);
			
			}
	
		}
		outputScanner.close();
		
		if(cnt==1) {
			response.sendRedirect("noCafe.jsp");
		}else {
			session.setAttribute("cafe_voArr", cafe_voArr);
			response.sendRedirect("RecommendCafe.jsp#cafe");
		}
	}

}
