package com.service.evalform;

import java.util.List;

import com.entity.evalform;

public interface evalformService {
	public int insertevalform(evalform evalfo);
	
	public int deleteevalform(evalform evalfo);
	
	public int updateevalform(evalform evalfo);
	
	public evalform selectevalform(evalform evalfo);
	 
	public List<evalform> selectAllevalform();
}
