package com.service.rolepermissions;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.rolepermissions.rolepermissionsdao;
import com.entity.rolepermissions;

@Service
public class rolepermissionsServiceimpl implements rolepermissionsService {
	@Autowired
	private rolepermissionsdao rolepermdao;
	
	@Override
	public int insertrolepermissions(rolepermissions roleperm) {
		
		return rolepermdao.insertrolepermissions(roleperm);
	}

	@Override
	public int deleterolepermissions(rolepermissions roleperm) {
		
		return rolepermdao.deleterolepermissions(roleperm);
	}

	@Override
	public int updaterolepermissions(rolepermissions roleperm) {
		
		return rolepermdao.updaterolepermissions(roleperm);
	}

	@Override
	public rolepermissions selectrolepermissions(rolepermissions roleperm) {
		
		return rolepermdao.selectrolepermissions(roleperm);
	}

	@Override
	public List<rolepermissions> selectAllrolepermissions() {
		
		return rolepermdao.selectAllrolepermissions();
	}

}
