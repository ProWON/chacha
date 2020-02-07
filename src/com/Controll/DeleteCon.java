package com.Controll;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;
import com.VO.memberVO;

@WebServlet("/DeleteCon")
public class DeleteCon extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("euc-kr");
      
      HttpSession session = request.getSession();
      
      String id = request.getParameter("id");
      System.out.println(id);
      
      
      memberDAO dao = new memberDAO();
      memberVO vo = (memberVO)session.getAttribute("vo");
      
      int cnt =dao.Delete(id);
      System.out.println(cnt);
      if(cnt>0) {
          session.removeAttribute("vo");
          response.sendRedirect("main.jsp?deleteResult=sucess");
         // RequestDispatcher dis = request.getRequestDispatcher("main.jsp");
         //dis.forward(request, response);
         //response.sendRedirect("main.jsp");
       }
 }

}