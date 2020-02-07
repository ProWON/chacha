package com.Controll;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.VO.cafeVO;

/**
 * Servlet implementation class ResultCon
 */
@WebServlet("/ResultCon")
public class ResultCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		ArrayList<cafeVO> cafe_voArr =  (ArrayList<cafeVO>)session.getAttribute("cafe_voArr");
	
		String cafe_id = request.getParameter("cafe_id");
		
		int cafe_idInt = Integer.parseInt(cafe_id);
		
		System.out.println(cafe_idInt);
		
		String selected_cafe = cafe_voArr.get(cafe_idInt).getName();
		
		session.setAttribute("cafe_Id", cafe_idInt);
		session.setAttribute("selected_cafe", selected_cafe);
		response.sendRedirect("Result.jsp#result");
	/*	request.setAttribute("selected_cafe", cafe_id);
		RequestDispatcher dis = request.getRequestDispatcher("Result.jsp#result");
		dis.forward(request, response);*/
		
	}

}
