package com.cetpa;

import java.sql.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class ConnectionListener implements ServletContextListener 
{
	public void contextInitialized(ServletContextEvent evt)
	{
		ServletContext context=evt.getServletContext(); 
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp2","root","mysql");
			PreparedStatement psselect=cn.prepareStatement("select * from employeeinfo where eid=?");
			context.setAttribute("select",psselect);
			PreparedStatement pssave=cn.prepareStatement("insert into employeeinfo values(?,?,?,?,?,?,?)");
			context.setAttribute("save",pssave);  
			PreparedStatement psupdate=cn.prepareStatement("update employeeinfo set firstname=?,lastname=?,phone=?,emailid=?,department=?,salary=? where eid=?");
			context.setAttribute("update",psupdate);
			PreparedStatement psdelete=cn.prepareStatement("delete from employeeinfo where eid=?");
			context.setAttribute("delete",psdelete);
			Statement st=cn.createStatement();
			context.setAttribute("st",st);
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
	}
}
