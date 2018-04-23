package com.cgikart.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		//out.println("login resp");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		//System.out.println("inside servlet");

		

		Connection c=null;

		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String url="jdbc:oracle:thin:@localhost:1521:XE";
			String usernamedb="HR";
			String passworddb="HR";


			c=DriverManager.getConnection(url,usernamedb,passworddb);
			
			String query="Select username,password from customer";
			PreparedStatement ps= c.prepareStatement(query);
			
			ResultSet rs=ps.executeQuery();
			int temp=0;
			while (rs.next())
			{
				
				
				String uname=rs.getString(1);
				String pword=rs.getString(2);
				
		
				if(uname.equals(username)&&pword.equals(password))
				{
					
					 temp++;
					break;
				}
				
					
			}
			if(temp>0)
			{
				//System.out.println("inside if");
				 RequestDispatcher rd=request.getRequestDispatcher("/Homepage.jsp");
					rd.forward(request,response);
			}
			else
			{
				//System.out.println("inside else");

				request.setAttribute("msg", "Invalid Username or Password");
				 RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");
					rd.forward(request,response);
			}
			
					
		}
		catch(ClassNotFoundException e)
		{
			System.out.println(e);
		}
		catch(SQLException e)
		{
			
		}
		finally
		{
			try {
				c.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

}
