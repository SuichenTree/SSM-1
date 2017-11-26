package com.dao.permission;

import java.util.List;

import com.entity.permission;

public interface permissiondao {
	public int insertpermission(permission perm);
	
	public int deletepermission(permission perm);
	
	public int updatepermission(permission perm);
	
	public permission selectpermission(permission perm);
	 
	public List<permission> selectAllpermission();
}
