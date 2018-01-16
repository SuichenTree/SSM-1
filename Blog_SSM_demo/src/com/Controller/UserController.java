package com.Controller;

import com.Entity.User;
import com.Service.UserServiceImpl;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@RequestMapping(value="/user")
@Controller
public class UserController {
    @Autowired
    private UserServiceImpl userService;
   
    /**登录
     * 
     * 
     *  
     * @param pageNum  查询的页码
     * @param user
     * @param model
     * @return
     */
    @RequestMapping(value="/login")
    public String login(User user,Model model) {
    	Boolean status = userService.login(user);               //true为登录成功

    	if(status==true) {
    		model.addAttribute("username",user.getName());      //把用户名放到model中
        	return "redirect:/user/PageselectAll";              // 重定向到  分页查询方法
    	}else {
    		return "redirect:/index.jsp";                       //重定向到index.jsp
    	}
    }
    
    /**注册
     * @param user
     * @param model
     * @return
     */
    @RequestMapping(value="/Register")
    public String Register(User user,Model model) {
    	Boolean status = userService.Register(user);
    	
    	if(status==true) {
    		model.addAttribute("username",user.getName());
    		return "redirect:/user/PageselectAll";                       // 重定向到  分页查询方法
    	}else {
    		return "redirect:/index.jsp";                                //重定向到index.jsp
    	}
    }
    
    
   
    /**分页查询全部信息，使用pageHelper插件
     * 
     *  PageHelper的startPage方法 只对紧跟着的第一个SQL语句起作用
     *  
     *  用PageInfo类型对查询结果进行包装
     *  
     *  startPage(pn, 5);    pn是 传入到查询的页码数  ，     5 ：表示一页最多显示5条数据
     *  
     * @param pageNum  查询的页码数
     * @return
     */
    @RequestMapping(value="/PageselectAll")
    public String PageSelectAll(@RequestParam(value="pn",defaultValue="1") int pn,Model model){
    	PageHelper.startPage(pn, 5);                   
    	List<User> listUser = userService.selectAll();
    	PageInfo page = new PageInfo(listUser,5);      // listUser 查询结果  ，  5：表示页面 连续显示的页数最多为5个
    	model.addAttribute("pageInfo", page);          //把分页信息（查询结果，页码数等信息），放到model中
		return "main";
    }
    
    
    /** 编辑用户
     * @param user
     * @return
     * @throws JsonProcessingException 
     */
    @RequestMapping(value="/edit")
    @ResponseBody
    public String edit(User user) throws JsonProcessingException {
    	User U = userService.select(user);     //获取user 的 id
    	user.setId(U.getId());  			   // 把id 赋值给参数user
    	
    	int a = userService.update(user);
    	
    	ObjectMapper mapper = new ObjectMapper();     
    	String mapJakcson = mapper.writeValueAsString(a);   //把返回值转换为json，否则ajax始终执行error函数
		return mapJakcson;
    }
    
    /**删除用户
     * @param user
     * @return
     * @throws JsonProcessingException
     */
    @RequestMapping(value="/delete")
    @ResponseBody
    public String delete(User user) throws JsonProcessingException {
        User U = userService.select(user);     //获取user 的 id
    	user.setId(U.getId());  			   // 把id 赋值给参数user
    	int a = userService.delete(user);
    	
    	ObjectMapper mapper = new ObjectMapper();     
    	String mapJakcson = mapper.writeValueAsString(a);  //把返回值转换为json，否则ajax始终执行error函数
		return mapJakcson;
    }
    
    
    /** 增加用户
     * @param user
     * @return
     * @throws JsonProcessingException
     */
    @RequestMapping(value="/add")
    @ResponseBody
    public String add(User user) throws JsonProcessingException {
    	int a = userService.insert(user);
    	ObjectMapper mapper = new ObjectMapper();     
    	String mapJakcson = mapper.writeValueAsString(a);    //把返回值转换为json，否则ajax始终执行error函数
		return mapJakcson;
    }
    
    
    /** 模糊搜索
     * @param pn
     * @param user
     * @param model
     * @return
     */
    @RequestMapping(value="/selectLike")
    public String selectLike(@RequestParam(value="pn",defaultValue="1") int pn,User user,Model model) {
    	user.setName("%"+user.getName()+"%");        //给查询条件加上通配符%
    	List<User> selectLikeUser = userService.selectLikeUser(user);
    	/*
    	 * 对模糊查询的结果进行分页封装
    	 * */
    	PageHelper.startPage(pn, 5);                   
    	PageInfo page = new PageInfo(selectLikeUser,5);    // listUser 查询结果  ，  5：表示页面 连续显示的页数最多为5个
    	model.addAttribute("pageInfo", page);        //把分页信息（查询结果，页码数等信息），放到model中
		return "main";
    }
    
}
