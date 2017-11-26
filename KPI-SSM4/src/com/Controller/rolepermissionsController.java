package com.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.rolepermissions;
import com.service.rolepermissions.rolepermissionsService;

@Controller
@RequestMapping("/rolepermissionsController")
public class rolepermissionsController {
	@Autowired
	private  rolepermissionsService roleperms;
	
	@RequestMapping("/insertrolepermissions")
	public ModelAndView insertrolepermissions(ModelAndView mv,rolepermissions roleperm){
		int a=roleperms.insertrolepermissions(roleperm);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	@RequestMapping("/deleterolepermissions")
	public ModelAndView deleterolepermissions(ModelAndView mv,rolepermissions roleperm){
		int a=roleperms.deleterolepermissions(roleperm);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	
	@RequestMapping("/updaterolepermissions")
	public ModelAndView updaterolepermissions(ModelAndView mv,rolepermissions roleperm){
		int a=roleperms.updaterolepermissions(roleperm);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	
	@RequestMapping("/selectrolepermissions")
	public ModelAndView selectrolepermissions(ModelAndView mv,rolepermissions roleperm){
		rolepermissions a=roleperms.selectrolepermissions(roleperm);
		if(a!=null){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	@RequestMapping("/selectAllrolepermissions")
	public ModelAndView selectAllrolepermissions(ModelAndView mv){
		List<rolepermissions> a=roleperms.selectAllrolepermissions();
		if(a!=null){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
}
