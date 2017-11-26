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
import com.employee.employeedaoimpl;
import com.entity.employee;
import com.job.jobdaoimpl;


@Controller
@RequestMapping("/employeeController")
public class employeeController {
	
	public static employeedaoimpl getemployeedaoimpl(){
		ApplicationContext ap=new ClassPathXmlApplicationContext("applicationContext.xml");
		employeedaoimpl eimpl=(employeedaoimpl) ap.getBean("employeedaoimpl");
		return eimpl;
	}
	
	@RequestMapping(value="/backhead2")
	public ModelAndView backhead2(ModelAndView mv) throws Exception{
		
		deptdaoimpl dimpl=deptController.getdeptdaoimpl();
	
		mv.setViewName("head2");
		
		return mv;
		
			
	}
	@RequestMapping(value="/zhuce")
	public ModelAndView zhuce(ModelAndView mv,employee em) throws Exception{
		
		employeedaoimpl eimpl=employeeController.getemployeedaoimpl();
		
		employee e=(employee) eimpl.selectemployeeByuserid(em);
		
		if(e ==null){
			int a=eimpl.insertemployee(em);
			
			mv.setViewName("redirect:/index.jsp");
			mv.addObject("a", a);
			return mv;
			
			
		}else{
			mv.setViewName("redirect:/index.jsp");
			mv.addObject("a", e);
			return mv;
		}
		
		
	}
	
	@RequestMapping(value="/head2")
	public ModelAndView head2(){
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("head2");
		return mv;
		
		
	}
	
	@RequestMapping(value="/insert")
	public ModelAndView insert(employee em,ModelAndView mv) throws Exception{
		
		
		employeedaoimpl eimpl=employeeController.getemployeedaoimpl();
		
		
		System.out.println(em);
		int a=eimpl.insertemployee(em);
		
		mv.setViewName("employeemanager");
		mv.addObject("keyem1", a);
		return mv;
		
	}
	
	
	@RequestMapping(value="/insertAndselectAll")
	public ModelAndView insertAndselectAll(employee em,ModelAndView mv) throws Exception{
		employeedaoimpl eimpl=employeeController.getemployeedaoimpl();
		
		int a=eimpl.insertemployee(em);
		List<employee> list=eimpl.selectAllemployee();
		
		
			mv.setViewName("employeemanager");
			mv.addObject("keyem4", list);
			return mv;
		
	}
	
	@RequestMapping(value="/delete")
	public ModelAndView delete(employee em,ModelAndView mv) throws Exception{
		
		employeedaoimpl eimpl=employeeController.getemployeedaoimpl();
		int a=eimpl.deleteemployee(em);
		
			mv.setViewName("employeemanager");
			mv.addObject("keyem2", a);
			return mv;
		
	}
	
	
	
	@RequestMapping(value="/deleteAndselectAll")
	public ModelAndView deleteAndselectAll(employee em,ModelAndView mv) throws Exception{
		
		employeedaoimpl eimpl=employeeController.getemployeedaoimpl();
	
		int a=eimpl.deleteemployee(em);
		List<employee> list=eimpl.selectAllemployee();
		
			mv.setViewName("employeemanager");
			mv.addObject("keyem4", list);
			return mv;
		
	}
	@RequestMapping(value="/update")
	public ModelAndView update(employee em,ModelAndView mv) throws Exception{
		employeedaoimpl eimpl=employeeController.getemployeedaoimpl();
		
		
		int a=eimpl.updateemployee(em);
		
			mv.setViewName("employeemanager");
			mv.addObject("keyem3", a);
			return mv;
		
	}
	
	@RequestMapping(value="/updateAndselectAll")
	public ModelAndView updateAndselectAll(employee em,ModelAndView mv) throws Exception{
		employeedaoimpl eimpl=employeeController.getemployeedaoimpl();
		
		
		int a=eimpl.updateemployee(em);
		List<employee> list=eimpl.selectAllemployee();
		
			mv.setViewName("employeemanager");
			mv.addObject("keyem4", list);
			return mv;
		
	}
	
	@RequestMapping(value="/selectAll")
	public ModelAndView selectAll(ModelAndView mv) throws Exception{
		employeedaoimpl eimpl=employeeController.getemployeedaoimpl();
		
		
		List<employee> list=eimpl.selectAllemployee();
		
			mv.setViewName("employeemanager");
			mv.addObject("keyem4", list);
			return mv;
		
	}
	
	
	@RequestMapping(value="/selectoneAndselectAll")
	public ModelAndView selectoneAndselectAll(employee em,ModelAndView mv) throws Exception{
		employeedaoimpl eimpl=employeeController.getemployeedaoimpl();
		
		if(em==null){
			List<employee> list=eimpl.selectAllemployee();
			mv.addObject("keyem4", list);
		}else{
			List<employee> list=eimpl.dynamicselectemployee(em);
			mv.addObject("keyem4", list);
		}
		mv.setViewName("employeemanager");
		return mv;
	}
	
	
	@RequestMapping(value="/dynamicselect")
	public ModelAndView dynamicselect(employee em,ModelAndView mv) throws Exception{
		employeedaoimpl eimpl=employeeController.getemployeedaoimpl();
		List<employee> list=eimpl.dynamicselectemployee(em);
		
			mv.setViewName("employeemanager");
			mv.addObject("keyem5", list);
			return mv;
		
	}
}
