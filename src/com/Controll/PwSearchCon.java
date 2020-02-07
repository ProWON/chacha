package com.Controll;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;

@WebServlet("/PwSearchCon")
public class PwSearchCon extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      request.setCharacterEncoding("euc-kr");

      String id = request.getParameter("id");
      String email = request.getParameter("email");

      memberDAO dao = new memberDAO();
      String pw = dao.PwSearch(id,email);
        if (pw != null) {
               HttpSession session = request.getSession();
               session.setAttribute("pw", pw);
               response.sendRedirect("main.jsp#pwsearch_suc");
            }else {
               response.sendRedirect("main.jsp");
            }

   }

}