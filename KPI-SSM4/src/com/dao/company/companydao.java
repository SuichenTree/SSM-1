package com.dao.company;

import java.util.List;

import com.entity.*;

public interface companydao {
	public int insertcompany(company comp);
	
	public int deletecompany(company comp);
	
	public int updatecompany(company comp);
	
	public company selectcompany(company comp);
	 
	public List<company> selectAllcompany();
}
