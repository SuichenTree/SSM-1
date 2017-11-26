package com.dao.evalform;

import java.util.List;

import com.entity.*;

public interface evalformdao {
	public int insertevalform(evalform evalfo);
	
	public int deleteevalform(evalform evalfo);
	
	public int updateevalform(evalform evalfo);
	
	public evalform selectevalform(evalform evalfo);
	 
	public List<evalform> selectAllevalform();
}
