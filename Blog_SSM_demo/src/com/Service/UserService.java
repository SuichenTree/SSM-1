package com.Service;

import java.util.List;

import com.Entity.User;

public interface UserService {
	
	public Boolean login(User user);
	
	public Boolean Register(User user);
	
	public List<User> selectAll();
	
	public User select(User user);
	
	public int delete(User user);
	
	public int update(User user);
	
	public int insert(User user);
	
	public List<User> selectLikeUser(User user);

}
