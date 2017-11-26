package com.service.evalproject;

import java.util.List;


import com.entity.evalproject;

public interface evalprojectService {
	public int insertevalproject(evalproject evalpro);
	
	public int deleteevalproject(evalproject evalpro);
	
	public int updateevalproject(evalproject evalpro);
	
	public evalproject selectevalproject(evalproject evalpro);
	 
	public List<evalproject> selectAllevalproject();
	
	
}
