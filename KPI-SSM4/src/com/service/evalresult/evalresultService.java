package com.service.evalresult;

import java.util.List;

import com.entity.evalresult;

public interface evalresultService {
	public int insertevalresult(evalresult evalresu);
	
	public int deleteevalresult(evalresult evalresu);
	
	public int updateevalresult(evalresult evalresu);
	
	public evalresult selectevalresult(evalresult evalresu);
	 
	public List<evalresult> selectAllevalresult();
}
