<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>employeemanager.jsp</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">   <%-- 在IE运行最新的渲染模式 --%>
<meta name="viewport" content="width=device-width, initial-scale=1">   <%-- 初始化移动浏览显示 --%>
<meta name="Author" content="Dreamer-1.">

<%String path = request.getContextPath(); %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../../<%=path %>/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<link rel="stylesheet" href="../bootstrap-3.3.7-dist/font-awesome-4.7.0/css/font-awesome.css">
<script src="../bootstrap-3.3.7-dist/jquery-3.2.1/jquery-3.2.1.min.js"></script>
<script src="../bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<style type="text/css">
.glyphicon:hover{
           color: red;
       }
</style>
<script>
   // 设置中的退出键的函数
      function back(){
          var a=confirm("是否退出！！！");
          if(a){
            window.open("about:blank","_self").close();     //关闭当前页面
          }
      }

      // 显示时钟
		var myVar=setInterval(function(){myTimer()},1000);
			function myTimer(){
					var d=new Date();
					var t=d.toLocaleTimeString();
					document.getElementById("demo").innerHTML=t;
		}		  
		
	
		function soso(){
			$("#table-div").show();
		}
</script>
</head>
<body>

<!-- 顶部菜单（来自bootstrap官方Demon）==================================== -->
<div class="container-fluid">
        <nav class="navbar navbar-inverse navbar-fixed-top">
              <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" >
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                      <a class="navbar-brand" href="${pageContext.request.contextPath}/employeeController/backhead2"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;&nbsp;欢迎来到人事管理系统</a>
                </div>
                
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">                        
                        <li><a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;&nbsp;当前用户:${keyus1.username}</a></li>
                        <li class="opinion">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span class="glyphicon glyphicon-asterisk" aria-hidden="true"></span>&nbsp;&nbsp;选项<span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a data-toggle="modal" data-target="#exampleModa1" data-whatever="@getbootstrap">我的信息</a></li>
                                <li><a onclick="back()">退出</a></li>
                                <li class="divider"></li>
                                <li><a data-toggle="modal" data-target="#exampleModa2" data-whatever="@getbootstrap">查看系统信息</a></li>
                            </ul>
                        </li>
                    </ul>
                      
                </div>
              </div>
        </nav>
</div>

<!--我的信息模态框-->
<div class="modal fade" id="exampleModa1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div role="tabpanel" class="tab-pane" id="profile">
            <div class="modal-body" style="text-align:center;">
                <table class="table table-bordered " style="font-size:20px;">
                    <tr>
                      <td colspan="4">我的信息</td>
                    </tr>
                    <tr>
                      <td>姓名</td>
                      <td id="table-name">小明</td>
                      <td colspan="2" rowspan="3"><img src="http://img.qq745.com/uploads/allimg/150902/1-150Z2222227-50.jpg" width="100%" alt="头像"></td>
                    </tr>
                    <tr>
                      <td>性别</td>
                      <td id="table-sex">男</td>
                    </tr>
                    <tr>
                      <td>年龄</td>
                      <td id="jl-table-age">22</td>
                    </tr>
                    <tr>
                      <td>电话</td>
                      <td id="jl-table-phone">11221321</td>
                      <td>职业</td>
                      <td id="jl-table-zhiye">高级职员</td>
                    </tr>
                    <tr>
                      <td>出生年月</td>
                      <td  id="jl-table-birthday">1231321</td>
                      <td>爱好</td>
                      <td  id="jl-table-hoppy">213231321</td>
                    </tr>
                    <tr>
                      <td>个人经历</td>
                      <td colspan="3" id="jl-table-experence">3434243243424343243</td>
                    </tr>

                </table>
            </div>
        </div>
    </div>
  </div>
</div>

<!--详情信息模态框-->
<div class="modal fade" id="exampleModa2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div role="tabpanel" class="tab-pane" id="profile">
            <div class="modal-body" style="text-align:center;">
                  <p>本项目源码受 <a href="javascript:if(confirm(%27https://github.com/twbs/bootstrap/blob/master/LICENSE  \n\nThis file was not retrieved by Teleport Pro, because it is addressed using an unsupported protocol (e.g., gopher).  \n\nDo you want to open it from the server?%27))window.location=%27https://github.com/twbs/bootstrap/blob/master/LICENSE%27" tppabs="https://github.com/twbs/bootstrap/blob/master/LICENSE" target="_blank">MIT</a> 开源协议保护，文档受 <a href="javascript:if(confirm(%27http://creativecommons.org/licenses/by/3.0/  \n\nThis file was not retrieved by Teleport Pro, because it is addressed on a domain or path outside the boundaries set for its Starting Address.  \n\nDo you want to open it from the server?%27))window.location=%27http://creativecommons.org/licenses/by/3.0/%27" tppabs="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a> 开源协议保护。</p>
                  <p>开发者(作者)：束永祥</p>
                  <p>当前版本： v2.0.0</p>
                  <p>&middot;</p>
                  <p>中文离线文档制作:束永祥</p>
                  <p>中文离线文档制作日期: 2017-07-24</p>
            </div>
        </div>
    </div>
  </div>
</div>


<!--修改信息产生模态框-->
<div class="modal fade" id="exampleModa9" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
     <div class="container">
	     <div class="row">
    	  <div class="col-xs-3 col-xs-offset-2"><h2><span class="glyphicon glyphicon-user" aria-hidden="true"></span>修改职员信息</h2></div>
    	  </div>
	     <form action="${pageContext.request.contextPath}/employeeController/updateAndselectAll" method="post">
	        <div class="row">
		            <div class="form-group col-xs-3 ">
		                <label for="userid">userid</label>
		                <input type="text" class="form-control" name="user_id" placeholder="userid">
		              
		            </div>
		            <div class="form-group col-xs-3">
		                <label for="Deptid">Deptid</label>
                        <select class="form-control" id="dept_id" name="dept_id">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
		            </div>
		    </div>
		    <div class="row">
		             <div class="form-group col-xs-3">
		                <label for="jobid">jobid</label>
		               <select class="form-control" id="job_id" name="job_id">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                       </select>
		            </div>
		            <div class="form-group col-xs-3">
		                <label for="name">name</label>
		                <input type="text" class="form-control" name="name" placeholder="name">
		            </div>
		     </div>
		     <div class="row">
		            <div class="form-group col-xs-3 ">
		                <label for="age">age</label>
		                <input type="text" class="form-control" name="age" placeholder="age">
		              
		            </div>
		            <div class="form-group col-xs-3" style="margin-top:25px;">
		                <label for="sex">sex</label>
		                <label class="radio-inline">
                       <input type="radio" name="sex" id="nan" value="nan"> 男
                       </label>
                       <label class="radio-inline">
                       <input type="radio" name="sex" id="nv" value="nv"> 女
                        </label>
		            </div>
		     </div>
		     <div class="row">
		             <div class="form-group col-xs-3">
		                <label for="phone">phone</label>
		                <input type="text" class="form-control" name="phone" placeholder="phone">
		              
		            </div>
		            <div class="form-group col-xs-3">
		                <label for="hobby">hobby</label>
		                <input type="text" class="form-control" name="hobby" placeholder="hobby">
		            </div>
		     </div>
	         <div class="row ">
	              <div class="form-group col-xs-6 col-xs-offset-4">
	                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	                <input  type="submit" value="submit" class="btn btn-primary"/>
	              </div>
	        </div>
	        </form>
	    </div>
    </div>
  </div>
</div>
            
<!--增加信息产生模态框-->
<div class="modal fade" id="exampleModa11" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
    	<div class="container">
    	  <div class="row">
    	  <div class="col-xs-3 col-xs-offset-2"><h2><span class="glyphicon glyphicon-user" aria-hidden="true"></span>增加职员信息</h2></div>
    	  </div>
	       <form action="${pageContext.request.contextPath}/employeeController/insertAndselectAll" method="post">
	        <div class="row">
		            <div class="form-group col-xs-3 ">
		                <label for="userid">userid</label>
		                <input type="text" class="form-control" name="user_id" placeholder="userid">
		              
		            </div>
		            <div class="form-group col-xs-3">
		                <label for="Deptid">Deptid</label>
                        <select class="form-control" id="dept_id" name="dept_id">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
		            </div>
		    </div>
		    <div class="row">
		             <div class="form-group col-xs-3">
		                <label for="jobid">jobid</label>
		                <select class="form-control" id="job_id" name="job_id">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                        </select>
		            </div>
		            <div class="form-group col-xs-3">
		                <label for="name">name</label>
		                <input type="text" class="form-control" name="name" placeholder="name">
		            </div>
		     </div>
		     <div class="row">
		            <div class="form-group col-xs-3 ">
		                <label for="age">age</label>
		                <input type="text" class="form-control" name="age" placeholder="age">
		              
		            </div>
		            <div class="form-group col-xs-3" style="margin-top:25px;">
		                <label for="sex">sex</label>
		                <label class="radio-inline">
                                <input type="radio" name="sex" id="nan" value="nan"> 男
                                </label>
                                <label class="radio-inline">
                                <input type="radio" name="sex" id="nv" value="nv"> 女
                        </label>
                    </div>
		     </div>
		     <div class="row">
		             <div class="form-group col-xs-3">
		                <label for="phone">phone</label>
		                <input type="text" class="form-control" name="phone" placeholder="phone">
		              
		            </div>
		            <div class="form-group col-xs-3">
		                <label for="hobby">hobby</label>
		                <input type="text" class="form-control" name="hobby" placeholder="hobby">
		            </div>
		     </div>
	         <div class="row ">
	              <div class="form-group col-xs-6 col-xs-offset-4">
	                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	                <input  type="submit" value="submit" class="btn btn-primary"/>
	              </div>
	        </div>
	        </form>
	    </div>
    </div>
  </div>
</div>

<!--删除信息产生模态框-->
<div class="modal fade" id="exampleModa10" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
     <div class="container">
        <div class="row">
    	  <div class="col-xs-3 col-xs-offset-2"><h2><span class="glyphicon glyphicon-user" aria-hidden="true"></span>删除职员信息</h2></div>
    	 </div>
        <form  action="${pageContext.request.contextPath}/employeeController/deleteAndselectAll" method="post">
        <div class="row">
            <div class="form-group col-xs-4 col-xs-offset-1">
            	<label for="userid">userid</label>
               <input type="text"  name="user_id" class="form-control"  placeholder="id">
		     </div>
		    
        </div>
        <div class="row">
             <div class="form-group col-xs-6  modal-footer">
               <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
               <input  type="submit" value="submit" class="btn btn-primary"/>
             </div>
	    </div>
        </form>
    </div>
    </div>
  </div>
</div>

    <!--左右测内容-->
    <div class="container-filued">
                <!-- 左侧菜单选项========================================= -->
                <div class="col-xs-3 col-md-2 " style="margin-top:50px;border-right:1px solid darkgray;">        
                    <ul class="nav nav-sidebar">
                         
                       <!-- 注意一级菜单中<a>标签内的href="#……"里面的内容要与二级菜单中<ul>标签内的id="……"里面的内容一致 -->
                         <li><a href="#userMeun" class="nav-header menu-first collapsed" data-toggle="collapse">
                            <i class="fa fa-file-text"></i>&nbsp; 用户管理 <span class="sr-only">(current)</span></a>
                        </li> 
                         <ul id="userMeun" name="userMeun" class="nav nav-list collapse menu-second">
                            <li><a href="${pageContext.request.contextPath}/managerController/usermanager" ><i class="fa fa-list"></i>操作用户</a></li>
                         </ul>
                      
                            
            	        <li><a href="#deptmeun" class="nav-header menu-first collapsed" data-toggle="collapse">
                            <i class="fa fa-file-text"></i>&nbsp; 部门管理 <span class="sr-only">(current)</span></a>
                        </li> 
                      	 <ul id="deptmeun" name="deptmeun" class="nav nav-list collapse menu-second">
                            <li><a href="${pageContext.request.contextPath}/managerController/deptmanager" ><i class="fa fa-list"></i>操作部门</a></li>
                         </ul>
                      
                        <li><a href="#employeeMeun" class="nav-header menu-first collapsed" data-toggle="collapse">
                            <i class="fa fa-file-text"></i>&nbsp; 职员管理 <span class="sr-only">(current)</span></a>
                        </li> 
                        <ul id="employeeMeun" class="nav nav-list collapse menu-second">
                            <li><a href="${pageContext.request.contextPath}/managerController/employeemanager" ><i class="fa fa-list"></i> 操作职员</a></li>
                           
                        </ul>
                        <li><a href="#jobMeun" class="nav-header menu-first collapsed" data-toggle="collapse">
                            <i class="fa fa-file-text"></i>&nbsp; 职位管理 <span class="sr-only">(current)</span></a>
                        </li> 
                        <ul id="jobMeun" class="nav nav-list collapse menu-second">
                            <li><a href="${pageContext.request.contextPath}/managerController/jobmanager"><i class="fa fa-list"></i> 操作职位</a></li>
						</ul>
                       
                    </ul>
                    
                </div>

                <!-- 右侧内容展示==================================================-->           
                 <div class=" col-xs-8 col-md-9" style="margin-top:20px;">
                    <h1 class="page-header"><i class="fa fa-cog fa-spin"></i>&nbsp;&nbsp;<small>欢迎使用人事后台管理系统--->职员管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="demo"></span></small></h1>
                      <!-- 载入左侧菜单指向的jsp（或html等）页面内容 -->
  					<div id="content">
                     		<div class="container">
                     		<div class="row" style="margin-bottom:20px;">
								<div class="col-xs-4 col-xs-offset-3 ">
	                     		<form action="${pageContext.request.contextPath}/employeeController/selectoneAndselectAll" method="post">
	                     		<div class="input-group">
	                     		<input type="text" class="form-control" name="user_id" placeholder="根据user_id查询，若无条件则默认为查询全部">
	                     		<span class="input-group-btn"><input class="btn btn-primary" type="submit" value="soso"/></span>
	                     		</div>
	                     		</form>
								</div>
                     		</div>
                     		<div class="row">
                     		<div class="col-xs-10">
                     			  <table class="table table-bordered table-hover" id="mytable">
                     			  	<tr>
					                    <td class="active">user_id</td><td class="active">dept_id</td><td class="active">job_id</td><td  class="success">name</td><td  class="success">age</td><td  class="success">sex</td><td  class="success">phone</td><td  class="success">hobby</td><td class="warning">删除</td><td class="warning">修改</td><td class="warning">增加</td>
					                </tr>
					                <c:forEach items="${keyem4 }" var="b">
						    			<tr><td  class="active">${b.user_id }</td><td  class="active">${b.dept_id }</td><td  class="active">${b.job_id }</td><td class="success">${b.name }</td><td class="success">${b.age }</td><td class="success">${b.sex }</td><td class="success">${b.phone }</td><td class="success">${b.hobby }</td><td class="warning"><a data-toggle="modal" data-target="#exampleModa10" data-whatever="@getbootstrap"><span class="glyphicon glyphicon-trash col-xs-offset-5" aria-hidden="true"></span></a></td><td class="warning"><a data-toggle="modal" data-target="#exampleModa9" data-whatever="@getbootstrap"><span class="glyphicon glyphicon-pencil col-xs-offset-5" aria-hidden="true"></span></a></td><td class="warning"><a data-toggle="modal" data-target="#exampleModa11" data-whatever="@getbootstrap"><span class="glyphicon glyphicon-plus col-xs-offset-5" aria-hidden="true"></span></a></td></tr>
						    		</c:forEach>
						    		
                     			  </table>
                     		</div>
                     		</div>
                     </div>
                    </div> 
              </div> 
        </div>
</body>
</html>