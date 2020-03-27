package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.RegisterModel;
import View.RegisterView;


@WebServlet("/VRegister")
public class VRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public VRegister() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/pwebsite/register.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try
		{
			System.out.println("VRegister Test");
			String name = request.getParameter("name").toString();
			String email = request.getParameter("email").toString();
			String password = request.getParameter("password").toString();
			
			RegisterModel obM = new RegisterModel();
			RegisterView obV = new RegisterView();
		
			obM.setName(name);
			obM.setEmail(email);
			obM.setPassword(password);
			
			obV.insertData(obM);
			System.out.println("Registered");
			request.getRequestDispatcher("/pwebsite/login.jsp").forward(request, response);
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}

}
