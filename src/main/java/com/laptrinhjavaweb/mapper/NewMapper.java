package com.laptrinhjavaweb.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.laptrinhjavaweb.models.NewModel;

public class NewMapper implements RowMapper<NewModel> {

	public NewModel mapRow(ResultSet resultSet) {
		try {
			NewModel news = new NewModel();
			news.setId(resultSet.getLong("id"));
			news.setTitle(resultSet.getString("title"));
			return news;
		} catch (SQLException e) {
			return null;
		}
	}
}
