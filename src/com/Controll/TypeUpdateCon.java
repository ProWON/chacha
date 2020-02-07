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


@WebServlet("/TypeUpdateCon")
public class TypeUpdateCon extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
        memberVO svo = (memberVO)session.getAttribute("vo");
        
        System.out.println("1");
        
        String id = svo.getId();
        System.out.println("2");
        System.out.println(id);
        String typeStrA = request.getParameter("type_sumA");
        String typeStrB = request.getParameter("type_sumB");
        
        int typeIntA = Integer.parseInt(typeStrA);
        int typeIntB = Integer.parseInt(typeStrB);
        
        double typeDivA = (double)typeIntA/2;
        double typeDivB = (double)typeIntB/3;
        
        System.out.println(typeDivA);
        System.out.println(typeDivB);
        
        
        String user_type ="";
        if(typeDivA>=typeDivB) {
        	if(typeIntA>=7) {
        		user_type="A";
        	}
        	else {
        		user_type="B";
        	}
        }else if(typeIntA<typeIntB) {
        	
        	if(typeIntB>=11) {
        		user_type="C";
        	}
        	else {
        		user_type="D";
        	}
        }
        
      /*  System.out.println(user_type);*/
        
        
        memberDAO dao = new memberDAO();
        int cnt =dao.TypeUpdate(id, user_type);
        
        //여기 부터 다시 !!
        /*int cnt = dao.TypeUpdate(id,typeIn);*/
        
       if(cnt>0) {
    		session.removeAttribute("vo");
    		response.sendRedirect("typeBridge.jsp");
        }
	}

}
