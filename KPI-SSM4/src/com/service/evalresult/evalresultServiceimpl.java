package com.service.evalresult;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.evalresult.evalresultdao;
import com.entity.evalresult;
@Service
public class evalresultServiceimpl implements evalresultService {
	
	@Autowired
	private evalresultdao evalresudao;
	
	@Override
	public int insertevalresult(evalresult evalresu) {
		
		return evalresudao.insertevalresult(evalresu);
	}

	@Override
	public int deleteevalresult(evalresult evalresu) {
		
		return evalresudao.deleteevalresult(evalresu);
	}

	@Override
	public int updateevalresult(evalresult evalresu) {
		
		return evalresudao.updateevalresult(evalresu);
	}

	@Override
	public evalresult selectevalresult(evalresult evalresu) {
		
		return evalresudao.selectevalresult(evalresu);
	}

	@Override
	public List<evalresult> selectAllevalresult() {
	
		return evalresudao.selectAllevalresult();
	}

}
