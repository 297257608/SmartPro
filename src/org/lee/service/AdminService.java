package org.lee.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import org.lee.mapper.AdminMapper;
import org.lee.model.Manager;
import org.lee.util.MD5;

@Service
@Transactional(isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class AdminService{
	
	@Autowired
	private AdminMapper adminMapper;
	
	public boolean validateManager(Manager manager) {
		if(null !=  manager.getPassword() && !manager.getPassword().equals(""))
		{
			manager.setPassword(MD5.digest(manager.getPassword()));
		}
		return adminMapper.validateManager(manager) > 0 ? true : false;
	}
	
	public Manager getManagerInfo(Manager manager) {
		return adminMapper.getManagerInfo(manager);
	}
	
}
