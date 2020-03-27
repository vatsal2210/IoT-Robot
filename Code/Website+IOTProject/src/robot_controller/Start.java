package robot_controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import robot_program.Reset;

@WebServlet("/Start")
public class Start extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Start()
    {
    	super();
     }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		try
		{
			System.out.println("Start");
			// Reset.setData();
			RequestDispatcher rd = request.getRequestDispatcher("pwebsite/control.jsp");
			rd.forward(request, response);
		}
		
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}

	

}
