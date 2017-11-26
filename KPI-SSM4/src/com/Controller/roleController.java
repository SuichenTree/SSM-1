package com.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.role;
import com.service.role.roleService;

@Controller
@RequestMapping("/roleController")
public class roleController {
	@Autowired
	private roleService rolese;
	
	@RequestMapping("/insertrole")
	public ModelAndView insertrole(ModelAndView mv,role ro){
		int a=rolese.insertrole(ro);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	@RequestMapping("/deleterole")
	public ModelAndView deleterole(ModelAndView mv,role ro){
		int a=rolese.deleterole(ro);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	@RequestMapping("/updaterole")
	public ModelAndView updaterole(ModelAndView mv,role ro){
		int a=rolese.updaterole(ro);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	@RequestMapping("/selectrole")
	public ModelAndView selectrole(ModelAndView mv,role ro){
		role a=rolese.selectrole(ro);
		if(a!=null){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	@RequestMapping("/selectAllrole")
	public ModelAndView selectAllrole(ModelAndView mv){
		List<role> a=rolese.selectAllrole();
		if(a!=null){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
}
