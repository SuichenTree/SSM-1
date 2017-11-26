package com.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dept.deptdaoimpl;

@Controller
@RequestMapping("/managerController")
public class managerController {
	
	@RequestMapping(value="/usermanager")
	public ModelAndView usermanager(){
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("usermanager");
		return mv;
	}
	
	@RequestMapping(value="/backhead1")
	public ModelAndView backhead2(ModelAndView mv) throws Exception{
		
		deptdaoimpl dimpl=deptController.getdeptdaoimpl();
	
		mv.setViewName("head");
		
		return mv;
		
			
	}
	
	
	@RequestMapping(value="/deptmanager")
	public ModelAndView deptmanager(){
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("deptmanager");
		return mv;
	}
	
	@RequestMapping(value="/employeemanager")
	public ModelAndView employeemanager(){
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("employeemanager");
		return mv;
	}
	
	@RequestMapping(value="/jobmanager")
	public ModelAndView jobmanager(){
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("jobmanager");
		return mv;
	}
}
