package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DataOperation;
import com.model.UserRegister;

/**
 * Servlet implementation class UserRegServlet
 */
@WebServlet("/User-Reg")
public class UserRegServlet extends HttpServlet {
	DataOperation dao=null;
	
	@Override
		public void init() throws ServletException {
			dao=new DataOperation();
		}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String fn=request.getParameter("fn");
		String ln=request.getParameter("ln");
		String name=fn+" "+ln;
		String cno=request.getParameter("cn");
		String email=request.getParameter("email");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		UserRegister ur=new UserRegister(name,cno,email,password,address);
		System.out.println(ur);
		
	int val;
		try {
			 val=dao.RegisterData(ur);
			 //out.print("<h1>"+ur+"</h1>");
			// System.out.println(val);
			 if (val>0) {
				 request.getRequestDispatcher("userLogin.jsp").forward(request, response);
			 }
		} catch (Throwable e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
