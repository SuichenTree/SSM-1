package com.service.user;

import java.util.List;

import org.springframework.stereotype.Service;

import com.entity.user;


public interface userService {
	
	public int insertuser(user us);
	
	
	public int deleteuser(user us);
	
	public int updateuser(user us);
	
	public user selectuser(user us);
	 
	public List<user> selectAlluser();
}
