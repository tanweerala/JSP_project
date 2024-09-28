package com.cetpa;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/hello")
public class HelloServlet extends HttpServlet 
{
	public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		String name=req.getParameter("str");
		PrintWriter out=res.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<h2>Hello "+name+"</h2>");
		out.println("</body>");
		out.println("</html>");
	}
}
