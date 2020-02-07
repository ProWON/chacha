package com.Controll;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.memberDAO;

@WebServlet("/IdSearchCon")
public class IdSearchCon extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      request.setCharacterEncoding("euc-kr");

      String email = request.getParameter("email");

      memberDAO dao = new memberDAO();
      String id = dao.IdSearch(email);
        if (id != null) {
               HttpSession session = request.getSession();
               session.setAttribute("id", id);
               response.sendRedirect("main.jsp#idsearch_suc");
            }else {
               response.sendRedirect("main.jsp");
            }

   }

}