package com.laptrinhjavaweb.dao;

import java.util.List;

import com.laptrinhjavaweb.models.NewModel;

public interface INewDAO  {
	List<NewModel> findByCategoryId(Long categoryId);
}
