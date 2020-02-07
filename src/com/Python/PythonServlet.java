package com.Python;
import java.io.IOException;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PythonServlet")
public class PythonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String tour = "0";
		String passenger = "연인";
		String theme = "자연";
		
		ProcessBuilder builder = new ProcessBuilder("C:\\Users\\WonJae\\AppData\\Local\\Programs\\Python\\Python37\\python",
				"D:\\Users\\Web2\\Project1\\web_python.py", tour, passenger, theme);
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
