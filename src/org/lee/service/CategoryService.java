package org.lee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import org.lee.mapper.CategoryMapper;
import org.lee.model.Category;
import org.lee.util.cache.EhcacheUtil;

@Service
@Transactional(isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class CategoryService{
	
	@Autowired
	private CategoryMapper categoryMapper;

	public List<Category> getCategoryList() {
		List<Category> categoryList = (List<Category>)EhcacheUtil.get("defaultCache", "categoryList");
		if(categoryList == null){
			categoryList = categoryMapper.getCategoryList();
			EhcacheUtil.put("defaultCache", "categoryList",categoryList);
		}
		return categoryList;
	}

	public Category getCategoryByAlias(String aliasName) {
		return categoryMapper.getCategoryByAlias(aliasName);
	}
	
}
