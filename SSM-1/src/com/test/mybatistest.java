package com.test;

import java.io.IOException;
import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.dept.deptdaoimpl;
import com.entity.dept;
import com.entity.user;
import com.user.userdaoimpl;

public class mybatistest {
	public static void main(String[] args) {
		ApplicationContext ap=new ClassPathXmlApplicationContext("applicationContext.xml");
		deptdaoimpl dm=(deptdaoimpl) ap.getBean("deptdaoimpl");
		dept de=new dept(22,"sad");
		dm.insertdept(de);
	}
	
	

}
