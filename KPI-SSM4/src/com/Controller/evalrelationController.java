package com.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.*;
import com.service.evalrelation.evalrelationService;

@Controller
@RequestMapping("/evalrelationController")
public class evalrelationController {
	
	@Autowired
	private evalrelationService evalrelas;
	
	@RequestMapping("/insertevalrelation")
	public ModelAndView insertevalrelation(evalrelation evalrela,ModelAndView mv){
		int a=evalrelas.insertevalrelation(evalrela);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	@RequestMapping("/deleteevalrelation")
	public ModelAndView deleteevalrelation(evalrelation evalrela,ModelAndView mv){
		int a=evalrelas.deleteevalrelation(evalrela);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	@RequestMapping("/updateevalrelation")
	public ModelAndView updateevalrelation(evalrelation evalrela,ModelAndView mv){
		int a=evalrelas.updateevalrelation(evalrela);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	@RequestMapping("/selectevalrelation")
	public ModelAndView selectevalrelation(evalrelation evalrela,ModelAndView mv){
		evalrelation a=evalrelas.selectevalrelation(evalrela);
		if(a!=null){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	@RequestMapping("/selectAllevalrelation")
	public ModelAndView selectAllevalrelation(ModelAndView mv){
		List<evalrelation> a=evalrelas.selectAllevalrelation();
		if(a!=null){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	

}
