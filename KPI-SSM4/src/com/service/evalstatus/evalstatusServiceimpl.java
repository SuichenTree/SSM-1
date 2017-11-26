package com.service.evalstatus;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.evalstatus.evalstatusdao;
import com.entity.evalstatus;
@Service
public class evalstatusServiceimpl implements evalstatusService {

	@Autowired
	private evalstatusdao evalstatudao;
	
	@Override
	public int insertevalstatus(evalstatus evalstat) {
		
		return evalstatudao.insertevalstatus(evalstat);
	}

	@Override
	public int deleteevalstatus(evalstatus evalstat) {
		
		return evalstatudao.deleteevalstatus(evalstat);
	}

	@Override
	public int updateevalstatus(evalstatus evalstat) {
		
		return evalstatudao.updateevalstatus(evalstat);
	}

	@Override
	public evalstatus selectevalstatus(evalstatus evalstat) {
	
		return evalstatudao.selectevalstatus(evalstat);
	}

	@Override
	public List<evalstatus> selectAllevalstatus() {
		
		return evalstatudao.selectAllevalstatus();
	}

}
