package com.dao.evalresult;

import java.util.List;

import com.entity.*;

public interface evalresultdao {
	public int insertevalresult(evalresult evalresu);
	
	public int deleteevalresult(evalresult evalresu);
	
	public int updateevalresult(evalresult evalresu);
	
	public evalresult selectevalresult(evalresult evalresu);
	 
	public List<evalresult> selectAllevalresult();
}
