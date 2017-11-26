package com.user;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.entity.user;

public class userdaoimpl extends SqlSessionDaoSupport implements userdao {

	@Override
	public int insertuser(user us) {
		System.out.println("插入");
		return this.getSqlSession().insert("com.user.userMapper.insertuser", us);
		
		
	}

	@Override
	public List<user> selectAlluser() {
		System.out.println("selectall");
		return this.getSqlSession().selectList("com.user.userMapper.selectAlluser");
	}

	@Override
	public int deleteuser(user us) {
		System.out.println("delete");
		return this.getSqlSession().delete("com.user.userMapper.deleteuser",us);
		
	}

	@Override
	public int updateuser(user us) {
		System.out.println("update");
		return this.getSqlSession().update("com.user.userMapper.updateuser", us);
		
	}

	@Override
	public user selectuserByid(user us) {
		System.out.println("selectuserByid");
		return this.getSqlSession().selectOne("com.user.userMapper.selectuserByid", us);
	}

	@Override
	public user selectuserByname(user us) {
		System.out.println("selectuserByname");
		return this.getSqlSession().selectOne("com.user.userMapper.selectuserByname", us);
	}

	@Override
	public List<user> dynamicselectuser(user us) {
		System.out.println("dynamicselectuser");
		return this.getSqlSession().selectList("com.user.userMapper.dynamicselectuser", us);
	
	}

}
