package com.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.entity.user;
import com.service.user.userService;

@Controller
@RequestMapping("/userController")
public class userController {
	
	@Autowired   //注入service 层的接口
	private userService users;
	
	@RequestMapping(value="/login")
	public ModelAndView login(user us,ModelAndView mv){
		System.out.println("login");
		user a=users.selectuser(us);
		
		if(a!=null&&a.getUserPassword().equals(us.getUserPassword())){
			mv.setViewName("redirect:/index.jsp");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	
	@RequestMapping(value="/insertuser")
	public ModelAndView insertuser(user us,ModelAndView mv){
		int a=users.insertuser(us);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	@RequestMapping(value="/deleteuser")
	public ModelAndView deleteuser(user us,ModelAndView mv){
		int a=users.deleteuser(us);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	@RequestMapping(value="/updateuser")
	public ModelAndView updateuser(user us,ModelAndView mv){
		int a=users.updateuser(us);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	@RequestMapping(value="/selectuser")
	public ModelAndView selectuser(user us,ModelAndView mv){
		user a=users.selectuser(us);
		System.out.println(a);
		if(a!=null){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	
	@RequestMapping(value="/selectAlluser")
	public ModelAndView selectAlluser(ModelAndView mv){
		List<user> a=users.selectAlluser();
		
		if(a!=null){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	
	
}
