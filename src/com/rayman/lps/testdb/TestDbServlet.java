package com.rayman.lps.testdb;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;

/**
 * Servlet implementation class TestDbServlet
 */
@WebServlet("/TestDbServlet")
public class TestDbServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// setup connection variables
		String user = "root";
		String pass = "root";
		
		
		String jdbcUrl = "jdbc:mysql://localhost:3306/testdb?useSSL=false&serverTimezone=UTC";
		
		String driver = "com.mysql.cj.jdbc.Driver";
		
		// get connection to database
		try {
			PrintWriter out = response.getWriter();
			
			System.out.println("Connecting to database: " + jdbcUrl);
			//System.out.println("Connecting to database: " + jdbcUrl2);
			
			Class.forName(driver);
			
			Connection myConn = DriverManager.getConnection(jdbcUrl, user, pass);
			//Connection myConn2 = DriverManager.getConnection(jdbcUrl2, user, pass);
			
			System.out.println("SUCCESS!!!");
			
			myConn.close();
			//myConn2.close();
			
		}
		catch (Exception exc) {
			exc.printStackTrace();
			throw new ServletException(exc);
		}
	
	
	}

}







