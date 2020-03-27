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

import robot_program.Forward;

@WebServlet("/RecordDistance")
public class RecordDistance extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RecordDistance() {
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
			
			String str = "select record_distance from DistanceData order by record_time desc";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(str);
			
			String distanceData = "";
			if (rs.next()) {
				//System.out.println(rs.getBigDecimal(1).compareTo(new BigDecimal(100)));
			//if( rs.getBigDecimal(1).compareTo(new BigDecimal(100)) == -1) {
				distanceData = "Distance: " + rs.getBigDecimal(1).toString() + " " + "cm";
					
			}
			
			//System.out.println("Distance");
			request.setAttribute("DistanceData", distanceData);
			//System.out.println(distanceData);
			RequestDispatcher rd = request.getRequestDispatcher("pwebsite/distancerecord.jsp");
			rd.forward(request, response);
			con.close();
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
