package com.job;

import java.util.List;

import com.entity.job;



public interface jobdao {
	public int insertjob(job jb);
	
	public List<job> selectAlljob();
	
	public int deletejob(job jb);
	
	public int updatejob(job jb);
	
	public job selectjobByid(job jb);
	
	public List<job> dynamicselectjob(job jb);

}
