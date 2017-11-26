<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index.jsp</title>
<script>

window.onload=function(){
staffshow();
} 
</script>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/jqueryui/1.12.1/jquery-ui.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" />
    <link rel="stylesheet" href="https://cdn.bootcss.com/datatables/1.10.15/css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap-daterangepicker/2.1.25/daterangepicker.min.css">
    <link rel="stylesheet" href="./lib/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" href="./lib/BeAlert-master/BeAlert.css">
    <link rel="stylesheet" href="./dist/css/base.css">
    <link rel="stylesheet" href="./dist/css/style.css">


	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.bootcss.com/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
    <script src="https://cdn.bootcss.com/datatables/1.10.15/js/dataTables.bootstrap.min.js"></script>
    <script src="./lib/input-mask/jquery.inputmask.js"></script>
    <script src="./lib/input-mask/jquery.inputmask.date.extensions.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap-daterangepicker/2.1.25/daterangepicker.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap-daterangepicker/2.1.25/moment.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery.inputmask/3.3.4/inputmask/inputmask.date.extensions.min.js"></script>
    <script src="./lib/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
    <script src="./lib/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
    <script src="./lib/BeAlert-master/BeAlert.js"></script>
    <script src="./dist/js/kpi.js"></script>
    <script src="./dist/js/staff.js"></script>
    <script src="./dist/js/common.js"></script>
   
    
</head>
<body>


 <div class="head">
        <div class="head_box">
            <div class="inner">
                <div class="headLeft text-c">
                    <a href="index.html"></a>
                </div>
                <div class="headRight fr">
                    <div style="border-right:1px solid #ccc;padding-right:10px;"><a href="javascript:(0);"><i class="fa fa-user-circle-o fa-fw"></i> user</a></div>
                    <div><a href="#" onclick="signOut();" role="button"><i class="fa fa-sign-out fa-fw"></i>注销</a></div>
                </div>
            </div>
        </div>
    </div>
    <div id="body" class="body">
        <div id="js_container_box" class="container_box cell_layout side_l">
            <div class="col_side">
                <div class="menu_box" id="menuBar">
                    <dl class="menu no_extra">
                        <dt class="menu_title  clickable   selected"> 
                            <a href="index.jsp"><i class="fa fa-home fa-2x" aria-hidden="true"></i>  首 页</a>
                        </dt>
                    </dl>
                    <dl class="menu">
                        <dt class="menu_title"><i class="fa fa-universal-access" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;考 核</dt>
                        <dd class="menu_item "><a onclick="assess();" role="button"><i class="fa fa-circle-o"></i> KPI 考核 </a></dd>
                        <dd class="menu_item "><a href="#"><i class="fa fa-circle-o"></i> 360 考核</a></dd>
                        <dd class="menu_item "><a href="#"><i class="fa fa-circle-o"></i> OKR 考核</a></dd>
                    </dl>
                    <dl class="menu ">
                        <dt class="menu_title"><i class="fa fa-id-card" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;员 工</dt>
                        <dd class="menu_item "><a onclick="staffshow();" role="button"><i class="fa fa-circle-o"></i> 员工信息 </a></dd>
                        <dd class="menu_item "><a href="#"><i class="fa fa-circle-o"></i> 离职员工 </a></dd>
                    </dl>
                </div>
            </div>
            <div class="col_main" id="contentWrapper">
            </div>
        </div>
    </div>
    <div class="foot" id="footer">
        <ul class="links ft">
            <li class="links_item">
                <p class="copyright">Copyright © 2017 All Rights Reserved.</p>
            </li>
        </ul>
    </div>
   
<script>
    $('.menu_box').find('dd>a').on('click', function() {
        $('.no_extra>dt>a').css({
            'color': '#000',
            'backgroundColor': '#eee'
        })
        $('.menu_box').find('dd>a').each(function(index, ele) {
            $(ele).css({
                'color': '#000',
                'backgroundColor': '#fff'
            });
        })
        $(this).css({
            'color': '#fff',
            'backgroundColor': '#09bb07'
        });
    })
</script>
    
    
</body>
</html>