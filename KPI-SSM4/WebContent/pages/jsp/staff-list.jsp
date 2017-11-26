<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
window.onload=function(){
staffshow();
} 
</script>

<div class="pageTitle">员工信息,jsp/staff-list.jsp</div>
<div class="row">
    <div class="col-lg-12">
        <div class="panel">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="col-lg-6">
                            <span style="font-size: 18px;"><i class="fa fa-inbox"></i> 在职员工 </span>
                        </div>
                        
                        <div class="col-lg-3 col-lg-offset-1">
                        
                           <div class="row">
                                <div class="input-group">
                                    <input type="text" id="searchinput1" class="form-control" style="height:32px;" placeholder="姓名/手机号/岗位 ···">
                                    <div class="input-group-btn">
                                        <button type="button" onclick="searchemployee();" class="btn btn-success"><i class="fa fa-search "></i></button>
                                    </div>
                                </div>
                            </div>
                          
                        </div>
                        <div class="col-lg-2 text-r">
                            <div class="box-tools"><button type="button" onclick="staffEntry();" class="btn btn-success"><i class="fa fa-plus"></i> 添加员工</button></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-body" style="position: relative; min-height: 560px;padding-bottom: 30px;">
                <div>
                    <table id="staDataTable" class="table table-bordered table-hover table-striped text-c" style="table-layout:fixed;">
                        <thead>
                            <th class="text-c" style="width:10%;">员工ID</th>
                            <th class="text-c" style="width:10%;">姓名</th>
                            <th class="text-c" style="width:10%;">部门</th>
                            <th class="text-c" style="width:15%;">岗位</th>
                            <th class="text-c">邮箱</th>
                            <th class="text-c">手机号</th>
                            <th class="text-c" style="width:15%;">操作</th>
                        </thead>
                        <tbody id="tbody">
                            <!-- <tbody> 标签的内容，通过ajax 查询数据库信息，在填充到表格的<tbody>标签内 -->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

