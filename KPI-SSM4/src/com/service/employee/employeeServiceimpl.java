package com.service.employee;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.employee.employeedao;
import com.entity.company;
import com.entity.employee;
@Service
public class employeeServiceimpl implements employeeService{

		
	@Autowired
	private employeedao empldao;
	
	@Override
	public int insertemployee(employee empl) {
		
		return empldao.insertemployee(empl);
	}

	@Override
	public int deleteemployee(employee empl) {
		
		return empldao.deleteemployee(empl);
	}

	@Override
	public int updateemployee(employee empl) {
		
		return empldao.updateemployee(empl);
	}

	@Override
	public employee selectemployee(employee empl) {
		
		return empldao.selectemployee(empl);
	}

	@Override
	public List<employee> selectAllemployee() {
		
		return empldao.selectAllemployee();
	}

	@Override
	public employee selectemployeeBywork_no(employee empl) {
		
		return empldao.selectemployeeBywork_no(empl);
	}

	@Override
	public int updateemployeeBywork_no(employee empl) {
		
		return empldao.updateemployeeBywork_no(empl);
	}

	

}
