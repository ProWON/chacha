package com.Controll;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;
import com.VO.memberVO;

@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
	  //String result = null;
      request.setCharacterEncoding("euc-kr");

      String id = request.getParameter("id");
      String pwd = request.getParameter("pwd");
      
      memberDAO dao = new memberDAO();
      memberVO vo = new memberVO(id, pwd);

      memberVO mv = dao.Login(vo);
      
      if (mv != null) {
    	 //result="success";
         HttpSession session = request.getSession();
         session.setAttribute("vo", mv);
         response.sendRedirect("main.jsp?result=sucess");
      } else if(mv == null){
         response.sendRedirect("main.jsp?result=fail");
         // 추가 시 로그인 실패 화면 출력
      }
   }
}

