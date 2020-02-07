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
		ArrayList<String> destination = new ArrayList<>();//������
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

		// ���� ��Ʈ�� from ���̽�����
		while (errorScanner.hasNext()) {
			System.out.println(errorScanner.nextLine());
		}
		errorScanner.close();

		// �Է� ��Ʈ�� from ���̽�����
		while (outputScanner.hasNext()) {
			/*System.out.println(outputScanner.nextLine());*/
			destination.add(outputScanner.nextLine()) ;
		}
		outputScanner.close();
		
		double latitude;//����
		double longitude;//�浵
		positionVO pvo;
		courseVO cvo;
		
		for(int i=0; i<destination.size();i++) {
			System.out.println(destination.get(i));
			switch (destination.get(i)) {
			case "��������ؾȵ���":
				latitude = 35.355184;
				longitude = 126.3452072;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("��������ؾȵ���","����ؾȵ��� ���ƿ�~","images/course/1_����ؾȵ���.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				break;
			case "�ӽǿ���ȣ":
				latitude = 35.6258305;
				longitude = 127.1391787;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("�ӽǿ���ȣ","�ӽ� ����ȣ ���ƿ�~","images/course/1_����ؾȵ���.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				
				break;
			case "���ֿ�ȿ��":
				latitude = 35.1488655;
				longitude = 126.9855189;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("���ֿ�ȿ��","���ֿ�ȿ�� ���ƿ�~!!","images/course/1_����ؾȵ���.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				
				break;
			case "���������":
				latitude = 35.1626918;
				longitude = 126.9772294;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("���������","��������� ���ƿ�~!!","images/course/1_����ؾȵ���.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				
				break;
			case "�Ϳ��غ�":
				latitude = 34.8494477;
				longitude = 127.5217497;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("�Ϳ��غ�","��õ�Ϳ��غ� ���ƿ�~!!","images/course/1_����ؾȵ���.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				break;
			case "������ȣ�ؾȵ���":
				latitude = 34.7246363;
				longitude = 127.6381808;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("������ȣ�ؾȵ���","������ȣ�ؾȵ��� ���ƿ�~!!","images/course/1_����ؾȵ���.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				
				break;
			case "����뱳":
				latitude = 34.7106072;
				longitude = 127.7504727;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("����뱳","��������뱳 ���ƿ�~!!","images/course/1_����ؾȵ���.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				
				break;
			case "���������ͳ�":
				latitude = 34.7727929;
				longitude = 127.7354525;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("���������ͳ�","���������ͳ� ���ƿ�~!!","images/course/1_����ؾȵ���.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				
				break;
			case "�ξȻ�����":
				latitude = 35.9528273;
				longitude = 126.4967782;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("�ξȻ�����","�ξȻ����� ���ƿ�~!!","images/course/1_����ؾȵ���.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				
				break;
			case "������õ�ؾȵ���":
				latitude = 34.7716828;
				longitude = 127.5722634;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("������õ�ؾȵ���","������õ�ؾȵ��� ���ƿ�~!!","images/course/1_����ؾȵ���.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				
				break;
			case "����ȣ":
				latitude = 35.18174744;
				longitude = 126.9926748;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("����ȣ","������ ���ƿ�~!!","images/course/1_����ؾȵ���.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				
				break;
			case "��õ�־�ȣ":
				latitude = 35.0335219;
				longitude = 127.2552425;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("��õ�־�ȣ","������ ���ƿ�~!!","images/course/1_����ؾȵ���.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				break;
			case "�̼��Ŵ뱳":
				latitude = 34.8054597;
				longitude = 127.640092;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("�̼��Ŵ뱳","������ ���ƿ�~!!","images/course/1_����ؾȵ���.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				break;
			case "���������":
				latitude = 35.230184;
				longitude = 127.5333018;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("���������","���� ���ƿ�~!!","images/course/1_����ؾȵ���.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				break;
			case "�綼����":
				latitude = 35.0948162;
				longitude = 127.0101465;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("�綼����","ȭ���綼���� ���ƿ�~!!","images/course/1_����ؾȵ���.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				
				break;
			case "�强���ﱳ":
				latitude = 35.351248;
				longitude = 126.755297;			
				pvo = new positionVO(latitude, longitude);
				pvoArr.add(pvo);
				
				cvo = new courseVO("�强���ﱳ","�强���걳 ���ƿ�~!!","images/course/1_����ؾȵ���.PNG","http://www.naver.com");
				cvoArr.add(cvo);
				
				break;
		}
		
		
		/*if(tema.equals("sea")) {
			if(fellow.equals("couple")) {
				if(spot.equals("1")) {
					System.out.println("�ٴ� Ŀ�� ������");
					positionVO pvo = new positionVO(35.3363498,126.3823413);
					courseVO cvo = new courseVO("���� ��� �ؾȵ���","������ ���ƿ�!!","images/course/1_����ؾȵ���.PNG","http://www.naver.com");
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
