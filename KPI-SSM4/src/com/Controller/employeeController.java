package com.Controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.entity.employee;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.service.employee.employeeService;

@Controller
@RequestMapping("/employeeController")
public class employeeController {
	@Autowired
	private employeeService empls;
	
	/*
	 * 查询全部员工
	 * */
	@ResponseBody
	@RequestMapping(value="/selectallemployee",produces="text/html;charset=UTF-8")
	public String selectallemployee() throws JsonProcessingException{
		List<employee> listemployee=empls.selectAllemployee();
		ObjectMapper mapper = new ObjectMapper();

		String mapJakcson = mapper.writeValueAsString(listemployee);
		
		return mapJakcson;

	}
	

	
	
	@ResponseBody
	@RequestMapping(value="/insertemployee",produces="text/html;charset=UTF-8")
	public String insertemployee(employee empl) throws JsonProcessingException{
		employee a=empls.selectemployeeBywork_no(empl);                //通过工号查询数据
		
		ObjectMapper mapper = new ObjectMapper();
		
		if(a==null) {                          //若查询没有数据，则插入数据，否则更新数据

			int b=empls.insertemployee(empl);
		}else {         
			
			int c=empls.updateemployeeBywork_no(empl);              //通过工号来更新数据
		}
		String mapJakcson = mapper.writeValueAsString(empl);
		
		return mapJakcson;
		
	}	

	
	/*
	 *
	 * 与数据库操作无关，仅仅将Java对象转化为json字符串
	 * */
	@ResponseBody
	@RequestMapping(value="/submitemployee",produces="text/html;charset=UTF-8")
	public String submitemployee(employee empl) throws JsonProcessingException{
		ObjectMapper mapper = new ObjectMapper();

		String mapJakcson = mapper.writeValueAsString(empl);
		return mapJakcson;
	}	
	

	
	
	@RequestMapping("/deleteemployee")
	public ModelAndView deleteemployee(employee empl,ModelAndView mv){
		int a=empls.deleteemployee(empl);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	
	
	@RequestMapping("/updateemployee")
	public ModelAndView updateemployee(employee empl,ModelAndView mv){
		int a=empls.updateemployee(empl);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	
	/*
	 * 根据参数动态查询员工
	 * 
	 * */
	@ResponseBody
	@RequestMapping(value="/selectemployee",produces="text/html;charset=UTF-8")
	public String selectemployee(employee empl) throws JsonProcessingException{
		
	employee a=empls.selectemployee(empl);              //a为查询结果
		
	ObjectMapper mapper = new ObjectMapper();               //jackson jar包中把java对象转化为json的类

		String mapJakcson = mapper.writeValueAsString(a);
	
		return mapJakcson;	
	
	}
	
	
}
