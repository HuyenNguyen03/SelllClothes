package com.ps20673.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.ps20673.entity.Category;
import com.ps20673.dao.CategoryDAO;

@Service
public class CategoryService {
	@Autowired
	private CategoryDAO repo;
	
	public Page<Category> listAll(int pageNum, String sortField, String sortDir) {
		
		Pageable pageable = PageRequest.of(pageNum - 1, 5, 
				sortDir.equals("asc") ? Sort.by(sortField).ascending()
									  : Sort.by(sortField).descending()
		);
		
		return repo.findAll(pageable);
	}
	
	public void save(Category category) {
		repo.save(category);
	}
	
	public Category get(String id) {
		return repo.findById(id).get();
	}
	
	public void delete(String id) {
		repo.deleteById(id);
	}
}
