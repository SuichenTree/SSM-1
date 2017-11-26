<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<script>
    dataTable('#assDataTable');
</script>
<div class="pageTitle">KPI 考核--jsp/kpi-list,jsp</div>
<div class="row">
    <div class="col-lg-12">
        <div class="panel">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-lg-6">
                        <span style="font-size: 18px;"><i class="fa fa-inbox"></i> 考核列表 </span>
                    </div>
                    <div class="col-lg-3 col-lg-offset-3 text-r">
                        <div class="box-tools">
                            <a onclick="assessAdd();" class="btn btn-success" role="button"><i class="fa fa-plus"></i> 新建考核</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-body" style="position: relative; min-height: 520px;padding-bottom: 30px;">
                <div>
                    <table id="assDataTable" class="table table-bordered table-hover table-striped text-c" style="table-layout:fixed;">
                        <thead>
                            <th class="text-c">考核主题</th>
                            <th class="text-c">考核对象</th>
                            <th class="text-c">状态</th>
                            <th class="text-c">操作</th>
                        </thead>
                        <tbody id="evalprojectmessage">
                           <!--  <tr>
                                <td>2017年6-9月全体员工季度考核</td>
                                <td>全体成员</td>
                                <td style="color:none;">已完成 <span title="有过期未填写的考核!"> <i class="fa fa-exclamation-circle list" aria-hidden="true"></i></span></td>
                                <td><a onclick="seeAssProject();" class="btn btn-default" role="button">查看</a></td>
                            </tr>
                            <tr>
                                <td>2017年6-9月全体员工季度考核</td>
                                <td>产品部成员</td>
                                <td style="color:#d9534f;">草稿</td>
                                <td><a onclick="assessDetailEdit();" class="btn btn-danger" role="button">编辑</a></td>
                            </tr>
                            <tr>
                                <td>2017年6-9月全体员工季度考核</td>
                                <td>全体成员</td>
                                <td style="color:#09bb07;">考核中</td>
                                <td><a onclick="seeAssProject();" class="btn btn-suc" role="button">查看</a></td>
                            </tr>
                            <tr>
                                <td>2017年6-9月全体员工季度考核</td>
                                <td>全体成员</td>
                                <td style="color:none;">已完成</td>
                                <td><a onclick="seeAssProject();" class="btn btn-default" role="button">查看</a></td>
                            </tr>
                            <tr>
                                <td>2017年6-9月全体员工季度考核</td>
                                <td>全体成员</td>
                                <td style="color:none;">拟题中</td>
                                <td><a onclick="assessDetailEdit();" class="btn btn-default" role="button">编辑</a></td>
                            </tr> -->
                            
                        </tbody>
                        <tfoot>

                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

