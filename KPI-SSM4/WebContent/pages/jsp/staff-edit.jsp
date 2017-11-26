<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<div class="pageTitle">员工信息,jsp/staff-edit.jsp</div>
<div class="row">
    <div class="col-lg-12">
        <div class="panel">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="col-lg-12">
                            <span style="font-size: 18px;"><i class="fa fa-inbox"></i> 编辑员工信息 </span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-body" style="position: relative; min-height:520px;padding-bottom: 30px;">
                <div class="row" style="padding-right:30px;">
                    <h2 class="" style="font-weight: bold;text-align: center;margin-bottom: 30px;">基本信息</h2>
                    <form class="form-horizontal" method="post" id="staffeditform">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="staffId" class="col-sm-3 control-label">工&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号</label>
                                <div class="col-sm-9">
                                    <input type="number" class="form-control" name="work_no" id="work_no" placeholder="工号" autofocus="autofocus" min="1" max="9999" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="name" class="col-sm-3 control-label">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="name" id="name" placeholder="姓名" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="department" class="col-sm-3 control-label">部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;门</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="dept" id="dept" placeholder="部门" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="job" class="col-sm-3 control-label">岗&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="post" id="post" placeholder="岗位" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="phone" class="col-sm-3 control-label">手&nbsp;机&nbsp;&nbsp;号</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="phone" id="phone" placeholder="手机号" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="email" class="col-sm-3 control-label">公司邮箱</label>
                                <div class="col-sm-9">
                                    <input type="email" class="form-control" name="email" id="email" placeholder="公司邮箱" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="userId" class="col-sm-3 control-label">身份证号</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="id_no" id="id_no" placeholder="身份证号" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="wechatId" class="col-sm-3 control-label">微&nbsp;信&nbsp;号</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="wechat_no" id="wechat_no" placeholder="微信号" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="time" class="col-sm-3 control-label">入职日期</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="hireDate" id="hireDate" data-date-format="yyyy-mm-dd" placeholder="入职日期" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="wechatId" class="col-sm-3 control-label">账号状态</label>
                                <div class="col-sm-9">
                                    <select class="form-control" name="isActive" id="isActive">
                                        <option value="在职">在职</option>
                                        <option value="离职">离职</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-5 col-sm-offset-7 text-l" style="margin-top:60px;">
                                <div class="btn-group" role="group">
                                    <button type="button" onclick="staffEditCancel();" class="btn btn-default">放弃修改</button>
                                </div>
                                <div class="btn-group" role="group" style="margin-left:20px;">
                                    <button type="button" onclick="staffinsert()" class="btn btn-success">&nbsp;&nbsp;&nbsp;保 存&nbsp;&nbsp;&nbsp;</button>
                                </div>
                                <div class="btn-group" role="group" style="margin-left:20px;">
                                    <button type="reset" class="btn btn-default">&nbsp;&nbsp;&nbsp;重 置&nbsp;&nbsp;&nbsp;</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


