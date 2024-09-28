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
			Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/centralbank?createDatabaseIfNotExist=true","root","mysql");
			Statement st=cn.createStatement();
			createTables(st);
			PreparedStatement psregistration=cn.prepareStatement("insert into userinfo values(?,?,?,?,?)");
			context.setAttribute("registration",psregistration);
			PreparedStatement psaccount=cn.prepareStatement("insert into accountinfo(userid,amount) values(?,?)");
			context.setAttribute("account",psaccount);
			PreparedStatement psno=cn.prepareStatement("select accountno from accountinfo where userid=?");
			context.setAttribute("no",psno);
			PreparedStatement psselectuser=cn.prepareStatement("select name,password,accountno from userinfo u join accountinfo a on u.userid=a.userid where u.userid=?");
			context.setAttribute("selectuser",psselectuser);
			PreparedStatement psselectbalance=cn.prepareStatement("select amount from accountinfo where accountno=?");
			context.setAttribute("selectbalance",psselectbalance);
			PreparedStatement psdeposit=cn.prepareStatement("update accountinfo set amount=amount+? where accountno=?");
			context.setAttribute("deposit",psdeposit);
			PreparedStatement psinsertsummary=cn.prepareStatement("insert into tsummary(accountNo,tamount,tdate,ttime,ttype) values(?,?,?,?,?)");
			context.setAttribute("insertsummary",psinsertsummary);
			PreparedStatement pswithdraw=cn.prepareStatement("update accountinfo set amount=amount-? where accountno=?");
			context.setAttribute("withdraw",pswithdraw);
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
	}
	private void createTables(Statement st)throws Exception
	{
		st.execute("create table if not exists userinfo(userid varchar(30) primary key,password varchar(30),name varchar(30),phone varchar(20),address varchar(100))");
		st.execute("create table if not exists accountinfo(accountno int primary key auto_increment,userid varchar(30),amount int,foreign key(userid) references userinfo(userid))auto_increment=11111");
		st.execute("create table if not exists tsummary(tid int primary key auto_increment,accountNo int,tamount int,tdate date,ttime varchar(15),ttype varchar(10))");
	}
}
