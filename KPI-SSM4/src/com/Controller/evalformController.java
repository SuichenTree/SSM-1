package com.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.entity.evalform;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.service.evalform.evalformService;

@Controller
@RequestMapping("/evalformController")
public class evalformController {
	
	@Autowired
	private evalformService evalfs;
	
	@ResponseBody
	@RequestMapping(value="/insertevalform",produces="text/html;charset=UTF-8")
	public String  insertevalform(evalform evalf) throws JsonProcessingException{
		int a=evalfs.insertevalform(evalf);
		
		
		ObjectMapper objectmapper=new ObjectMapper();
		String mapJakcson=objectmapper.writeValueAsString(evalf);
		
		
		return mapJakcson;
		
		
		
	}
	
	
	@RequestMapping("/deleteevalform")
	public ModelAndView deleteevalform(evalform evalf,ModelAndView mv){
		int a=evalfs.deleteevalform(evalf);
		
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		
		return mv;
	}
	
	@RequestMapping("/updateevalform")
	public ModelAndView updateevalform(evalform evalf,ModelAndView mv){
		int a=evalfs.updateevalform(evalf);
		
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		
		return mv;
	}
	
	@RequestMapping("/selectevalform")
	public ModelAndView selectevalform(evalform evalf,ModelAndView mv){
		evalform a=evalfs.selectevalform(evalf);
		
		if(a!=null){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		
		return mv;
	}
	
	
	@RequestMapping("/selectAllevalform")
	public ModelAndView selectAllevalform(ModelAndView mv){
		List<evalform> a=evalfs.selectAllevalform();
		
		if(a!=null){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		
		return mv;
	}
	

}
