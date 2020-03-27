package View;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;


import java.util.ArrayList;

import Model.RegisterModel;

public class RegisterView 
{

	PreparedStatement ps = null;
	ResultSet rs = null;
	Connection con = null;
	Statement st = null;
	
	public void insertData(RegisterModel obj)
	{
		try
		{
			con = Connection1.getConnection();
			String iData = "insert into tb1_register(reg_name,reg_email,reg_passwd,reg_status) values(?,?,?,?)";
			ps = con.prepareStatement(iData);
		
			ps.setString(1, obj.getName());
			ps.setString(2, obj.getEmail());
			ps.setString(3, obj.getPassword());
			ps.setString(4, "A");
			
			ps.executeUpdate();
			System.out.println("Data Inserted!");
		}
			
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	public ArrayList<RegisterModel> loginData(RegisterModel obj)
	{
		ArrayList<RegisterModel> list = new ArrayList<RegisterModel>();
		
		try
		{
			con = Connection1.getConnection();
			String loginData = "select * from tb1_register where reg_email = ? and reg_passwd = ? and reg_status = ?";
		
			ps = con.prepareStatement(loginData);
			
			ps.setString(1, obj.getEmail());;
			ps.setString(2, obj.getPassword());
			ps.setString(3, "A");
		
			rs = ps.executeQuery();
			
			while(rs.next())
			{
				RegisterModel obM = new RegisterModel();
				obM.setEmail(rs.getString(4));
				list.add(obM);
			}
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
		return list;
	}
	
}
