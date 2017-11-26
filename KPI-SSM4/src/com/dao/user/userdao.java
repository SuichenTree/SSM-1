package com.dao.user;

import java.util.List;

import org.apache.ibatis.annotations.*;

import com.entity.user;

public interface userdao {
	public int insertuser(user us);
	
	public int deleteuser(user us);
	
	public int updateuser(user us);
	
	public user selectuser(user us);
	 
	public List<user> selectAlluser();
	
	
	
}
