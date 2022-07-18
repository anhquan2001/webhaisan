package com.laptrinhjavaweb.service;

import java.util.List;

import com.laptrinhjavaweb.models.NewModel;

public interface INewService {
	List<NewModel> findByCategoryId(Long categoryId);
}
