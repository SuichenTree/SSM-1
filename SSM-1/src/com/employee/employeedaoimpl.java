package com.employee;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.entity.employee;



public class employeedaoimpl extends SqlSessionDaoSupport implements employeedao {

	@Override
	public int insertemployee(employee em) {
		System.out.println("insert");
		return this.getSqlSession().insert("com.employee.employeeMapper.insertemployee",em);
	}

	@Override
	public int deleteemployee(employee em) {
		System.out.println("deleteemployee");
		return this.getSqlSession().delete("com.employee.employeeMapper.deleteemployee",em);
	}

	@Override
	public int updateemployee(employee em) {
		System.out.println("updateemployee");
		return this.getSqlSession().update("com.employee.employeeMapper.updateemployee",em);

	}

	@Override
	public employee selectemployeeByuserid(employee em) {
		System.out.println("selectemployeeByuserid");
		return this.getSqlSession().selectOne("com.employee.employeeMapper.selectemployeeByuserid",em);

	}

	@Override
	public List<employee> selectAllemployee() {
		System.out.println("selectAllemployee");
		return this.getSqlSession().selectList("com.employee.employeeMapper.selectAllemployee");

	}

	@Override
	public List<employee> dynamicselectemployee(employee em) {
		System.out.println("dynamicselectemployee");
		return this.getSqlSession().selectList("com.employee.employeeMapper.dynamicselectemployee",em);

	}

}
