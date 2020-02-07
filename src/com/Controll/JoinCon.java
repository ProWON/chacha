package com.Controll;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.memberDAO;
import com.VO.memberVO;


@WebServlet("/JoinCon")
public class JoinCon extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int cnt=0;
		request.setCharacterEncoding("euc-kr");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String born = request.getParameter("born");
		String sex = request.getParameter("sex");
		String email = request.getParameter("email");
		
		System.out.println(id + pwd + born + sex + email);
		memberVO vo = new memberVO(id,pwd,born,sex,email);
		
		memberDAO dao = new memberDAO();
		
		cnt = dao.Join(vo);
		System.out.println(cnt);
		if(cnt>0) {
			response.sendRedirect("JoinBridgeS.jsp");
			System.out.println("성공");
		}
		else {
			response.sendRedirect("JoinBridgeF.jsp");
			System.out.println("실패");
		}
		
	}

}
