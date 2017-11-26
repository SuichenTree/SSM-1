<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index.jsp</title>

<%String path = request.getContextPath(); %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="bootstrap-3.3.7-dist/font-awesome-4.7.0/css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="<%=path %>/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script src="bootstrap-3.3.7-dist/jquery-3.2.1/jquery-3.2.1.min.js"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script>
      // 设置中的退出键的函数
      function back(){
          var a=confirm("是否退出！！！");
          if(a){
            window.open("about:blank","_self").close();     //关闭当前页面
          }else{
            alert("退出失败！！！");
          }
      }

	
    
      
      
      
      
</script>
</head>
<body>


	<!--页头-->
<header class="navbar navbar-static-top bs-docs-nav" id="top" role="banner" style="margin-bottom:0px;">
  <div class="container">
    <div class="navbar-header">
      <a href="#" class="navbar-brand"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;&nbsp;XXX管理系统</a>
    </div>
    <ul class="nav navbar-nav navbar-right">
    <li class="opinion">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span class="glyphicon glyphicon-asterisk" aria-hidden="true"></span>&nbsp;&nbsp;设置<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a data-toggle="modal" data-target="#exampleModa2" data-whatever="@getbootstrap">登录</a></li>
            <li><a data-toggle="modal" data-target="#exampleModa2" data-whatever="@getbootstrap">注册</a></li>
            <li><a onclick="back()">退出</a></li>
            <li class="divider"></li>
            <li><a data-toggle="modal" data-target="#exampleModa5" data-whatever="@getbootstrap">查看详情信息</a></li>
          </ul>
    </li>
    </ul>
  </div>
</header>

<!--详情信息模态框-->
<div class="modal fade" id="exampleModa5" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div role="tabpanel" class="tab-pane" id="profile2">
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


<!--巨幕-->
<div class="jumbotron" style="background-color:lightgray;">
  <div class="container" style="text-align:center;padding-top:20px;padding-bottom:20px;">
    <span class="bs-docs-booticon bs-docs-booticon-lg bs-docs-booticon-outline"><h1>&nbsp;<span class="glyphicon glyphicon-grain" aria-hidden="true" style="color:darkgreen;"></span>&nbsp;</h1></span>
    <h2>Welcome to the student management system</h2>
    <p>这是一个非常优秀的系统，也是一个非常灵活的系统。</p>
    <p>
        <a class="btn btn-primary btn-lg" role="button"  type="button" data-toggle="modal" data-target="#exampleModa2" data-whatever="@getbootstrap">进入</a>
    </p>
    <p class="version">当前版本： v2.0</p>
  </div>
</div>


<!--在模态框中的登录与注册界面-->
<div class="modal fade" id="exampleModa2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
          <div role="tabpanel">

              <!-- 头部标签 -->
              <ul class="nav nav-tabs" role="tablist" >
                <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab" style="text-align:center;">注册</a></li>
                <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">登录</a></li>
              </ul>
             
              <div class="tab-content">
                <!--注册界面-->
                <div role="tabpanel" class="tab-pane active" id="home">
                  <form action="employeeController/zhuce" method="post">
                  <div class="modal-body">
                       	 <div class="form-group">
                                <label for="Userid">Userid</label>
                               	<input type="text" name="user_id" class="form-control"  placeholder="userid"/>
                               
                          </div>
                            <div class="form-group">
                                <label for="Deptid">Deptid</label>
                           
                               <select class="form-control" id="dept_id" name="dept_id">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="Jobid">Jobid</label>
                               
                                <select class="form-control" id="job_id" name="job_id">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="usernme">name</label>
                                <input type="text" name="name" class="form-control" id="username" placeholder="username"/>
                            </div>
                            <div class="form-group">
                                <label for="age">age</label>
                                <input type="text" name="age" class="form-control" id="age" placeholder="age"/>
                            </div>
                            <div class="form-group">
                                <label for="sex">sex</label>
                               	<label class="radio-inline">
                                <input type="radio" name="sex" id="nan" value="nan"> 男
                                </label>
                                <label class="radio-inline">
                                <input type="radio" name="sex" id="nv" value="nv"> 女
                                </label>
                            </div>
                            <div class="form-group">
                                <label for="phone">phone</label>
                                <input type="text" class="form-control" name="phone" placeholder="phone"/>
                            </div>
                             <div class="form-group">
                                <label for="hobby">hobby</label>
                                <input type="text" class="form-control" name="hobby" placeholder="hobby"/>
                            </div>
                           
                     

                  </div>
                
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <input type="submit" class="btn btn-primary" value="submit" onclick="zhucesubmit()"></button>
                  </div>
				  </form>

                  
                </div>
                <!--登陆界面-->
                <div role="tabpanel" class="tab-pane" id="profile">
                <form action="userController/login" method="post">
	                  <div class="modal-body">
	                       
	                            <!--用户名框-->
	                            <div class="form-group">
	                                <label for="Username">Username</label>
	                                <input type="text"  name="username" class="form-control" id="delu-username" placeholder="Username">
	                            </div>
	                               <!--密码框-->
	                            <div class="form-group">
	                                <label for="Password">Password</label>
	                                <input type="password"  name="password" class="form-control" id="delu-password" placeholder="Password">
	                            </div>
	                   </div>
	                  <!--模态框底部按钮-->
	                  <div class="modal-footer">
	                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	                    <button type="submit" class="btn btn-primary">Submit</button>
	                  </div>
                 </form>
              </div>
            </div>    
         </div>
    
    </div>
  </div>
</div>


<!--页脚-->
<footer class="bs-docs-footer" role="contentinfo" style="text-align:center;">
    <p>本项目源码受 <a href="javascript:if(confirm(%27https://github.com/twbs/bootstrap/blob/master/LICENSE  \n\nThis file was not retrieved by Teleport Pro, because it is addressed using an unsupported protocol (e.g., gopher).  \n\nDo you want to open it from the server?%27))window.location=%27https://github.com/twbs/bootstrap/blob/master/LICENSE%27" tppabs="https://github.com/twbs/bootstrap/blob/master/LICENSE" target="_blank">MIT</a> 开源协议保护，文档受 <a href="javascript:if(confirm(%27http://creativecommons.org/licenses/by/3.0/  \n\nThis file was not retrieved by Teleport Pro, because it is addressed on a domain or path outside the boundaries set for its Starting Address.  \n\nDo you want to open it from the server?%27))window.location=%27http://creativecommons.org/licenses/by/3.0/%27" tppabs="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a> 开源协议保护。</p>
    <p>开发者(作者)：束永祥</p>
    <p>当前版本： v2.0.0</p>
    <p>&middot;</p>
    <p>中文离线文档制作:束永祥</p>
    <p>中文离线文档制作日期: 2017-07-10</p>
</footer>










</body>
</html>