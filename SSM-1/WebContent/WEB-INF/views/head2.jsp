<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>head2.jsp</title>

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
                      <a class="navbar-brand" href="${pageContext.request.contextPath}/managerController/backhead1"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;&nbsp;欢迎来到人事管理系统</a>
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
                    <h1 class="page-header"><i class="fa fa-cog fa-spin"></i>&nbsp;&nbsp;<small>欢迎使用人事后台管理系统&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="demo"></span></small></h1>
                      <!-- 载入左侧菜单指向的jsp（或html等）页面内容 -->
                      <div id="content">
                          <h4>                    
                                <strong>使用指南：</strong><br>
                                <br><br>默认页面内容……
                          </h4>                                 
                              
                      </div>
                      <div id="content2">
                          <table class="table table-bordered">
                            
                          </table>

                      </div>

                </div> 
                  
           
        </div>


</body>
</html>