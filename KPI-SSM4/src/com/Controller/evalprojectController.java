package com.Controller;


import java.io.IOException;
import java.util.*;


import javax.servlet.http.HttpServletRequest;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.entity.evalproject;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.service.evalproject.evalprojectService;
import com.sun.javafx.collections.MappingChange.Map;

@Controller
@RequestMapping("/evalprojectController")
public class evalprojectController {
	
	@Autowired
	private evalprojectService evalpros;
	
	/**
	 * produces="text/html;charset=UTF-8" ，
	 * 作用是把传到服务器端（传到ajax上的）的数据编码设置utf-8，防止json数据显现到页面上出现乱码
	 * @throws JsonProcessingException 
	 * 
	 * */
		
	@ResponseBody
	@RequestMapping(value="/submitevalproject",produces="text/html;charset=UTF-8")     
	public String submitevalproject(evalproject evalpro) throws JsonProcessingException{
		
		
		
		ObjectMapper mapper = new ObjectMapper();

		String mapJakcson = mapper.writeValueAsString(evalpro);
		
		return mapJakcson;				//return的返回值会传到相应ajax的function函数的data参数中
		
		
		
	}
	
	
	@ResponseBody
	@RequestMapping(value="/insertevalproject",produces="text/html;charset=UTF-8")     
	public String insertevalproject(evalproject evalpro) throws JsonProcessingException{
		int a=evalpros.insertevalproject(evalpro);
		
		ObjectMapper mapper = new ObjectMapper();

		String mapJakcson = mapper.writeValueAsString(evalpro);
		System.out.println("insertemployee  evalpro:  "+evalpro);
        System.out.println("insertemployee   mapJakcson:   "+mapJakcson);
		return mapJakcson;				//return的返回值会传到相应ajax的function函数的data参数中
		
		
		
	}
	

	@RequestMapping("/deleteevalproject")
	public ModelAndView deleteevalproject(ModelAndView mv,evalproject evalpro){
		int a=evalpros.deleteevalproject(evalpro);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	@RequestMapping("/updateevalproject")
	public ModelAndView updateevalproject(ModelAndView mv,evalproject evalpro){
		int a=evalpros.updateevalproject(evalpro);
		if(a==1){
			mv.setViewName("success");
		}else{
			mv.setViewName("shibai");
		}
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="/selectevalproject",produces="text/html;charset=UTF-8")
	public String selectevalproject(evalproject evalpro) throws JsonProcessingException{
		evalproject a=evalpros.selectevalproject(evalpro);
		
		ObjectMapper mapper=new ObjectMapper();
		String jackson=mapper.writeValueAsString(a);
		return jackson;
		
		
		
	}
	
	@ResponseBody
	@RequestMapping(value="/selectAllevalproject",produces="text/html;charset=UTF-8")
	public String selectAllevalproject() throws JsonProcessingException{
		List<evalproject> a=evalpros.selectAllevalproject();
		ObjectMapper mapper = new ObjectMapper();

		String mapJakcson = mapper.writeValueAsString(a);
		
		return mapJakcson;				//return的返回值会传到相应ajax的function函数的data参数中
		
		
	}
	
	
}
