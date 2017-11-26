package com.dept;

import java.util.List;

import com.entity.dept;

public interface deptdao {
	public int insertdept(dept de);
	public int deletedept(dept de);
	public int updatedept(dept de);
	public dept selectdeptByid(dept de);
	public List<dept> selectAlldept();
	public List<dept> dynamicselectdept(dept de);
}
