package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import robot_program.Reset;
import Model.RegisterModel;
import View.RegisterView;

@WebServlet("/VLogin")
public class VLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public VLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.getRequestDispatcher("/pwebsite/login.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try
		{
			
			String email = request.getParameter("email").toString();
			String password = request.getParameter("password").toString();
			
			RegisterModel obM = new RegisterModel();
			obM.setEmail(email);
			obM.setPassword(password);
			
			RegisterView obV = new RegisterView();
			ArrayList<RegisterModel> list = obV.loginData(obM);
			
			if(list.size() > 0)
		{		
				System.out.println("Start");
				Reset.setData();
				request.getRequestDispatcher("/pwebsite/control.jsp").forward(request,response);
			}
			else
			{	System.out.println("Test1");
				request.setAttribute("ERROR","Invalid Username or Password <br> Or Check your Activation");
				request.getRequestDispatcher("/pwebsite/login.jsp").forward(request, response);
			}
			
			
			
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
	}

}
