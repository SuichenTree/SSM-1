<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> KPI考核 </title>
 	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/jqueryui/1.12.1/jquery-ui.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" />
    <link rel="stylesheet" href="https://cdn.bootcss.com/datatables/1.10.15/css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.min.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap-daterangepicker/2.1.25/daterangepicker.min.css">
    <link rel="stylesheet" href="lib/BeAlert-master/BeAlert.css">
    <link rel="stylesheet" href="dist/css/style.css">
    
   		<script src="../dist/jq/jquery.js"></script>
        <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://cdn.bootcss.com/jqueryui/1.12.1/jquery-ui.min.js"></script>
        <script src="https://cdn.bootcss.com/bootstrap-daterangepicker/2.1.25/moment.min.js"></script>
        <script src="https://cdn.bootcss.com/datatables/1.10.15/js/jquery.dataTables.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
        <script src="https://cdn.bootcss.com/datatables/1.10.15/js/dataTables.bootstrap.min.js"></script>
        <script src="https://cdn.bootcss.com/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.min.js"></script>
        <script src="https://cdn.bootcss.com/bootstrap-daterangepicker/2.1.25/daterangepicker.min.js"></script>
        <script src="lib/BeAlert-master/BeAlert.js"></script>
        <script src="../dist/js/kpi.js"></script>
        <script src="../dist/js/staff.js"></script>
        <script src="../dist/js/common.js"></script>
        
</head>
<body  class="login_bg">

 <noscript><h1>您的浏览器禁止了JS的使用，请在前往解除限制，展现最优显示效果</h1></noscript>
    <div class="container">
        <div class="row" style="margin-top: 80px;color:#fff;">
            <div class="col-lg-12 text-c">
                <h1><b>KPI考核 </b><span style="font-size:32px;">后台管理系统</span></h1>
            </div>
            <div class="col-lg-12 text-c" style="margin: 30px 0 20px;">
                <h2>管理员登录</h2><br>
                <h5>欢迎您</h5>
            </div>
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-lg-4 col-lg-offset-4">
                        <form class="form-horizontal" action="userController/login" method="post">
                            <div class="form-group">
                                <input type="text" name="userName" class="form-control" placeholder="User" id="UserName">
                            </div>
                            <div class="form-group">
                                <input type="password" name="userPassword" class="form-control" placeholder="Password" id="PassWord">
                            </div>
                            <div class="form-group">
                                <label>
                                        <input type="checkbox"> 记住我
                                </label>
                                <span class="list no" style="float:right;">账号或密码错误</span>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-success btn-block"> 登 录 </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        

</body>
</html>