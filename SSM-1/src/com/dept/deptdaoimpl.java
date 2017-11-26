package com.dept;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.entity.dept;

public class deptdaoimpl  extends SqlSessionDaoSupport implements deptdao{

	@Override
	public int insertdept(dept de) {
		System.out.println("insert");
		return this.getSqlSession().insert("com.dept.deptMapper.insertdept",de);
	}

	@Override
	public int deletedept(dept de) {
		System.out.println("deletedept");
		return this.getSqlSession().delete("com.dept.deptMapper.deletedept",de);
	}

	@Override
	public int updatedept(dept de) {
		System.out.println("updatedept");
		return this.getSqlSession().update("com.dept.deptMapper.updatedept",de);
	}

	@Override
	public dept selectdeptByid(dept de) {
		System.out.println("selectdeptByid");
		return this.getSqlSession().selectOne("com.dept.deptMapper.selectdeptByid",de);
	}

	@Override
	public List<dept> selectAlldept() {
		System.out.println("selectAlldept");
		return this.getSqlSession().selectList("com.dept.deptMapper.selectAlldept");
	}

	@Override
	public List<dept> dynamicselectdept(dept de) {
		System.out.println("dynamicselectdept");
		return this.getSqlSession().selectList("com.dept.deptMapper.dynamicselectdept",de);
	}

}
