package com.laptrinhjavaweb.dao;

import java.util.List;

import com.laptrinhjavaweb.models.CategoryModel;

public interface ICategoryDAO  {
	List<CategoryModel> findAll();
}
