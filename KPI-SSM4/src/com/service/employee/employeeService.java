package com.service.employee;

import java.util.List;

import com.entity.company;
import com.entity.employee;

public interface employeeService {
	public int insertemployee(employee empl);
	
	public int deleteemployee(employee empl);
	
	public int updateemployee(employee empl);
	
	public employee selectemployee(employee empl);
	 
	public List<employee> selectAllemployee();

	public employee selectemployeeBywork_no(employee empl);

	public int updateemployeeBywork_no(employee empl);

	
}
