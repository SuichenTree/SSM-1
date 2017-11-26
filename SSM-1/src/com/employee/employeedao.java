package com.employee;

import java.util.List;

import com.entity.employee;



public interface employeedao {
	public int insertemployee(employee em);
	public int deleteemployee(employee em);
	public int updateemployee(employee em);
	public employee selectemployeeByuserid(employee em);
	public List<employee> selectAllemployee();
	public List<employee> dynamicselectemployee(employee em);
}
