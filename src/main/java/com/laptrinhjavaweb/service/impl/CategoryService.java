package com.laptrinhjavaweb.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.laptrinhjavaweb.dao.ICategoryDAO;
import com.laptrinhjavaweb.models.CategoryModel;
import com.laptrinhjavaweb.service.ICategoryService;

public class CategoryService implements ICategoryService {
	/*
	 * private ICategoryDAO categoryDao;
	 * 
	 * public CategoryService() { categoryDao = new CategoryDAO(); }
	 */
	@Inject
	private ICategoryDAO categoryDao;
	@Override
	public List<CategoryModel> findAll() {

		return categoryDao.findAll();
	}

}
