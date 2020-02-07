package com.Controll;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LogoutCon")
public class LogoutCon extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();		
		session.removeAttribute("vo");//서버 영역중 session에 있는 값 삭제
		response.sendRedirect("logoutBridge.jsp?logout=yes");
		/*response.sendRedirect("main.jsp?logout=yes");*/
	}

}
