package org.lee.mapper;

import java.util.HashMap;
import java.util.List;

import org.lee.model.IconInfo;


public interface IconMapper {
	
	int getIconCount(HashMap<String, Object> paramMap);
	
	List<IconInfo> getIconList(HashMap<String, Object> paramMap);
	
	List<IconInfo> getAllIconList();

	int addIcon(IconInfo icon);

	
}
