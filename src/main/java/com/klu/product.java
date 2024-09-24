package com.klu;
import java.sql.*;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public  class product extends GenericServlet{

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=req.getParameter("pname");
		int pprice=Integer.parseInt(req.getParameter("pprice"));
		String pquantity=req.getParameter("pquantity");
		try {
			PrintWriter pw = res.getWriter();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "Yash@9966");
			Statement stmt = con.createStatement();
			PreparedStatement pq = con.prepareStatement("insert into products values(?,?,?)");
			pq.setString(1, name);
			pq.setInt(2, pprice);
			pq.setString(3, pquantity);
			pq.execute();	
			req.getRequestDispatcher("receipt.jsp").forward(req, res);
			 
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}
    // JDBC URL, username, and password of the MySQL database
}

