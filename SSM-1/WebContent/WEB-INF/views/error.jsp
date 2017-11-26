<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>error.jsp</title>
<%String path = request.getContextPath(); %>
<c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="bootstrap-3.3.7-dist/font-awesome-4.7.0/css/font-awesome.css">
<link rel="stylesheet" type="text/css" href="<%=path %>/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script src="bootstrap-3.3.7-dist/jquery-3.2.1/jquery-3.2.1.min.js"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
<!-- 顶部菜单（来自bootstrap官方Demon）==================================== -->
<div class="container-fluid">
        <nav class="navbar navbar-inverse navbar-fixed-top">
              <div class="container">
                <div class="navbar-header">
                  <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;&nbsp;欢迎来到人事管理系统</a>
                </div>
              </div>
        </nav>
</div>

<!-- 巨幕 -->
<div class="jumbotron">
  <div class="container">
    	<div class="jumbotron">
		  <h1>sorry, error!</h1>
		  <p>这是400，404，500 错误的集中地</p>
		</div>
  </div>
</div>

<!--页脚-->
<footer class="bs-docs-footer" role="contentinfo" style="text-align:center;">
    <p>本项目源码受 <a href="javascript:if(confirm(%27https://github.com/twbs/bootstrap/blob/master/LICENSE  \n\nThis file was not retrieved by Teleport Pro, because it is addressed using an unsupported protocol (e.g., gopher).  \n\nDo you want to open it from the server?%27))window.location=%27https://github.com/twbs/bootstrap/blob/master/LICENSE%27" tppabs="https://github.com/twbs/bootstrap/blob/master/LICENSE" target="_blank">MIT</a> 开源协议保护，文档受 <a href="javascript:if(confirm(%27http://creativecommons.org/licenses/by/3.0/  \n\nThis file was not retrieved by Teleport Pro, because it is addressed on a domain or path outside the boundaries set for its Starting Address.  \n\nDo you want to open it from the server?%27))window.location=%27http://creativecommons.org/licenses/by/3.0/%27" tppabs="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a> 开源协议保护。</p>
    <p>开发者(作者)：束永祥</p>
    <p>当前版本： v2.0.0</p>
    <p>当前日期： 2017-08-01</p>
    <p>&middot;</p>
    <p>中文离线文档制作:束永祥</p>
    <p>中文离线文档制作日期: 2017-08-01</p>
</footer>
</body>
</html>