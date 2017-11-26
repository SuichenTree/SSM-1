package com.user;

import java.util.List;

import com.entity.user;

public interface userdao {
	
	public int insertuser(user us);
	
	public List<user> selectAlluser();
	
	public int deleteuser(user us);
	
	public int updateuser(user us);
	
	public user selectuserByid(user us);
	public user selectuserByname(user us);
	public List<user> dynamicselectuser(user us);
	
	
}
