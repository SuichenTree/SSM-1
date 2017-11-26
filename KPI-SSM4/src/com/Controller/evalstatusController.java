package com.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.evalstatus;
import com.service.evalstatus.evalstatusService;

@Controller
@RequestMapping("/evalstatusController")
public class evalstatusController {
	@Autowired
	private evalstatusService evalstatuse;
	
	@RequestMapping("/insertevalstatus")
	public ModelAndView insertevalstatus(ModelAndView mv,evalstatus evalstat){
		int a=evalstatuse.insertevalstatus(evalstat);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	
	@RequestMapping("/deleteevalstatus")
	public ModelAndView deleteevalstatus(ModelAndView mv,evalstatus evalstat){
		int a=evalstatuse.deleteevalstatus(evalstat);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	@RequestMapping("/updateevalstatus")
	public ModelAndView updateevalstatus(ModelAndView mv,evalstatus evalstat){
		int a=evalstatuse.updateevalstatus(evalstat);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	
	@RequestMapping("/selectevalstatus")
	public ModelAndView selectevalstatus(ModelAndView mv,evalstatus evalstat){
		evalstatus a=evalstatuse.selectevalstatus(evalstat);
		if(a!=null){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	
	@RequestMapping("/selectAllevalstatus")
	public ModelAndView selectAllevalstatus(ModelAndView mv){
		List<evalstatus> a=evalstatuse.selectAllevalstatus();
		if(a!=null){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
}
