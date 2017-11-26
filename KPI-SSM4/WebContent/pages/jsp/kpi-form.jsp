<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>



<div class="pageTitle">KPI 考核,jsp/kpi-form.jsp</div>
<div class="row">
    <div class="col-lg-12">
        <div class="panel">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-lg-6">
                        <span style="font-size: 18px;"><i class="fa fa-inbox"></i> 新建考核表 </span>
                    </div>
                    <div class="col-lg-1 col-lg-offset-5 text-r">
                        <div class="box-tools">
                            <button type="button" onclick="backDetail();" class="btn btn-success"><i class="fa fa-reply-all" aria-hidden="true"></i></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-body" style="position: relative; min-height: 520px;padding-bottom: 30px;">
                <div style="margin-top:20px;">
                    <div class="row">
                        <div class="col-lg-12">
                            <form class="form-horizontal">
                                <div class="form-group">
                                    <label for="assObject" class="col-sm-2 control-label">被考核人 :</label>
                                    <div class="col-sm-9">
                                        <select class="form-control select2" id="select1" name="select1" multiple="multiple" style="width:620px;">
                                       		<!-- select的 option标签 有ajax 查询数据库信息 ，并加载到<option>标签中 -->
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="assTarget" class="col-sm-2 control-label">考核领导 :</label>
                                    <div class="col-sm-9">
                                        <select class="form-control" id="select2" name="select2" style="width:620px;">
                                            <!-- select的 option标签 有ajax 查询数据库信息 ，并加载到<option>标签中 -->
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="" class="col-sm-2 control-label">考核内容 :</label>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-10 col-sm-offset-1" id="addPaper">
                                        <div class="panel PaperFar" id="scorePaperFar">
                                            <div class="panel-heading col-sm-12 assessTitle">
                                                <span class="panel-title">项目名称 ：<input type="text" style="border-top:0px;border-left:0px;border-right:0px;" placeholder="" name="project_name">分数 ：<input type="text" style="border-top:0px;border-left:0px;border-right:0px;width:120px;" placeholder="" name="score"></span>
                                                <span class="pull-right no assessSet">
                                                    <button type="button" onclick="Up(this,'PaperFar');" class="btn btn-default btn-sm" title="上移"><i class="fa fa-arrow-up"></i></button>
                                                    <button type="button" onclick="Down(this,'PaperFar');" class="btn btn-default btn-sm" title="下移"><i class="fa fa-arrow-down"></i></button>
                                                    <button type="button" onclick="addScoSub(this);" class="btn btn-success btn-sm" title="添加"><i class="fa fa-plus"></i></button>
                                                    <button type="button" onclick="removeScoPaper(this);" class="btn btn-danger btn-sm" title="删除"><i class="fa fa-trash"></i></button>
                                                </span>
                                            </div>
                                            <div class="panel-body">
                                                <ul id="scorePaper">
                                                    <li id="scoreSubject" class="scoreSubject">
                                                        <div class="row assessTitle">
                                                            <div class="col-sm-11">
                                                                <div class="form-group">
                                                                    <label for="" class="col-sm-1 control-label">标题</label>
                                                                    <div class="col-sm-11">
                                                                        <input type="text" class="form-control" id="title1" name="title1" placeholder="考核题目">
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="" class="col-sm-1 control-label">分数</label>
                                                                    <div class="col-sm-11">
                                                                        <input type="text" class="form-control" id="score1" name="score1" placeholder="得分">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-1 no assessSet" style="position:relative">
                                                                <div class="btn-group-vertical" style="position:absolute;top:-5px;left:-6px;">
                                                                    <button type="button" onclick="Up(this,'scoreSubject');" class="btn btn-default btn-sm" title="上移"><i class="fa fa-long-arrow-up"></i></button>
                                                                    <button type="button" onclick="removeScoSub(this);" class="btn btn-default btn-sm" title="删除"><i class="fa fa-trash"></i></button>
                                                                    <button type="button" onclick="Down(this,'scoreSubject');" class="btn btn-default btn-sm" title="下移"><i class="fa fa-long-arrow-down"></i></button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        
                      				 <div class="panel PaperFar" id="langPaperFar">
                                            <div class="panel-heading col-sm-12 assessTitle">
                                                <span class="panel-title">项目名称 ：<input type="text" name="project_name2" style="border-top:0px;border-left:0px;border-right:0px;" placeholder=""></span>
                                                <span class="pull-right no assessSet">
                                                            <button type="button" onclick="Up(this,'PaperFar');" class="btn btn-default btn-sm" title="上移"><i class="fa fa-arrow-up"></i></button>
                                                            <button type="button" onclick="Down(this,'PaperFar');" class="btn btn-default btn-sm" title="下移"><i class="fa fa-arrow-down"></i></button>
                                                            <button type="button" onclick="addLangSub(this);" class="btn btn-success btn-sm" title="添加"><i class="fa fa-plus"></i></button>
                                                            <button type="button" onclick="removeLangPaper(this);" class="btn btn-danger btn-sm" title="删除"><i class="fa fa-trash"></i></button>
                                                        </span>
                                            </div>
                                            <div class="panel-body">
                                                <ul id="languagePaper">
                                                    <li id="languageSubject" class="languageSubject">
                                                        <div class="row assessTitle">
                                                            <div class="col-sm-11">
                                                                <div class="form-group">
                                                                    <label for="" class="col-sm-1 control-label">标题</label>
                                                                    <div class="col-sm-11">
                                                                        <input type="text" class="form-control" name="title2" placeholder="考核题目">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-1 no assessSet" style="position:relative">
                                                                <div class="btn-group-vertical" style="position:absolute;top:-30px;left:-6px;">
                                                                    <button type="button" onclick="Up(this,'languageSubject');" class="btn btn-default btn-sm" title="上移"><i class="fa fa-long-arrow-up"></i></button>
                                                                    <button type="button" onclick="removeLangSub(this);" class="btn btn-default btn-sm" title="删除"><i class="fa fa-trash"></i></button>
                                                                    <button type="button" onclick="Down(this,'languageSubject');" class="btn btn-default btn-sm" title="下移"><i class="fa fa-long-arrow-down"></i></button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div> 
                                        
                                        
                                    
                                    </div>
                                    <div class="col-sm-8 col-sm-offset-2">
                                        <div style="margin-bottom:10px;">
                                            <button type="button" id="addAssProject" class="btn btn-success btn-block"><i class="fa fa-plus"></i> 添加考核项</button>
                                        </div>
                                        <div class="no" id="addAssClass">
                                            <button type="button" onclick="addScorePaper();" class="btn btn-default btn-block addAssScoreClass"><i class="fa fa-plus"></i> 评分类</button>
                                            <button type="button" onclick="addLangPaper();" class="btn btn-default btn-block addAssLangClass"><i class="fa fa-plus"></i> 评语类</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="row" style="margin:60px 0;">
                        <div class="col-lg-2 col-lg-offset-2">
                            <button type="button" onclick="AssTableDraft();" class="btn btn-default" style="border:1px solid #393;color:#393;">保存草稿</button>
                        </div>
                        <div class="col-lg-6 text-r">
                            <button type="button" onclick="reseaseAssTable();" class="btn btn-success">&nbsp;&nbsp;&nbsp;发 布&nbsp;&nbsp;&nbsp;</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $('.select2').select2({
        placeholder: "请添加",
        allowClear: true
    })
    $('.assessTitle').hover(function() {
        $(this).children('.assessSet').show();
    }, function() {
        $(this).children('.assessSet').hide();
    })
    $('#addAssProject').click(function() {
        $('#addAssClass').slideToggle();
    })
    $('#addAssClass>.addAssScoreClass,#addAssClass>.addAssLangClass').click(function() {
        $('#addAssClass').slideUp();
    })
</script>



