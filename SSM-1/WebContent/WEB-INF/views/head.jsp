<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>head.jsp</title>
<%String path = request.getContextPath(); %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../bootstrap-3.3.7-dist/font-awesome-4.7.0/css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="../../<%=path %>/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script src="../bootstrap-3.3.7-dist/jquery-3.2.1/jquery-3.2.1.min.js"></script>
<script src="../bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

</head>
<style>
       /*备忘录的删除图标的变色（通过伪类选择符）*/
       .glyphicon:hover{
           color: red;
       }

    
</style>
<script>
        // 备忘录的save message按钮
		function save(){
			var a=$("#text").val();
			var date=new Date();
			var d=date.toLocaleString();
			if(a===null||a===""){
				alert("请输入备忘信息！！！！");
			}else{

				$("#textmsg").append("<tr><td><h4>"+a+"<small class='pull-right'>"+d+"  "+"<span class='glyphicon glyphicon-trash' aria-hidden='true' onclick='deletebwl(this)'></span></small></h4></td></tr>");
			}
			
		}

    //备忘录上的删除图标点击后的删除函数
    function deletebwl(the){
        var a=the.parentNode.parentNode.parentNode.parentNode;  //找到删除图标所在标签的最上的表格父节点 
        a.parentNode.removeChild(a);  //移除该父节点下的所有子节点
    }
    
    

    
</script>
<body>


<!--导航栏-->
<nav class="navbar navbar-static-top bs-docs-nav navbar-inverse" id="top" role="banner" style="margin-bottom:0px;">
  <div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" ><span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;&nbsp;XXX管理系统</a>
    </div>
    
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="#">Link</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">娱乐<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">吃</a></li>
            <li><a href="#">喝</a></li>
            <li class="divider"></li>
            <li><a href="#">玩</a></li>
            <li class="divider"></li>
            <li><a href="#">睡</a></li>
          </ul>
        </li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
      	<li><a href="#" ><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;&nbsp;当前用户:${keyus1.username}</a></li>
        
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span class="glyphicon glyphicon-asterisk" aria-hidden="true"></span>&nbsp;&nbsp;设置<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a data-toggle="modal" data-target="#exampleModa3" data-whatever="@getbootstrap">我的信息</a></li>
            <li><a href="#">我的收藏</a></li>
            <li><a href="#">积分</a></li>
            <li><a href="#">我的好友</a></li>
            <li><a data-toggle="modal" data-target="#myModal">备忘录</a></li>
            <li class="divider"></li>
            <li><a href="#">关于</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>


<!--备忘录模态框-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="myModalLabel"><span class="glyphicon glyphicon-file" aria-hidden="true">我的备忘录</span></h3>
            </div>
   
            <div class="modal-body">
            <input type="text" class="form-control" placeholder="Add Messages" id="text">
            <!--备忘录面板-->
            <div class="panel panel-primary">
            <div class="panel-heading" style="height:40px;">我的备忘信息</div>
                <table class="table" id="textmsg">
                </table>
            </div>
            </div>    
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" onclick="save()">Save Messages</button>
            </div>
    </div>
  </div>
</div>
<!-- 轮播图 -->
<div class="container-fluid" style="padding-left:0px; padding-right:0px;">
	
		<div class="col-md-12" style="padding-left:0px; padding-right:0px;">
					<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
					  <!-- Indicators -->
					  <ol class="carousel-indicators">
					    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
					    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
					    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
					  </ol>

					  <!-- Wrapper for slides -->
					  <div class="carousel-inner" role="listbox" style="height: 400px;"> 
					    <div class="item active">
					      <img src="../bootstrap-3.3.7-dist/img/1.jpg" width="100%" alt="图片1">
					    </div>
					    <div class="item">
					      <img src="../bootstrap-3.3.7-dist/img/2.jpg" width="100%" alt="图片2">
					    
					    </div>
					    <div class="item active">
                <img src="../bootstrap-3.3.7-dist/img/3.jpg" width="100%" alt="图片3">
              </div>
					    
					  </div>

					  <!-- Controls -->
					  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
					    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					    <span class="sr-only">Previous</span>
					  </a>
					  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
					    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					    <span class="sr-only">Next</span>
					  </a>
					</div>
		</div>	

</div>
<!--内容板块-->
<div class="container">
    <div class="row" style="text-align:center; color:red;">
        <h2><span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span>内容板块</h2> 
    </div>
</div>

<!--板块-->
<div class="container" style="padding:30px; text-align:center;" >
      <div class="col-xs-12 col-md-3 " style="border:1px solid red;height:300px;">
          <a><h2>学生信息管理系统</h2></a>
      </div>
      <div class="col-xs-12 col-md-4 col-md-offset-1"  style="border:1px solid red;height:300px;">
           <a href="${pageContext.request.contextPath}/employeeController/head2"><h2>人事管理系统</h2></a>
      </div>
      <div class="col-xs-12 col-md-3 col-md-offset-1" style="border:1px solid red;height:300px;">
            <span><h2>学生信息管理系统</h2></span>
      </div>
</div>


<!--板块-->
<div class="container" style="padding:30px; text-align:center;" >
      <div class="col-xs-12 col-md-3 " style="border:1px solid red;height:300px;">
          <a><h2>学生信息管理系统</h2></a>
      </div>
      <div class="col-xs-12 col-md-4 col-md-offset-1"  style="border:1px solid red;height:300px;">
            <span><h2>职员信息管理系统</h2></span>
      </div>
      <div class="col-xs-12 col-md-3 col-md-offset-1" style="border:1px solid red;height:300px;">
            <span><h2>学生信息管理系统</h2></span>
      </div>
</div>

<!--页脚-->
<footer class="bs-docs-footer" role="contentinfo" style="text-align:center;background-color:lightgray;">
    
    <p>开发者(作者)：束永祥</p>
    <p>当前版本： v2.0.0</p>
    <p>中文离线文档制作:束永祥</p>
    <p>中文离线文档制作日期: 2017-07-10</p>
</footer>







</body>
</html>