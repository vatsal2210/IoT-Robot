package robot_controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import robot_program.Forward;
import robot_program.Left;
import robot_program.Reverse;
import robot_program.Right;
import robot_program.Stop;

@WebServlet("/ActionControl")
public class ActionControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ActionControl() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try
		{
			
			System.out.println(request.getParameter("action"));
			
			if(request.getParameter("action").compareToIgnoreCase("Forward") == 0)
			{
				Forward.setData();
			}
			else if(request.getParameter("action").compareToIgnoreCase("Reverse") == 0)
			{
				Reverse.setData();
				
			}
			else if(request.getParameter("action").compareToIgnoreCase("Left") == 0)
			{
				Left.setData();
				
			}
			else if(request.getParameter("action").compareToIgnoreCase("Right") == 0)
			{
				Right.setData();
				
			}
			else if(request.getParameter("action").compareToIgnoreCase("Stop") == 0)
			{
				Stop.setData();
				
			}
			
			RequestDispatcher rd = request.getRequestDispatcher("pwebsite/control.jsp");
			
			rd.forward(request, response);
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
