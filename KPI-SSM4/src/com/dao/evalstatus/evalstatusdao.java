package com.dao.evalstatus;

import java.util.List;

import com.entity.evalstatus;

public interface evalstatusdao {
	public int insertevalstatus(evalstatus evalstat);
	
	public int deleteevalstatus(evalstatus evalstat);
	
	public int updateevalstatus(evalstatus evalstat);
	
	public evalstatus selectevalstatus(evalstatus evalstat);
	 
	public List<evalstatus> selectAllevalstatus();
}
