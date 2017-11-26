package com.service.evalrelation;

import java.util.List;

import com.entity.evalrelation;

public interface evalrelationService {
	public int insertevalrelation(evalrelation evalrela);
	
	public int deleteevalrelation(evalrelation evalrela);
	
	public int updateevalrelation(evalrelation evalrela);
	
	public evalrelation selectevalrelation(evalrelation evalrela);
	 
	public List<evalrelation> selectAllevalrelation();
}
