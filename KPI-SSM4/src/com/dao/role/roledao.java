package com.dao.role;

import java.util.List;


import com.entity.role;

public interface roledao {
	public int insertrole(role perm);
	
	public int deleterole(role perm);
	
	public int updaterole(role perm);
	
	public role selectrole(role perm);
	 
	public List<role> selectAllrole();
}
