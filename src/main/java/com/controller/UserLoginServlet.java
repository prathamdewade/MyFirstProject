package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DataOperation;
import com.dao.UpdateDao;
import com.model.UserRegister;

@WebServlet("/UserLogin")
public class UserLoginServlet extends HttpServlet {
	UpdateDao dao;
	public void init(ServletConfig config) throws ServletException {
		dao=new UpdateDao();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		//UserRegister ur=new UserRegister();

		String email=request.getParameter("email") ;
		
		String password=request.getParameter("pass");
		System.out.println(email+""+password);
		try {
			
			System.out.println("hiii");
			UserRegister ur1 = new UserRegister();
			
			ur1=dao.getAllData(email, password);
					
						
						
			
			if(ur1.getPassword() != null) {
				//System.out.println(ur1.getPassword());
				 HttpSession session=request.getSession();  
			        session.setAttribute("uname",ur1.getName());
			        session.setAttribute("User",ur1);
				response.sendRedirect("home.jsp");
			}else {
				response.sendRedirect("URegister.jsp");
			}
		} catch (Throwable e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
