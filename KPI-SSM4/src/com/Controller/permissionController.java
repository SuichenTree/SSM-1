package com.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.permission;
import com.service.permission.permissionService;

@Controller
@RequestMapping("/permissionController")
public class permissionController {
	@Autowired
	private permissionService prems;
	
	@RequestMapping("/insertpermission")
	public ModelAndView insertpermission(ModelAndView mv,permission prem){
		int a=prems.insertpermission(prem);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	@RequestMapping("/deletepermission")
	public ModelAndView deletepermission(ModelAndView mv,permission prem){
		int a=prems.deletepermission(prem);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	@RequestMapping("/updatepermission")
	public ModelAndView updatepermission(ModelAndView mv,permission prem){
		int a=prems.updatepermission(prem);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	@RequestMapping("/selectpermission")
	public ModelAndView selectpermission(ModelAndView mv,permission prem){
		permission a=prems.selectpermission(prem);
		if(a!=null){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	@RequestMapping("/selectAllpermission")
	public ModelAndView selectAllpermission(ModelAndView mv){
		List<permission> a=prems.selectAllpermission();
		if(a!=null){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
}
