<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("UTF-8");  
%>
<script>
    $('#assStart,#assStop').inputmask("yyyy/mm/dd");
    $("#startTime").datetimepicker({
        autoclose: true
    });
    $("#stopTime").datetimepicker({
        autoclose: true
    });
    rangeTime('.assStartTime', '.assStopTime');
    rangeTime('.assStopTime', '.assStartTime');
    $("#assType").change(function() {
        $(".assStartTime").datepicker("option", "dateFormat", $(this).val() == '月季考核' ? 'yy/mm/dd' : 'yy/mm');
    });
    $("#assType").change(function() {
        $(".assStopTime").datepicker("option", "dateFormat", $(this).val() == '月季考核' ? 'yy/mm/dd' : 'yy/mm');
    });
    rangeTime('.startTime', '.stopTime');
    rangeTime('.stopTime', '.startTime');
    $(".startTime").datepicker("option", "dateFormat", "yy-mm-dd");
    $(".stopTime").datepicker("option", "dateFormat", "yy-mm-dd");
</script>

<div class="pageTitle">KPI 考核，jsp/kpi-add.jsp</div>
<div class="row">
    <div class="col-lg-12">
        <div class="panel">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-lg-6">
                        <span style="font-size: 18px;"><i class="fa fa-inbox"></i> 新建考核 </span>
                    </div>
                    <div class="col-lg-1 col-lg-offset-3 text-r">
                        <div class="box-tools">
                            <button type="button" onclick="backlist();" class="btn btn-success"><i class="fa fa-reply-all" aria-hidden="true"></i></button>
                        </div>
                    </div>
                    <div class="col-lg-2 text-r">
                        <div class="box-tools">
                            <button type="button" onclick="assFormReset('assAdd');" class="btn btn-success"><i class="fa fa-times" aria-hidden="true"></i> 清空</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-body" style="position: relative; min-height: 520px;padding:0px 50px 30px 0px;">
                <div style="margin-top:20px;">
                    <form class="form-horizontal" id="assAdd" method="post">
                        <div class="form-group">
                            <label for="assName" class="col-sm-2 control-label">考核名称</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="title" id="title" placeholder="考核名称" autofocus="autofocus">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="organizer" class="col-sm-2 control-label">组&nbsp;织&nbsp;&nbsp;者</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="organizer" id="organizer" placeholder="组织者">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">考核类型</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="type" id="type">
                                                    <option value="">全部类型</option>
                                                    <option value="1">月季考核</option>
                                                    <option value="2">季度考核</option>
                                                    <option value="3">半年度考核</option>
                                                    <option value="4">年度考核</option>
                                                    <option value="">其他</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="assStart" class="col-sm-2 control-label">考核区间</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control assStartTime" name="typeDateStart" id="assStart">
                            </div>
                            <div class="col-sm-5">
                                <input type="text" class="form-control assStopTime" name="typeDateEnd" id="assStop">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="assObject" class="col-sm-2 control-label">考核对象</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="object" id="object" placeholder="考核对象">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="assTarget" class="col-sm-2 control-label">考核目标</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="purpose" id="purpose" placeholder="考核目标">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="assTarget" class="col-sm-2 control-label">成绩权重</label>
                            <label class="col-sm-3 control-label text-l">最终KPI<i>&nbsp;&nbsp;&nbsp;=&nbsp;&nbsp;&nbsp;自评给分总分&nbsp;&nbsp;&nbsp;*</i></label>
                            <div class="col-sm-2">
                                <input type="text" class="form-control" name="weightA" id="weightA" placeholder="自评给分">
                            </div>
                            <label class="col-sm-2 control-label"><i>+&nbsp;&nbsp;&nbsp;领导给分&nbsp;&nbsp;&nbsp;*</i></label>
                            <div class="col-sm-3">
                                <input type="text" class="form-control" name="weightB" id="weightB" placeholder="领导给分">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="assTarget" class="col-sm-2 control-label">考核日期</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control startTime" name="startDate" id="startTime" placeholder="开考日期">
                            </div>
                            <div class="col-sm-5">
                                <input type="text" class="form-control stopTime" name="endDate" id="stopTime" placeholder="结考日期">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="assRule" class="col-sm-2 control-label">考核规则</label>
                            <div class="col-sm-10">
                                <textarea class="form-control" name="rules" rows="4" aria-valuemax="1000" valuetext=""></textarea>
                            </div>
                        </div>
                        <div class="form-group" style="margin-top:30px;">
                            <div class="col-sm-offset-7 col-sm-1">
                                <button type="button" onclick="assAddDraft();" class="btn btn-default" style="border:1px solid #393;">保存草稿</button>
                            </div>
                            <div class="col-sm-offset-1 col-sm-1">
                                <button type="button" onclick="assessAddProject();" class="btn btn-success">生成项目</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
