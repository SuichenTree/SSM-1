<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<div class="pageTitle">KPI 考核,jsp/kpi-send.jsp</div>
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
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-lg-2">
                                    <span style="font-size: 18px;"><i class="fa fa-inbox"></i> 考核描述 </span>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <table class="table table-bordered">
                                <tr>
                                    <td style="width:10%;" >组织者</td>
                                    <td style="width:40%;" id="organizer"></td>
                                    <td style="width:10%;">考核对象</td>
                                    <td style="width:40%;" id="object"></td>
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
                                    <td colspan="3" id="date"></td>
                                </tr>
                                <tr>
                                    <td>考核规则</td>
                                    <td colspan="3" id="rules"></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="row" style="margin-top:50px;">
                        <div class="col-lg-6 box-tools">
                            <h4><b>已发送考核表</b></h4>
                        </div>
                        <div class="col-lg-2 col-lg-offset-4 box-tools text-r">
                            <a type="button" href="#" class="btn btn-success" role="button"><i class="fa fa-outdent" aria-hidden="true"></i> 导出结果</a>
                        </div>
                    </div>
                    <div class="row" style="margin-top:30px;">
                        <div class="col-lg-12">
                            <table class="table table-bordered text-c" id="assSendDetail">
                                <thead>
                                    <th style="text-align:center;">ID</th>
                                    <th style="text-align:center;">考核领导</th>
                                    <th style="text-align:center;">状态</th>
                                    <th style="text-align:center;">自评给分</th>
                                    <th style="text-align:center;">被考核人</th>
                                    <th style="text-align:center;">领导给分</th>
                                    <th style="text-align:center;">操作</th>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>001170803001</td>
                                        <td>张三</td>
                                        <td>李四</td>
                                        <td>考核中</td>
                                        <td>80</td>
                                        <td>90</td>
                                        <td><a type="button" onclick="resultDetail();" class="btn btn-suc" role="button">查看详情</a></td>
                                    </tr>
                                    <tr>
                                        <td>001170803002</td>
                                        <td>张三</td>
                                        <td>李四</td>
                                        <td>已完成</td>
                                        <td>80</td>
                                        <td>90</td>
                                        <td><a type="button" onclick="resultDetail();" class="btn btn-suc" role="button">查看详情</a></td>
                                    </tr>
                                    <tr class="list">
                                        <td>001170803003</td>
                                        <td>李四</td>
                                        <td>王五</td>
                                        <td>已过期</td>
                                        <td>90</td>
                                        <td>70</td>
                                        <td><a type="button" onclick="resultDetail();" class="btn btn-suc" role="button">查看详情</a></td>
                                    </tr>
                                    <tr class="list">
                                        <td>001170803003</td>
                                        <td>李四</td>
                                        <td>王五</td>
                                        <td>已完成</td>
                                        <td>90</td>
                                        <td>70</td>
                                        <td><a type="button" onclick="resultDetail();" class="btn btn-suc" role="button">查看详情</a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    dataTable('#assSendDetail');
</script>



