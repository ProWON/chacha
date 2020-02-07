

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

@WebServlet("/testserv")
public class testserv extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String user_type = "A";
		String course_name = "돌산대교";

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

		while (outputScanner.hasNext()) {
			System.out.println(outputScanner.nextLine());
		}
		outputScanner.close();
		
		
	}

}
