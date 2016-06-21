package org.lee.mapper;

import org.lee.model.Manager;

public interface AdminMapper {

	int validateManager(Manager manager);

	Manager getManagerInfo(Manager manager);
	
}
