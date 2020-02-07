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

@WebServlet("/UpdateCon")
public class UpdateCon extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         request.setCharacterEncoding("euc-kr");
         HttpSession session = request.getSession();
        memberVO svo = (memberVO)session.getAttribute("vo");
        
        String id = svo.getId();
        System.out.println(id);
         String pwd = request.getParameter("pwd");
         String email = request.getParameter("email");
         memberDAO dao = new memberDAO();
         
         
         memberVO vo = new memberVO(id, pwd,  email);
         System.out.println(id + pwd + email);
         int cnt = dao.Update(vo);
         System.out.println(cnt);
         if (cnt > 0) {
             request.setAttribute("vo", vo);
             session.removeAttribute("vo");
             response.sendRedirect("main.jsp?updateResult=sucess");
             //RequestDispatcher dis = request.getRequestDispatcher("main.jsp");
             //dis.forward(request, response);
             // response.sendRedirect("main.jsp");
             System.out.println("debug");
          }
       }

    }