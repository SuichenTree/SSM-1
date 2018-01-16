<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 新 Bootstrap4 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <!-- popper.min.js 用于弹窗、提示、下拉菜单 -->
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<title>main2.jsp</title>
<%
pageContext.setAttribute("projectRootPath", request.getContextPath());   //获取项目根路径，以/开始，不以/结束
%>

<script>
//填充edit模态框
function fillmodel(obj){
	var uname=$(obj).parents().children("td").eq(1).text(); 
	var pwd=$(obj).parents().children("td").eq(2).text(); 
	document.getElementById("username").value=uname;		
	document.getElementById("pwd").value=pwd;

}

//edit用户 
function editUser(){
	 var uname=document.getElementById("username").value;	
	 var pwd=document.getElementById("pwd").value;
	 
	$.ajax({
		type:"post",
		dataType:"json",  
		data:{"name":uname,"password":pwd},
		url:"${projectRootPath}/user/edit",		                                                   
		success: function(result){
			location.reload();   //刷新页面
			 
			if(result != 1){
				alert("Edit shibai")
			}
		},
		error: function(){				
			alert("edit ajax error");
		}
	});
}

function deleteUser(obj){
	var uname=$(obj).parents().children("td").eq(1).text(); 
	
	$.ajax({
		type:"post",
		dataType:"json",  
		data:{"name":uname},
		url:"${projectRootPath}/user/delete",		                                                   
		success:function(result){  
			location.reload();   //刷新页面
			if(result != 1){
				alert("delete shibai")
			}
		},
		error: function(){				
			alert("delete ajax error");
		}
	});
}

function addUser(){
	 var uname=document.getElementById("username2").value;	
	 var pwd=document.getElementById("pwd2").value;
	 
	$.ajax({
		type:"post",
		dataType:"json",  
		data:{"name":uname,"password":pwd},
		url:"${projectRootPath}/user/add",		                                                   
		success: function(result){
			location.reload();   //刷新页面
			 
			if(result != 1){
				alert("add shibai")
			}
		},
		error: function(){				
			alert("add ajax error");
		}
	});
}

//退出
function exit(){
 var a=confirm("是否退出！！！");
    if(a){
   	window.location.href="http://localhost:8080/SSM_demo1/index.jsp"; 	
    }
}
</script>
</head>
<body>

<div class="container">
<form class="form-inline" action="${projectRootPath}/user/selectLike" method="get">
  <label for="Username">Username:</label>
  <input type="text" class="form-control" id="Username" name="name">
  <button type="submit" class="btn btn-primary" style="margin-right:100px;">查询用户</button>
  <button type="button" class="btn btn-primary" style="margin-right:100px;" data-toggle="modal" data-target="#myModal_add">增加用户</button>
  <button type="button" class="btn btn-primary" onclick="exit();">退出</button>
</form>
</div>

<div class="container">
  <table class="table table-hover table-bordered" id="user_table">
    <tr>
        <th>id</th>
        <th>name</th>
        <th>password</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <!-- ${pageInfo.list} 分页信息中的查询结果集 -->
    <c:forEach items="${pageInfo.list}" var="plist">
    	<tr>
    	<td>${plist.id }</td>
    	<td>${plist.name }</td>
	    <td>${plist.password}</td>
	    <td><a href='#' onclick='fillmodel(this)' data-toggle='modal' data-target='#editModal'>编辑</a></td>
		<td><a href='#' onclick='deleteUser(this)'>删除</a></td></tr>
    </c:forEach>
  </table>
</div>

<div class="container">
<div class="row">
  <div class="col-sm-4">
  		当前页数：${pageInfo.pageNum } 页 , 总页数 ${pageInfo.pages} 页, 总记录数 ${pageInfo.total} 条
  </div>
  <div class="col-sm-8">
  	<ul class="pagination">
  	<!-- 连续显示的页数 -->
  	<li class="page-item"><a class="page-link" href="${projectRootPath}/user/PageselectAll?pn=1">首页</a></li>
  	
  	<!-- 
  	   pageInfo.pageNum ：获取当前页数
                  上一页 ：就是   当前页数 - 1 。
                   当 当前页为第一页时（没有上一页），上一页不显示
  	 -->
  	<c:if test="${pageInfo.hasPreviousPage}">
  		<li class="page-item"><a class="page-link" href="${projectRootPath}/user/PageselectAll?pn=${pageInfo.pageNum-1 }">上一页</a></li>
  	</c:if>
  	 
  	<c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
  		<!-- 
  			pageInfo.pageNum :当前页码。
  			page_Num : 循环输出的页码数。
  			  判断是否是当前页码，是，页码数高亮显示	
  		 -->
  		<c:if test="${pageInfo.pageNum == page_Num  }">
  			<li class="page-item active"><a class="page-link" href="#">${page_Num }</a></li>
  		</c:if>
  		<c:if test="${pageInfo.pageNum != page_Num  }">
  			<li class="page-item"><a class="page-link" href="${projectRootPath}/user/PageselectAll?pn=${page_Num }">${page_Num }</a></li>
  		</c:if>
  	</c:forEach>
    
	<!-- 
	  pageInfo.pageNum ：获取当前页数
                  上一页 ：就是   当前页数  + 1 。
      	
            如果当前页数为最后一页(没有下一页)，则下一页不显示
	 -->    
	<c:if test="${pageInfo.hasNextPage}">
	    <li class="page-item"><a class="page-link" href="${projectRootPath}/user/PageselectAll?pn=${pageInfo.pageNum+1 }">下一页</a></li>
	</c:if>
	 
	<!-- 
	  pageInfo.pages : pages属性为总页码数
	 -->
    <li class="page-item"><a class="page-link" href="${projectRootPath}/user/PageselectAll?pn=${pageInfo.pages}">尾页</a></li>
    </ul>
  </div>
</div>
</div>

<!-- 编辑用户模态框 -->
<div class="modal fade" id="editModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <!-- 模态框头部 -->
      <div class="modal-header">
        <h4 class="modal-title">Edit</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <!-- 模态框主体 -->
      <div class="modal-body">
		<div class="form-group">
			<label for="email">username</label> 
			<input type="text" class="form-control" id="username" name="name" placeholder="Username" required/>
		</div>
		<div class="form-group">
			<label for="pwd">Password</label>
			<input type="password" class="form-control" id="pwd" name="password" placeholder="Password" required/>
		</div>
	  </div>
      <!-- 模态框底部 -->
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
        <button type="button" onclick="editUser()"  class="btn btn-secondary" data-dismiss="modal">Submit</button>
      </div>
    </div>
  </div>
</div>


<!-- 增加用户模态框 -->
<div class="modal fade" id="myModal_add">
  <div class="modal-dialog">
    <div class="modal-content">
      <!-- 模态框头部 -->
      <div class="modal-header">
        <h4 class="modal-title">ADD</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <!-- 模态框主体 -->
      <div class="modal-body">
		<div class="form-group">
			<label for="email">username</label>
			<input type="text" class="form-control" id="username2" name="name" placeholder="Username" required/>
		</div>
		<div class="form-group">
			<label for="pwd">Password</label>
			<input type="password" class="form-control" id="pwd2" name="password" placeholder="Password" required/>
		</div>
	  </div>
      <!-- 模态框底部 -->
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
        <button type="button" onclick="addUser()"  class="btn btn-secondary" data-dismiss="modal">Submit</button>
      </div>
    </div>
  </div>
</div>

</body>
</html>