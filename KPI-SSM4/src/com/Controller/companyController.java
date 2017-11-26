package com.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.company;
import com.service.company.companyService;

@Controller
@RequestMapping("/companyController")
public class companyController {
	@Autowired
	private companyService comps;
	
	@RequestMapping("/insertcompany")
	public ModelAndView insertcompany(company comp,ModelAndView mv){
		int a=comps.insertcompany(comp);
		
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	
	@RequestMapping("/deletecompany")
	public ModelAndView deletecompany(company comp,ModelAndView mv){
		int a=comps.deletecompany(comp);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	
	@RequestMapping("/updatecompany")
	public ModelAndView updatecompany(company comp,ModelAndView mv){
		int a=comps.updatecompany(comp);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	@RequestMapping("/selectcompany")
	public ModelAndView selectcompany(company comp,ModelAndView mv){
		
		company a=comps.selectcompany(comp);
		
		if(a!=null){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	@RequestMapping("/selectAllcompany")
	public ModelAndView selectAllcompany(ModelAndView mv){
		List<company> a=comps.selectAllcompany();
		if(a!=null){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
}
