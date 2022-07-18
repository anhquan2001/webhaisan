package com.laptrinhjavaweb.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

import com.laptrinhjavaweb.dao.GenericDAO;

public class AbstractDAO<T> implements GenericDAO<T>{
	public Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String URL = "jdbc:mysql://localhost:3306/quanoc";
			String USER = "root";
			String PASS = "123456";
			return DriverManager.getConnection(URL, USER, PASS);
		} catch (ClassNotFoundException | SQLException e) {
			return null;
		}
	}

	@Override
	public <T> List<T> query(String sql) {
		// TODO Auto-generated method stub
		return null;
	}


}
