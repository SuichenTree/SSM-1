package com.service.evalrelation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.evalrelation.evalrelationdao;
import com.entity.evalrelation;

@Service
public class evalrelationServiceimpl implements evalrelationService{
	@Autowired
	private evalrelationdao evalreladao;
	
	
	@Override
	public int insertevalrelation(evalrelation evalrela) {
		
		return evalreladao.insertevalrelation(evalrela);
	}

	@Override
	public int deleteevalrelation(evalrelation evalrela) {
		
		return evalreladao.deleteevalrelation(evalrela);
	}

	@Override
	public int updateevalrelation(evalrelation evalrela) {
	
		return evalreladao.updateevalrelation(evalrela);
	}

	@Override
	public evalrelation selectevalrelation(evalrelation evalrela) {
		
		return evalreladao.selectevalrelation(evalrela);
	}

	@Override
	public List<evalrelation> selectAllevalrelation() {
		
		return evalreladao.selectAllevalrelation();
	}

}
