package com.service.evalproject;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.evalproject.evalprojectdao;
import com.entity.evalproject;

@Service
public class evalprojectServiceimpl implements evalprojectService{

	@Autowired
	private evalprojectdao evalprodao;
	
	@Override
	public int insertevalproject(evalproject evalpro) {
		
		return evalprodao.insertevalproject(evalpro);
	}

	@Override
	public int deleteevalproject(evalproject evalpro) {
		
		return evalprodao.deleteevalproject(evalpro);
	}

	@Override
	public int updateevalproject(evalproject evalpro) {
		
		return evalprodao.updateevalproject(evalpro);
	}

	@Override
	public evalproject selectevalproject(evalproject evalpro) {
		
		return evalprodao.selectevalproject(evalpro);
	}

	@Override
	public List<evalproject> selectAllevalproject() {
		
		return evalprodao.selectAllevalproject();
	}

}
