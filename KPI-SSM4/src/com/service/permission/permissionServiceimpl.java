package com.service.permission;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.permission.permissiondao;
import com.entity.permission;

@Service
public class permissionServiceimpl implements permissionService{
	@Autowired
	private permissiondao premdao;
	
	@Override
	public int insertpermission(permission perm) {
		
		return premdao.insertpermission(perm);
	}

	@Override
	public int deletepermission(permission perm) {
		
		return premdao.deletepermission(perm);
	}

	@Override
	public int updatepermission(permission perm) {
		
		return premdao.updatepermission(perm);
	}

	@Override
	public permission selectpermission(permission perm) {
		
		return premdao.selectpermission(perm);
	}

	@Override
	public List<permission> selectAllpermission() {
		
		return premdao.selectAllpermission();
	}

}
