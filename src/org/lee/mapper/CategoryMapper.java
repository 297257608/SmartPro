package org.lee.mapper;

import java.util.List;

import org.lee.model.Category;


public interface CategoryMapper {

	List<Category> getCategoryList();

	Category getCategoryByAlias(String aliasName);

}
