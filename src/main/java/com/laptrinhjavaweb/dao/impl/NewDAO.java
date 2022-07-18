package com.laptrinhjavaweb.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.laptrinhjavaweb.dao.INewDAO;
import com.laptrinhjavaweb.models.NewModel;

public class NewDAO extends AbstractDAO<NewModel> implements INewDAO {

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
	public List<NewModel> findByCategoryId(Long categoryId) {
		

		List<NewModel> results = new ArrayList<>();
		String sql = "SELECT * FROM news WHERE categoryid = ?";
		// Open connection
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		ResultSet resultSet = null;
		if (conn != null) {
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setLong(1, categoryId);
				resultSet = pstmt.executeQuery();
				while (resultSet.next()) {
					NewModel news = new NewModel();
					news.setId(resultSet.getLong("id"));
					news.setTitle(resultSet.getString("title"));		
					results.add(news);
				}
				return results;
			} catch (SQLException e) {

				
				return null;
			} finally {
				try {
					if (conn != null) {
						conn.close();
					}
					;
					if (pstmt != null) {
						pstmt.close();
					}
					;
					if (resultSet != null) {
						resultSet.close();
					}
				} catch (Exception e2) {
					return null;
				}
			}
		}
		return results;
		
	}
	
}
