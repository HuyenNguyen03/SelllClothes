package com.ps20673.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ps20673.entity.Category;


public interface CategoryDAO extends JpaRepository<Category,String>{
}
