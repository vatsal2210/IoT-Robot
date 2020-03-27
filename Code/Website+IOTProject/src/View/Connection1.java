package View;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connection1 
{
	public static Connection con = null;
	public static Connection getConnection()
	{	
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/personalwebsite","root","pi");	
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}	
		return con;
	}
}
