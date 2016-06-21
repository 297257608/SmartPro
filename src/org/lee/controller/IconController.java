package org.lee.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import org.lee.model.Friend;
import org.lee.model.IconInfo;
import org.lee.model.Manager;
import org.lee.model.Result;
import org.lee.service.FriendService;
import org.lee.service.IconService;
import org.lee.util.Constant;
import org.lee.util.JsonUtil;
import org.lee.util.Pager;
import org.lee.util.StringUtils;

@Controller
public class IconController{
	
	@Autowired
	private IconService iconService;
	
	/**
	 * 获取图标分页列表
	 */
	@RequestMapping(value = "/admin/icon/load")
	public String list(HttpSession session,ModelMap map) {

		List<IconInfo> iconList = iconService.getAllIconList();
		map.put("iconList", iconList);
		return "/admin/icon/icon_pager_list";
	}

	
}
