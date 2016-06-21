package org.lee.service;

import java.util.HashMap;
import java.util.List;

import org.lee.mapper.IconMapper;
import org.lee.model.IconInfo;
import org.lee.util.Pager;
import org.lee.util.cache.EhcacheUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class IconService{
	
	@Autowired
	private IconMapper iconMapper;
	
	public List<IconInfo> getIconList(HashMap<String, Object> paramMap, Pager<IconInfo> pager) {
		List<IconInfo> iconList = null;
		int count = iconMapper.getIconCount(paramMap);
		pager.setTotalCount(count);
		if(count > 0){
			paramMap.put("start", pager.getStart());
			paramMap.put("limit", pager.getLimit());
			iconList = iconMapper.getIconList(paramMap);
		}
		return iconList;
	}
	
	public List<IconInfo> getAllIconList() {
		@SuppressWarnings("unchecked")
		List<IconInfo> iconlist = (List<IconInfo>)EhcacheUtil.get("defaultCache", "iconlist");
		if(iconlist == null)
		{
			iconlist = iconMapper.getAllIconList();
			EhcacheUtil.put("defaultCache", "iconlist",iconlist);
		}
		return iconlist;
	}
	
	
	public int addIcon(IconInfo icon) {
		return iconMapper.addIcon(icon);
	}
	
}
