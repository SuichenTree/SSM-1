package com.service.company;

import java.util.List;





import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.company.companydao;
import com.entity.company;

@Service       // @Service 与 @Autowired 一起使用
public class companyServiceimpl implements companyService {

	@Autowired
	private companydao compdao;
	
	
	@Override
	public int insertcompany(company comp) {
		
		return compdao.insertcompany(comp);
	}

	@Override
	public int deletecompany(company comp) {
		
		return compdao.deletecompany(comp);
	}

	@Override
	public int updatecompany(company comp) {
		
		return compdao.updatecompany(comp);
	}

	@Override
	public company selectcompany(company comp) {
		
		return compdao.selectcompany(comp);
	}

	@Override
	public List<company> selectAllcompany() {
	
		return compdao.selectAllcompany();
	}

}
