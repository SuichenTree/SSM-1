<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("UTF-8");  
%>
<script type="text/javascript">

	
	
	


</script>
<div class="pageTitle">KPI 考核, jsp/kpi-detail.jsp</div>
<div class="row">
    <div class="col-lg-12">
        <div class="panel">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-lg-6">
                        <span style="font-size: 18px;"><i class="fa fa-inbox"></i> 考核详情 </span>
                    </div>
                </div>
            </div>
            <div class="panel-body" style="position: relative; min-height: 520px;padding-bottom: 30px;">
                <div style="margin-top:20px;padding:0 20px;">
                    <h3 id="title"></h3>									
                    <div class="panel panel-default" style="margin-top:20px;">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-lg-2">
                                    <span style="font-size: 18px;"><i class="fa fa-inbox"></i> 考核描述 </span>
                                </div>
                                <div class="col-lg-2 col-lg-offset-8 text-r">
                                    <div class="box-tools"><a onclick="assessDetailEdit();" class="btn btn-success btn-sm" role="button">&nbsp;<i class="fa fa-pencil-square-o" aria-hidden="true"></i> 编辑 </a></div>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <table class="table table-bordered text-c" id="tablea">
                                <tr>
                                    <td style="width:10%;">组织者</td>
                                    <td style="width:40%;" id="organizer"></td>
                                    <td style="width:10%;">考核对象</td>
                                    <td style="width:40%;" id="object" ></td>
                                </tr>
                                <tr>
                                    <td>考核类型</td>
                                    <td id="type"></td>
                                    <td>考核区间</td>
                                    <td id="typeDate"></td>
                                </tr>
                                <tr>
                                    <td>考核目标</td>
                                    <td colspan="3" id="purpose"></td>
                                </tr>
                                <tr>
                                    <td>考核日期</td>
                                    <td colspan="3" id="Date"></td>
                                </tr>
                                <tr>
                                    <td>成绩权重</td>
                                    <td colspan="3" id="weight"></td>
                                </tr>
                                <tr>
                                    <td>考核规则</td>
                                    <td colspan="3" id="rules"></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row" style="margin-top:50px;">
                        <div class="col-lg-2 box-tools">
                            <button type="button" onclick="assessSendDetail();" style="border:1px solid #09bb07;color:#09bb07;" class="btn btn-default"><i class="fa fa-paper-plane-o" aria-hidden="true"></i> 统一发送</button>
                        </div>
                        <div class="col-lg-2 col-lg-offset-8 box-tools text-r">
                            <a type="button" onclick="assessForm();" class="btn btn-success" role="button"><i class="fa fa-plus"></i> 新建考核表</a>
                        </div>
                    </div>
                    <div class="row" style="margin-top:30px;">
                        <div class="col-lg-12">
                            <table class="table table-bordered table-hover table-striped text-c" id="assDetailTable">
                                <thead>
                                    <th style="text-align:center;">ID</th>
                                    <th style="text-align:center;">被考核人</th>
                                    <th style="text-align:center;">考核领导</th>
                                    <th style="text-align:center;">状态</th>
                                    <th style="text-align:center;">操作</th>
                                </thead>
                                <tbody id="content_jsonid">
                                  <!--   <tr>
                                        <td>001170803001</td>
                                        <td>李四</td>
                                        <td>张三</td>
                                        <td>已生成</td>
                                        <td><a type="button" onclick="editAssTable();" class="btn btn-primary" role="button">编辑</a></td>
                                    </tr> -->
                                   
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



