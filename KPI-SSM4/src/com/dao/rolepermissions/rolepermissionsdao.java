package com.dao.rolepermissions;

import java.util.List;


import com.entity.rolepermissions;

public interface rolepermissionsdao {
	public int insertrolepermissions(rolepermissions roleperm);
	
	public int deleterolepermissions(rolepermissions roleperm);
	
	public int updaterolepermissions(rolepermissions roleperm);
	
	public rolepermissions selectrolepermissions(rolepermissions roleperm);
	 
	public List<rolepermissions> selectAllrolepermissions();
}
