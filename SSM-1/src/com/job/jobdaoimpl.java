package com.job;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.entity.job;



public class jobdaoimpl  extends SqlSessionDaoSupport implements jobdao {

	@Override
	public int insertjob(job jb) {
		System.out.println("insert");
		return this.getSqlSession().insert("com.job.jobMapper.insertjob",jb);
	}

	@Override
	public List<job> selectAlljob() {
		System.out.println("selectall");
		return this.getSqlSession().selectList("com.job.jobMapper.selectAlljob");
	}

	@Override
	public int deletejob(job jb) {
		System.out.println("delete");
		return this.getSqlSession().delete("com.job.jobMapper.deletejob",jb);
	}

	@Override
	public int updatejob(job jb) {
		System.out.println("updatejob");
		return this.getSqlSession().update("com.job.jobMapper.updatejob",jb);
	}

	@Override
	public job selectjobByid(job jb) {
		System.out.println("selectjobByid");
		return this.getSqlSession().selectOne("com.job.jobMapper.selectjobByid",jb);
	}

	@Override
	public List<job> dynamicselectjob(job jb) {
		System.out.println("dynamicselectjob");
		return this.getSqlSession().selectList("com.job.jobMapper.dynamicselectjob",jb);
	}

}
