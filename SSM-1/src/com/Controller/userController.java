package com.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.dept.deptdaoimpl;
import com.entity.user;
import com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException;
import com.user.userdaoimpl;


@Controller
@RequestMapping("/userController")
public class userController {
	
	/*
	 *处理异常
	 * */
	
	@ExceptionHandler(MySQLIntegrityConstraintViolationException.class)
	public ModelAndView Exception(Exception ex, ModelAndView mv){
		System.out.println("exception");
		mv.setViewName("usermanager");
		return mv;
	}
		
	@RequestMapping(value="/backhead2")
	public ModelAndView backhead2(ModelAndView mv) throws Exception{
		
		deptdaoimpl dimpl=deptController.getdeptdaoimpl();
	
		mv.setViewName("head2");
		
		return mv;
		
			
	}	
	   
	
	
	/*
	 * 该方法会重定向到employeeController/head2的方法中，起到两个类级别的Controller之间的中转站的作用
	 * */
//	@RequestMapping(value="/head2")
//	public String head2(user us){
//		System.out.println(us);
//		return "redirect:/employeeController/head2";
//	}
	
	public static userdaoimpl getuserdaoimpl(){
		ApplicationContext ap=new ClassPathXmlApplicationContext("applicationContext.xml");
		userdaoimpl uimpl=(userdaoimpl) ap.getBean("userdaoi"
				+ "mpl");
		return uimpl;
	}


	@RequestMapping(value="/login")
	public ModelAndView login(user us,ModelAndView mv) throws Exception{
		
		
		userdaoimpl uimpl=userController.getuserdaoimpl();
		user us2=uimpl.selectuserByname(us);
		
		if(us2 !=null){
			if(us.getPassword().intValue()==us2.getPassword().intValue()){
			mv.addObject("keyus1", us2);
			mv.setViewName("head");
			return mv  ;
			}else{
			mv.addObject("keyus1",us2);
			mv.setViewName("redirect:/index.jsp");
			
			return mv;
			}
		}else{
			mv.addObject("keyus1",us2);
			mv.setViewName("redirect:/index.jsp");
			return mv;
		}
		

		
	}
	
	
	@RequestMapping(value="/insert")
	public ModelAndView insert(user us,ModelAndView mv) throws Exception{
		
		userdaoimpl uimpl=userController.getuserdaoimpl();
		int a=uimpl.insertuser(us);
		
		
		
		
			mv.setViewName("usermanager");
			mv.addObject("keyus2", a);
			return mv;
		
	}
	
	
	@RequestMapping(value="/insertAndselectAll")
	public ModelAndView insertAndselectAll(user us,ModelAndView mv) throws Exception{
		
		userdaoimpl uimpl=userController.getuserdaoimpl();
		
		int a=uimpl.insertuser(us);
		List<user> list=uimpl.selectAlluser();
		
			mv.setViewName("usermanager");
			mv.addObject("keyus7", list);
			return mv;
		
	}
	
	@RequestMapping(value="/delete")
	public ModelAndView delete(user us,ModelAndView mv) throws Exception{
		
		userdaoimpl uimpl=userController.getuserdaoimpl();
		
		int a=uimpl.deleteuser(us);
		
			mv.setViewName("usermanager");
			mv.addObject("keyus3", a);
			return mv;
		
	}
	
	@RequestMapping(value="/deleteAndselectAll")
	public ModelAndView deleteAndselectAll(user us,ModelAndView mv) throws Exception{
		userdaoimpl uimpl=userController.getuserdaoimpl();
		
		
		int a=uimpl.deleteuser(us);
		List<user> list=uimpl.selectAlluser();
	
			mv.setViewName("usermanager");
			mv.addObject("keyus7", list);
			return mv;
		
	}
	
	
	
	@RequestMapping(value="/update")
	public ModelAndView update(user us,ModelAndView mv) throws Exception{
		
		userdaoimpl uimpl=userController.getuserdaoimpl();
		
		int a=uimpl.updateuser(us);
		
			mv.setViewName("usermanager");
			mv.addObject("keyus4",a);
			return mv;
		
	}
	
	
	@RequestMapping(value="/updateAndselectAll")
	public ModelAndView updateAndselectAll(user us,ModelAndView mv) throws Exception{
		
		userdaoimpl uimpl=userController.getuserdaoimpl();
		
		
		int a=uimpl.updateuser(us);
		List<user> list=uimpl.selectAlluser();
		
			mv.setViewName("usermanager");
			mv.addObject("keyus7",list);
			return mv;
		
	}
	
	
	/*
	 * 查询
	 * */
	@RequestMapping(value="/selectbyusername")
	public ModelAndView selectbyusername(String username,ModelAndView mv) throws Exception{
		
		userdaoimpl uimpl=userController.getuserdaoimpl();
		
		user uq=new user();
		uq.setUsername(username);
		user us=(user) uimpl.selectuserByname(uq);
		List<user> list=new ArrayList<user>();
		list.add(us);
		
			mv.setViewName("usermanager");
			mv.addObject("keyus5", list);
			return mv;
		
	}
	
	/*
	 * 可以通过动态查询的方式进行普通的查询
	 * */
	@RequestMapping(value="/dynamicselect")
	public ModelAndView selectone(user us,ModelAndView mv) throws Exception{
		/*
		 * 通过依赖注入的方式，来获得userservice的实例对象
		 * 
		 * */
		userdaoimpl uimpl=userController.getuserdaoimpl();
		
		
		List<user> list=uimpl.dynamicselectuser(us);
		
			mv.setViewName("usermanager");
			mv.addObject("keyus6", list);
			return mv;
		
	}
	
	
	@RequestMapping(value="/selectoneAndselectAll")
	public ModelAndView selectoneAndselectAll(user us,ModelAndView mv) throws Exception{
		/*
		 * 通过依赖注入的方式，来获得userservice的实例对象
		 * 
		 * */
		userdaoimpl uimpl=userController.getuserdaoimpl();
		
		if(us==null){
			List<user> list=uimpl.selectAlluser();
			mv.addObject("keyus7", list);
		}else{
			List<user> list=uimpl.dynamicselectuser(us);
			mv.addObject("keyus7", list);
		}
		mv.setViewName("usermanager");
		return mv;
		
			
		
		
	}
	
	@RequestMapping(value="/selectAll")
	public ModelAndView selectAll(ModelAndView mv) throws Exception{
		
		userdaoimpl uimpl=userController.getuserdaoimpl();
		
		List<user> list=uimpl.selectAlluser();
		
			mv.setViewName("usermanager");
			mv.addObject("keyus7", list);
			return mv;
		
	}
	
	
}
