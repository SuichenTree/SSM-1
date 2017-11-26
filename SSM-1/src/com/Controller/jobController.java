package com.Controller;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;







import com.dept.deptdaoimpl;
import com.entity.job;
import com.job.jobdaoimpl;


@Controller
@RequestMapping("/jobController")
public class jobController {
		
	public static jobdaoimpl getjobdaoimpl(){
		ApplicationContext ap=new ClassPathXmlApplicationContext("applicationContext.xml");
		jobdaoimpl jimpl=(jobdaoimpl) ap.getBean("jobdaoimpl");
		return jimpl;
	}
	
	@RequestMapping(value="/backhead2")
	public ModelAndView backhead2(ModelAndView mv) throws Exception{
		
		deptdaoimpl dimpl=deptController.getdeptdaoimpl();
	
		mv.setViewName("head2");
		
		return mv;
		
			
	}
	
	@RequestMapping(value="/insert")
	public ModelAndView insert(job jb,ModelAndView mv) throws Exception{
		
		
		jobdaoimpl jimpl=jobController.getjobdaoimpl();
	
		int a=jimpl.insertjob(jb);
		
		mv.setViewName("jobmanager");
		mv.addObject("keyjb1",a);
		return mv;
		
	}
	
	
	@RequestMapping(value="/insertAndselectAll")
	public ModelAndView insertAndselectAll(job jb,ModelAndView mv) throws Exception{
		
		jobdaoimpl jimpl=jobController.getjobdaoimpl();
		
	
		int a=jimpl.insertjob(jb);
		List<job> list=jimpl.selectAlljob();
		
			mv.setViewName("jobmanager");
			mv.addObject("keyjb4",list);
			return mv;
		
	}
	
	@RequestMapping(value="/delete")
	public ModelAndView delete(job jb,ModelAndView mv) throws Exception{
		jobdaoimpl jimpl=jobController.getjobdaoimpl();
		
		
		int a=jimpl.deletejob(jb);
		
			mv.setViewName("jobmanager");
			mv.addObject("keyjb2",a);
			return mv;
		
	}
	
	@RequestMapping(value="/deleteAndselectAll")
	public ModelAndView deleteAndselectAll(job jb,ModelAndView mv) throws Exception{
		jobdaoimpl jimpl=jobController.getjobdaoimpl();
		
		
		int a=jimpl.deletejob(jb);
		List<job> list=jimpl.selectAlljob();
		
			mv.setViewName("jobmanager");
			mv.addObject("keyjb4",list);
			return mv;
		
	}
	
	
	@RequestMapping(value="/update")
	public ModelAndView update(job jb,ModelAndView mv) throws Exception{
		jobdaoimpl jimpl=jobController.getjobdaoimpl();
		
	
		int a=jimpl.updatejob(jb);
		
			mv.setViewName("jobmanager");
			mv.addObject("keyjb3",a);
			return mv;
		
	}
	
	@RequestMapping(value="/updateAndselectAll")
	public ModelAndView updateAndselectAll(job jb,ModelAndView mv) throws Exception{
		jobdaoimpl jimpl=jobController.getjobdaoimpl();
		
	
		int a=jimpl.updatejob(jb);
		List<job> list=jimpl.selectAlljob();
		
			mv.setViewName("jobmanager");
			mv.addObject("keyjb4",list);
			return mv;
		
	}
	
	
	@RequestMapping(value="/selectAll")
	public ModelAndView selectAll(ModelAndView mv) throws Exception{
		jobdaoimpl jimpl=jobController.getjobdaoimpl();
		
		
		List<job> list=jimpl.selectAlljob();
		
			mv.setViewName("jobmanager");
			mv.addObject("keyjb4",list);
			return mv;
		
	}
	
	
	@RequestMapping(value="/selectoneAndselectAll")
	public ModelAndView selectoneAndselectAll(job jb,ModelAndView mv) throws Exception{
		jobdaoimpl jimpl=jobController.getjobdaoimpl();
		
		if(jb==null){
			List<job> list=jimpl.selectAlljob();
			mv.addObject("keyjb4",list);
		}else{
			List<job> list=jimpl.dynamicselectjob(jb);
			mv.addObject("keyjb4",list);
		}
		mv.setViewName("jobmanager");
		return mv;
	}
	
	
	@RequestMapping(value="/dynamicselect")
	public ModelAndView dynamicselect(job jb,ModelAndView mv) throws Exception{
		jobdaoimpl jimpl=jobController.getjobdaoimpl();
		
		List<job> list=jimpl.dynamicselectjob(jb);
		
			mv.setViewName("jobmanager");
			mv.addObject("keyjb5",list);
			return mv;
		
	}
}
