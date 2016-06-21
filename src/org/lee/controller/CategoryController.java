package org.lee.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import org.lee.model.Category;
import org.lee.model.Friend;
import org.lee.model.Tag;
import org.lee.service.ArticleService;
import org.lee.service.CategoryService;
import org.lee.service.FriendService;
import org.lee.service.TagService;

@Controller
public class CategoryController{
	
	@Autowired
	private ArticleService articleService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private TagService tagService;
	
	@Autowired
	private FriendService friendService;
	
	/**
	 * 获取文章分页列表
	 */
	@RequestMapping(value = "/category/{aliasName}")
	public String loadCategoryPage(HttpSession session,ModelMap map,@PathVariable String aliasName,String articleId,String categoryId) throws UnsupportedEncodingException {
		aliasName = URLDecoder.decode(aliasName, "utf-8");
		Category category = categoryService.getCategoryByAlias(aliasName);
		
		// 栏目列表
		List<Category> categoryList = categoryService.getCategoryList();;
		
		// 标签列表
		List<Tag> tagList = tagService.getTagList();
		
		// 合作伙伴列表
		List<Friend> friendList = friendService.getAllFriendList();;
		
		map.put("categoryList", categoryList);
		map.put("ca", category);
		map.put("tagList", tagList);
		map.put("friendList", friendList);
		
		return "/blog/category/article_pager";
	}
	
}
