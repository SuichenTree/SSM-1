<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <title>index.jsp</title>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-info navbar-dark">
  <ul class="navbar-nav">
    <li class="nav-item active">
      <a class="nav-link" href="#">LOGO</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#" data-toggle="modal" data-target="#myModal">Register</a>
    </li>
  </ul>
</nav>

<div class="container">
  <h2>登录</h2>
  <form action="user/login" method="post">
    <div class="form-group">
      <label for="email">username</label>
      <input type="text" class="form-control" id="name1" name="name" placeholder="Username" required/>
      <div class="invalid-feedback">格式不正确(/^[a-z0-9_-]{3,16}$/)</div>  
    </div>
    <div class="form-group">
      <label for="pwd">Password</label>
      <input type="password" class="form-control" id="pwd1" name="password" placeholder="Password" required/>
      <div class="invalid-feedback">格式不正确(/^[a-z0-9_-]{6,18}$/;)</div>  
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

<!-- 注册模态框 -->
<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <!-- 模态框头部 -->
      <div class="modal-header">
        <h4 class="modal-title">注册</h4>
      </div>
      <!-- 模态框主体 -->
      <div class="modal-body">
			<form action="user/Register" method="post">
				<div class="form-group">
					<label for="email">username</label>
					<input type="text" class="form-control" id="name" name="name" placeholder="Username" required/>
				</div>
				<div class="form-group">
					<label for="pwd">Password</label>
				    <input type="password" class="form-control" id="pwd" name="password" placeholder="Password" required/>
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
	  </div>
      <!-- 模态框底部 -->
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>
