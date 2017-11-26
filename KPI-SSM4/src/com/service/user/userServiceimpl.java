package com.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.user.userdao;
import com.entity.user;

@Service  				// @Service 与 @Autowired 一起使用
public class userServiceimpl implements userService{
	@Autowired       //注入dao层 接口
	private userdao usd;

	@Override
	public int insertuser(user us) {
		
		return usd.insertuser(us);
	}

	@Override
	public int deleteuser(user us) {
		
		return usd.deleteuser(us);
	}

	@Override
	public int updateuser(user us) {
		
		return usd.updateuser(us);
	}

	@Override
	public user selectuser(user us) {
		
		return usd.selectuser(us);
	}

	@Override
	public List<user> selectAlluser() {
		
		return usd.selectAlluser();
	}
	
	
}
