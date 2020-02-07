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

import com.VO.courseVO;
import com.VO.positionVO;
import com.VO.selectVO;

@WebServlet("/RecommendCourse")
public class RecommendCourse extends HttpServlet {
	

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<String> destination = new ArrayList<>();//목적지
		ArrayList<positionVO> pvoArr = new ArrayList<>();
		ArrayList<courseVO> cvoArr = new ArrayList<>();
		
		String tema = request.getParameter("tema");
		String fellow = request.getParameter("fellow");
		String spot = request.getParameter("spot");
		
		
		/*selectVO svo = new selectVO(tema,fellow,spot);*/
		
		System.out.println("RecommendCon.java : "+tema + fellow + spot);
		
	
		
		ProcessBuilder builder = new ProcessBuilder("C:\\Users\\WonJae\\AppData\\Local\\Programs\\Python\\Python37\\python",
				"D:\\Users\\Web2\\Project1\\course_Recommend.py", spot, fellow, tema);
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
		while (outputScanner.hasNext()) {
			/*System.out.println(outputScanner.nextLine());*/
			destination.add(outputScanner.nextLine()) ;
		}
		outputScanner.close();
		
		double latitude;//위도
		double longitude;//경도
		positionVO pvo;
		courseVO cvo;
		
		for(int i=0; i<destination.size();i++) {
			System.out.println(destination.get(i));
			switch (destination.get(i)) {
			case "영광백수해안도로":
				latitude = 35.355184;
				longitude = 126.3452072;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("영광백수해안도로","백수해안도로 좋아요~","images/course/1_백수해안도로.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				break;
			case "임실옥정호":
				latitude = 35.6258305;
				longitude = 127.1391787;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("임실옥정호","임실 옥정호 좋아요~","images/course/1_백수해안도로.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				
				break;
			case "광주원효사":
				latitude = 35.1488655;
				longitude = 126.9855189;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("광주원효사","광주원효사 좋아요~!!","images/course/1_백수해안도로.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				
				break;
			case "광주충장사":
				latitude = 35.1626918;
				longitude = 126.9772294;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("광주충장사","광주충장사 좋아요~!!","images/course/1_백수해안도로.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				
				break;
			case "와온해변":
				latitude = 34.8494477;
				longitude = 127.5217497;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("와온해변","순천와온해변 좋아요~!!","images/course/1_백수해안도로.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				break;
			case "여수소호해안도로":
				latitude = 34.7246363;
				longitude = 127.6381808;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("여수소호해안도로","여수소호해안도로 좋아요~!!","images/course/1_백수해안도로.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				
				break;
			case "돌산대교":
				latitude = 34.7106072;
				longitude = 127.7504727;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("돌산대교","여수돌산대교 좋아요~!!","images/course/1_백수해안도로.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				
				break;
			case "여수마래터널":
				latitude = 34.7727929;
				longitude = 127.7354525;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("여수마래터널","여수마래터널 좋아요~!!","images/course/1_백수해안도로.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				
				break;
			case "부안새만금":
				latitude = 35.9528273;
				longitude = 126.4967782;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("부안새만금","부안새만금 좋아요~!!","images/course/1_백수해안도로.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				
				break;
			case "여수달천해안도로":
				latitude = 34.7716828;
				longitude = 127.5722634;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("여수달천해안도로","여수달천해안도로 좋아요~!!","images/course/1_백수해안도로.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				
				break;
			case "광주호":
				latitude = 35.18174744;
				longitude = 126.9926748;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("광주호","백수백수 좋아요~!!","images/course/1_백수해안도로.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				
				break;
			case "순천주암호":
				latitude = 35.0335219;
				longitude = 127.2552425;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("순천주암호","백수백수 좋아요~!!","images/course/1_백수해안도로.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				break;
			case "이순신대교":
				latitude = 34.8054597;
				longitude = 127.640092;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("이순신대교","백수백수 좋아요~!!","images/course/1_백수해안도로.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				break;
			case "지리산노고단":
				latitude = 35.230184;
				longitude = 127.5333018;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("지리산노고단","노고단 좋아요~!!","images/course/1_백수해안도로.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				break;
			case "양떼목장":
				latitude = 35.0948162;
				longitude = 127.0101465;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("양떼목장","화순양떼목장 좋아요~!!","images/course/1_백수해안도로.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				
				break;
			case "장성서삼교":
				latitude = 35.351248;
				longitude = 126.755297;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("장성서삼교","장성서산교 좋아요~!!","images/course/1_백수해안도로.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				
				break;
		}
		
		
		/*if(tema.equals("sea")) {
			if(fellow.equals("couple")) {
				if(spot.equals("1")) {
					System.out.println("바다 커플 관광지");
					positionVO pvo = new positionVO(35.3363498,126.3823413);
					courseVO cvo = new courseVO("영광 백수 해안도로","백수백수 좋아용!!","images/course/1_백수해안도로.PNG","http://www.naver.com");
					HttpSession session = request.getSession();
			        session.setAttribute("pvo", pvo);
			        session.setAttribute("cvo", cvo);
					response.sendRedirect("RecommendCourse.jsp#course");
				}
			}
		}*/
		
		/*HttpSession session = request.getSession();
        session.setAttribute("svo", svo);
		response.sendRedirect("RecommendCourse.jsp#course");*/
		}
		HttpSession session = request.getSession();
		session.setAttribute("pvoArr", pvoArr);
        session.setAttribute("cvoArr", cvoArr);
        response.sendRedirect("RecommendCourse.jsp#course");
	}
}
