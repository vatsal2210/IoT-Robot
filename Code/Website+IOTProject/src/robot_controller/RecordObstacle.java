package robot_controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RecordObstacle")
public class RecordObstacle extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RecordObstacle() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con;
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/personalwebsite","root","pi");
			
			String str = "select obstacle_data from ObstacleData order by obstacle_time desc";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(str);
			
			String obstacleData = "";
			if (rs.next()) {
					obstacleData = "Obstalce: " + rs.getString(1) + " " ;
			}
			con.close();
			
			request.setAttribute("ObstacleData", obstacleData);
			RequestDispatcher rd = request.getRequestDispatcher("pwebsite/obstaclerecord.jsp");
			rd.forward(request, response);
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
