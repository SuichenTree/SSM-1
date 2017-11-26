package com.service.role;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.role.roledao;
import com.entity.role;
@Service
public class roleServiceimpl implements roleService{
	@Autowired
	private roledao roled;
	
	@Override
	public int insertrole(role perm) {
		
		return roled.insertrole(perm);
	}

	@Override
	public int deleterole(role perm) {
		
		return roled.deleterole(perm);
	}

	@Override
	public int updaterole(role perm) {
		
		return roled.updaterole(perm);
	}

	@Override
	public role selectrole(role perm) {
		
		return roled.selectrole(perm);
	}

	@Override
	public List<role> selectAllrole() {
		
		return roled.selectAllrole();
	}

}
