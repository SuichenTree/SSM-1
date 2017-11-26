package com.service.evalform;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.evalform.evalformdao;
import com.entity.evalform;
@Service
public class evalformServiceimpl implements evalformService{

	@Autowired
	private evalformdao evalfdao;
	
	@Override
	public int insertevalform(evalform evalfo) {
		
		return evalfdao.insertevalform(evalfo);
	}

	@Override
	public int deleteevalform(evalform evalfo) {
		
		return evalfdao.deleteevalform(evalfo);
	}

	@Override
	public int updateevalform(evalform evalfo) {
		
		return evalfdao.updateevalform(evalfo);
	}

	@Override
	public evalform selectevalform(evalform evalfo) {
		
		return evalfdao.selectevalform(evalfo);
	}

	@Override
	public List<evalform> selectAllevalform() {
		
		return evalfdao.selectAllevalform();
	}
	
}
