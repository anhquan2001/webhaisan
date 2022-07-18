package com.laptrinhjavaweb.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.laptrinhjavaweb.dao.ICategoryDAO;
import com.laptrinhjavaweb.models.CategoryModel;

public class CategoryDAO extends AbstractDAO<CategoryModel>  implements ICategoryDAO {

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
	public List<CategoryModel> findAll() {

		List<CategoryModel> results = new ArrayList<>();
		String sql = "SELECT * FROM category";
		// Open connection
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		ResultSet resultSet = null;
		if (conn != null) {
			try {
				pstmt = conn.prepareStatement(sql);
				resultSet = pstmt.executeQuery();
				while (resultSet.next()) {
					CategoryModel category = new CategoryModel();
					category.setId(resultSet.getLong("id"));
					category.setCode(resultSet.getString("code"));
					category.setName(resultSet.getString("name"));
					results.add(category);
				}
				return results;
			} catch (SQLException e) {

				e.printStackTrace();
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
		return null;
	}

}
