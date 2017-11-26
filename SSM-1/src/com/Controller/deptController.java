package com.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dept.deptdaoimpl;
import com.entity.dept;
import com.entity.user;
import com.job.jobdaoimpl;




@Controller
@RequestMapping("/deptController")
public class deptController {
	public static deptdaoimpl getdeptdaoimpl(){
		ApplicationContext ap=new ClassPathXmlApplicationContext("applicationContext.xml");
		deptdaoimpl dimpl=(deptdaoimpl) ap.getBean("deptdaoimpl");
		return dimpl;
	}
	
	
	@RequestMapping(value="/backhead2")
	public ModelAndView backhead2(ModelAndView mv) throws Exception{
		
		deptdaoimpl dimpl=deptController.getdeptdaoimpl();
	
		mv.setViewName("head2");
		
		return mv;
		
			
	}
	
	
	@RequestMapping(value="/insert")
	public ModelAndView insert(dept de,ModelAndView mv) throws Exception{
		
		deptdaoimpl dimpl=deptController.getdeptdaoimpl();
	
		int a=dimpl.insertdept(de);
		
		mv.setViewName("deptmanager");
		mv.addObject("keyde1", a);
		return mv;
		
			
	}
	
	
	@RequestMapping(value="/insertAndselectAll")
	public ModelAndView insertAndselectAll(dept de,ModelAndView mv) throws Exception{
		deptdaoimpl dimpl=deptController.getdeptdaoimpl();
		
	
		int a=dimpl.insertdept(de);   //增加数据
		List<dept> list=dimpl.selectAlldept();   //查询全部数据
		mv.setViewName("deptmanager");
		mv.addObject("keyde4", list);
		return mv;
		
	}
	
	@RequestMapping(value="/delete")
	public ModelAndView delete(dept de,ModelAndView mv) throws Exception{
		
		deptdaoimpl dimpl=deptController.getdeptdaoimpl();
	
		int a=dimpl.deletedept(de);
		
		mv.setViewName("deptmanager");
		mv.addObject("keyde2", a);
		return mv;
		
	}
	
	@RequestMapping(value="/deleteAndselectAll")
	public ModelAndView deleteAndselectAll(dept de,ModelAndView mv) throws Exception{
		
		deptdaoimpl dimpl=deptController.getdeptdaoimpl();
	
		int a=dimpl.deletedept(de); // 删除数据
		List<dept> list=dimpl.selectAlldept();   //查询全部数据
			mv.setViewName("deptmanager");
			mv.addObject("keyde4", list);
			return mv;
		
	}
	
	@RequestMapping(value="/update")
	public ModelAndView update(dept de,ModelAndView mv) throws Exception{
		
		deptdaoimpl dimpl=deptController.getdeptdaoimpl();
	
		int a=dimpl.updatedept(de);
		
		mv.setViewName("deptmanager");
		mv.addObject("keyde3", a);
		return mv;
		
	}
	
	
	@RequestMapping(value="/updateAndselectAll")
	public ModelAndView updateAndselectAll(dept de,ModelAndView mv) throws Exception{
		
		deptdaoimpl dimpl=deptController.getdeptdaoimpl();
		int a=dimpl.updatedept(de); //更新数据
		List<dept> list=dimpl.selectAlldept();   //查询全部数据
		
		mv.setViewName("deptmanager");
		mv.addObject("keyde4", list);
		return mv;
		
	}
	@RequestMapping(value="/selectAll")
	public ModelAndView selectAll(ModelAndView mv) throws Exception{
		deptdaoimpl dimpl=deptController.getdeptdaoimpl();
	
		List<dept> list=dimpl.selectAlldept();
		
			mv.setViewName("deptmanager");
			mv.addObject("keyde4", list);
			return mv;
		
	}
	
	
	@RequestMapping(value="/selectoneAndselectAll")
	public ModelAndView selectoneAndselectAll(dept de,ModelAndView mv) throws Exception{
		deptdaoimpl dimpl=deptController.getdeptdaoimpl();
	
		if(de==null){
			List<dept> list=dimpl.selectAlldept();
			mv.addObject("keyde4", list);
			
		}else{
			List<dept> list=dimpl.dynamicselectdept(de);
			mv.addObject("keyde4", list);
		}
		
		mv.setViewName("deptmanager");
		return mv;
		
		
	}
	
	/*
	 * 用动态查询的方式进行单个查询
	 * */
	@RequestMapping(value="/dynamicselect")
	public ModelAndView dynamicselect(dept de,ModelAndView mv) throws Exception{
		
		deptdaoimpl dimpl=deptController.getdeptdaoimpl();
		
		List<dept> list=dimpl.dynamicselectdept(de);
		
			mv.setViewName("manager");
			mv.addObject("keyde5", list);
			return mv;
		
	}
	
}
