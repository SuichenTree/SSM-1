package com.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.evalresult;
import com.service.evalresult.evalresultService;

@Controller
@RequestMapping("/evalresultController")
public class evalresultController {
	
	@Autowired
	private evalresultService evalresus;
	
	@RequestMapping("/insertevalresult")
	public ModelAndView insertevalresult(ModelAndView mv,evalresult evalresu){
		
		int a=evalresus.insertevalresult(evalresu);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		
		return mv;
	}
	
	
	@RequestMapping("/deleteevalresult")
	public ModelAndView deleteevalresult(ModelAndView mv,evalresult evalresu){
		
		int a=evalresus.deleteevalresult(evalresu);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		
		return mv;
	}
	
	
	@RequestMapping("/updateevalresult")
	public ModelAndView updateevalresult(ModelAndView mv,evalresult evalresu){
		
		int a=evalresus.updateevalresult(evalresu);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		
		return mv;
	}
	
	
	@RequestMapping("/selectevalresult")
	public ModelAndView selectevalresult(ModelAndView mv,evalresult evalresu){
		
		evalresult a=evalresus.selectevalresult(evalresu);
		if(a!=null){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		
		return mv;
	}
	
	@RequestMapping("/selectAllevalresult")
	public ModelAndView selectAllevalresult(ModelAndView mv){
		
		List<evalresult> a=evalresus.selectAllevalresult();
		if(a!=null){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		
		return mv;
	}
}
