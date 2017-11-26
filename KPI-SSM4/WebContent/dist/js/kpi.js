// 加载考核第一页

function assess() {
	
	 $.ajax({
	 	 type:"POST",              			 			//提交方式为post
	 	 dataType:"json",  								//当dataType 设置为json时，ajax所接受的数据必须符合json格式,否则，会一直执行error的回调函数。
        url:"evalprojectController/selectAllevalproject",
        success: function(data){     					//作为参数的data是从服务器端的传来的数据，例如这里是从evalprojectController/insertevalproject标记的处理方法return 返回的数据
        $('#contentWrapper').load(Path + 'jsp/kpi-list.jsp', function() {
       	 		for(var i=0;i<data.length;i++){                                       //用js操作DOM，来配合ajax动态生成表格
       	 			$("#evalprojectmessage").append("<tr>"+
                                "<td>"+data[i].title+"</td>"+
                                "<td>"+data[i].object+"</td>"+
                                "<td style='color:none;'>已完成</td>"+
                                "<td><a onclick='seeAssProject(this);' class='btn btn-default' role='button'>查看</a></td></tr>");
   
       	 		} 		
       	 	});
       	
        },
        error : function() {
       	alert("assess() ,error");
       	
        }
    });
    
}



// 新建考核
function assessAdd() {
	
    $('#contentWrapper').load(Path + 'jsp/kpi-add.jsp', function() {});
}
// 清空新建考核
function assFormReset(formId) {
    confirm("确认清空所有内容吗？", "", function(isConfirm) {
        if (isConfirm) {
            formReset(formId);
        }
    }, {
        confirmButtonText: '确认',
        cancelButtonText: '取消'
    });
}
// 新建考核保存草稿
function assAddDraft() {
    alert("保存草稿", "", function() {
        $('#contentWrapper').load(Path + 'jsp/kpi-list.jsp', function() {})
    }, {
        type: 'success',
        confirmButtonText: '确认'
    });
}
// 生成考核项目
function assessAddProject() {
	 $.ajax({
		 	 type:"POST",              			 			//提交方式为post
		 	 dataType:"json",  								//当dataType 设置为json时，ajax所接受的数据必须符合json格式,否则，会一直执行error的回调函数。
             url:"evalprojectController/insertevalproject",
             data: $('#assAdd').serialize(),    			//这里的data是从表单传来的数据,格式必须符合dataType的值
             success: function(data){     					//作为参数的data是从服务器端的传来的数据，例如这里是从evalprojectController/insertevalproject标记的处理方法return 返回的数据
            	//alert("data:  "+data.title); 				 //这里的data为json字符串格式，data.title的值是data 这个json字符串的title的值
            	console.log(data);		 
            	 $('#contentWrapper').load(Path + 'jsp/kpi-detail.jsp', function() {
            		 
            		 var title1=document.getElementById("title");
            		 var organizer1=document.getElementById("organizer");
            		 var type1=document.getElementById("type");						
            		 var object1=document.getElementById("object");
            		 var typeDate1=document.getElementById("typeDate");
            		 var purpose1=document.getElementById("purpose");
            		 var weight1=document.getElementById("weight");
            		 var Date1=document.getElementById("Date");
            		 var rules1=document.getElementById("rules");

            		 
            		 organizer1.innerHTML=data.organizer;
            		
            		 if(data.type==='1'){
            			 type1.innerHTML='月季考核';	
            		 }else if(data.type==='2'){
            			 type1.innerHTML='季度考核';
            		 }else if(data.type==='3'){
            			 type1.innerHTML='半年度考核';
            		 }else if(data,type==='4'){
            			 type1.innerHTML='年度考核';
            		 }else{
            			 type1.innerHTML='其他';
            		 }
            			
            							//若要把传来的数据填写到表格中，使用innerHTML属性进行添值
            		 title1.innerHTML=data.title;
            		 object1.innerHTML=data.object;
            		 typeDate1.innerHTML=data.typeDateStart+"——"+data.typeDateEnd;
            		 purpose1.innerHTML=data.purpose;
            		 weight1.innerHTML=data.weightA+"——"+data.weightB;
            		 Date1.innerHTML=data.startDate+"——"+data.endDate;
            		 rules1.innerHTML=data.rules;
            		
            	 });
            	
             },
               
             error : function(data) {
            	 console.log(data);		 
            	alert("assessAddProject() ,error");
            	
             }
         });
	
}
// 进入编辑考核
function assessDetailEdit() {
	 var title1=$("#title").text();
	 var organizer1=document.getElementById("organizer").innerHTML;
	 var type1=document.getElementById("type").innerHTML;						
	 var object1=document.getElementById("object").innerHTML;
	 var typeDate1=document.getElementById("typeDate").innerHTML;
	 var purpose1=document.getElementById("purpose").innerHTML;
	 var weight1=document.getElementById("weight").innerHTML;
	 var Date1=document.getElementById("Date").innerHTML;
	 var rules1=document.getElementById("rules").innerHTML;
	 
	$.ajax({
		type:"post",
		datatype:"json",
		url:"evalprojectController/submitevalproject",
		success: function(result){
			console.log(result);
			$('#contentWrapper').load(Path + 'jsp/kpi-edit.jsp', function() {
				document.getElementById("title").value=title1;
        		document.getElementById("organizer").value=organizer1;
        		document.getElementById("type").value=type1;						
        		  document.getElementById("object").value=object1;
        		  
        		  var td=typeDate1.split("——");            //把表格拼接的字符串,拆开，分别赋值给表单的两个空格处
        		  document.getElementById("assStart").value=td[0];
        		  document.getElementById("assStop").value=td[1];
        		 
        		  var we=weight1.split("——");            //把表格拼接的字符串,拆开，分别赋值给表单的两个空格处
        		  document.getElementById("weightA").value=we[0];
        		  document.getElementById("weightB").value=we[1];
        		  
        		  var da=Date1.split("——");            //把表格拼接的字符串,拆开，分别赋值给表单的两个空格处
        		  document.getElementById("time1").value=da[0];
        		  document.getElementById("time2").value=da[1];
        		  
        		  
        		document.getElementById("purpose").value=purpose1;
        		
        		
        		 document.getElementById("rules").value=rules1;

				
			});
		},
		error: function(){
			alert("assessDetailEdit(),errror");
		}
		
		
		
		
	});
	
	
	
   
	

}




// 考核编辑保存草稿
function assAddEditDraft() {
    alert("保存草稿", "", function() {
        $('#contentWrapper').load(Path + 'jsp/kpi-detail.jsp', function() {});
    }, {
        type: 'success',
        confirmButtonText: '确认'
    });
}
// 考核发布
function editAssResease() {
	$.ajax({
	 	type:"POST",              			 			//提交方式为post
	 	dataType:"json",  								//当dataType 设置为json时，ajax所接受的数据必须符合json格式,否则，会一直执行error的回调函数。
        url:"evalprojectController/submitevalproject",
        data: $('#assDetailEdit').serialize(),    			//这里的data是从表单传来的数据,格式必须符合dataType的值
        success: function(data){     					//作为参数的data是从服务器端的传来的数据，例如这里是从evalprojectController/insertevalproject标记的处理方法return 返回的数据
       	alert(data.title); 				 //这里的data为json字符串格式，data.title的值是data 这个json字符串的title的值
       	console.log(data);		 
        alert("编辑考核项目成功", "", function() {
            $('#contentWrapper').load(Path + 'jsp/kpi-detail.jsp', function() {
            	
            	 var title1=document.getElementById("title");
          		 var organizer1=document.getElementById("organizer");
          		 var type1=document.getElementById("type");						
          		 var object1=document.getElementById("object");
          		 var typeDate1=document.getElementById("typeDate");
          		 var purpose1=document.getElementById("purpose");
          		 var weight1=document.getElementById("weight");
          		 var Date1=document.getElementById("Date");
          		 var rules1=document.getElementById("rules");

          		 
          		 organizer1.innerHTML=data.organizer;
          		
          		 if(data.type==='1'){
        			 type1.innerHTML='月季考核';	
        		 }else if(data.type==='2'){
        			 type1.innerHTML='季度考核';
        		 }else if(data.type==='3'){
        			 type1.innerHTML='半年度考核';
        		 }else if(data,type==='4'){
        			 type1.innerHTML='年度考核';
        		 }else{
        			 type1.innerHTML='其他';
        		 }
          		 
          							//若要把传来的数据填写到表格中，使用innerHTML属性进行添值
          		 title1.innerHTML=data.title;
          		 object1.innerHTML=data.object;
          		 typeDate1.innerHTML=data.typeDateStart+"——"+data.typeDateEnd;
          		 purpose1.innerHTML=data.purpose;
          		 weight1.innerHTML=data.weightA+"——"+data.weightB;
          		 Date1.innerHTML=data.startDate+"——"+data.endDate;
          		 rules1.innerHTML=data.rules;
			
			     });
            
			    }, {
			        type: 'success',
			        confirmButtonText: '确认'
			    });
       	
       
	
        },
          
        error : function(data) {
       	
       	alert("editAssResease() ,error");
       	
        }
    });

	
	
   
}
// 查看考核项目
function seeAssProject(obj) {
	var kaohe_title=$(obj).parents().children("td").eq(0).text();        //获取点击按钮所在行的第一个单元格的值
	
	$.ajax({
		type:"POST",
		dataType:"json",
		url:"evalprojectController/selectevalproject",
		data:{"title":kaohe_title},                                //data,是传到url所指的方法的参数
		success: function(result){
		
			$('#contentWrapper').load(Path + 'jsp/kpi-send.jsp', function() {
				document.getElementById("title").innerHTML=result.title;
				document.getElementById("organizer").innerHTML=result.organizer;
				document.getElementById("object").innerHTML=result.object;
				document.getElementById("type").innerHTML=result.type;
				document.getElementById("typeDate").innerHTML=result.typeDateStart+"——"+result.typeDateEnd;
				document.getElementById("purpose").innerHTML=result.purpose;
				document.getElementById("date").innerHTML=result.startDate+"——"+result.startDate;
				document.getElementById("rules").innerHTML=result.rules;
						
		    });
		},
		error: function(){
			alert("seeAssProject(), error");
		}
		
		
	});
	
	
	
	
	
	
    
}
// 新建考核表
function assessForm() {
    $.ajax({
		
	 	 type:"GET",              			 			//提交方式为post
	 	 dataType:"json",  								//当dataType 设置为json时，ajax所接受的数据必须符合json格式,否则，会一直执行error的回调函数。
	 	 url:"employeeController/selectallemployee",
	 	// data: $('#addStaffForm').serialize(),    			//这里的data是从表单传来的数据,格式必须符合dataType的值
	 	 	
	 	 	success: function(data){     					//作为参数的data是从服务器端的传来的数据，例如这里是从evalprojectController/insertevalproject标记的处理方法return 返回的数据
       	 	//alert("name:  "+data[0].name);                 //data为json字符串格式，data[0].name 是结果集的第一个employee对象的name值
	 	 	
       	 	//load加载函数的function函数的data为seccess函数的data
       	 	$('#contentWrapper').load(Path + 'jsp/kpi-form.jsp', function() {
       	 			for(var i=0;i<data.length;i++){                              
       	 				$("#select1").append("<option>" + data[i].name + "</option>");
       	 				$("#select2").append("<option>" + data[i].name + "</option>");
       	 			}
       	 		
       	 	});
       	 	},
	        error : function() {
	       	alert("staffEdit() ,error");
	       	
	        }
    });
	
	 
}



// 添加评分项
function addScorePaper(e) {
    $('#addPaper').append('<div class="panel PaperFar"id="scorePaperFar"><div class="panel-heading col-sm-12 assessTitle"><span class="panel-title">项目名称：<input type="text"style="border-top:0px;border-left:0px;border-right:0px;"placeholder="">分数：<input type="text"style="border-top:0px;border-left:0px;border-right:0px;width:120px;"placeholder=""></span><span class="pull-right no assessSet"><button type="button"onclick="Up(this,\'PaperFar\');"class="btn btn-default btn-sm"title="上移"><i class="fa fa-arrow-up"></i></button><button type="button"onclick="Down(this,\'PaperFar\');"class="btn btn-default btn-sm"title="下移"><i class="fa fa-arrow-down"></i></button><button type="button"onclick="addScoSub(this);"class="btn btn-success btn-sm"title="添加"><i class="fa fa-plus"></i></button><button type="button"onclick="removeScoPaper(this);"class="btn btn-danger btn-sm"title="删除"><i class="fa fa-trash"></i></button></span></div><div class="panel-body"><ul id="scorePaper"><li id="scoreSubject"class="scoreSubject"><div class="row assessTitle"><div class="col-sm-11"><div class="form-group"><label for=""class="col-sm-1 control-label">标题</label><div class="col-sm-11"><input type="text"class="form-control"id=""placeholder="考核题目"></div></div><div class="form-group"><label for=""class="col-sm-1 control-label">分数</label><div class="col-sm-11"><input type="text"class="form-control"id=""placeholder="得分"></div></div></div><div class="col-sm-1 no assessSet"><div class="btn-group-vertical"><button type="button"onclick="Up(this,\'scoreSubject\');"class="btn btn-default btn-sm"title="上移"><i class="fa fa-long-arrow-up"></i></button><button type="button"onclick="removeScoSub(this);"class="btn btn-default btn-sm"title="删除"><i class="fa fa-trash"></i></button><button type="button"onclick="Down(this,\'scoreSubject\');"class="btn btn-default btn-sm"title="下移"><i class="fa fa-long-arrow-down"></i></button></div></div></div></li></ul></div></div>');
    $('.assessTitle').hover(function() {
        $(this).children('.assessSet').show();
    }, function() {
        $(this).children('.assessSet').hide();
    })
}
// 删除评分项
function removeScoPaper(e) {
    confirm("确认删除该考核项吗？", "", function(isConfirm) {
        if (isConfirm) {
            $(e).parents("#scorePaperFar").remove();
        }
    }, {
        confirmButtonText: '确认',
        cancelButtonText: '取消'
    });
}
// 添加评语项
function addLangPaper(e) {
    $('#addPaper').append('<div class="panel PaperFar"id="langPaperFar"><div class="panel-heading col-sm-12 assessTitle"><span class="panel-title">项目名称：<input type="text"style="border-top:0px;border-left:0px;border-right:0px;"placeholder="">分数：<input type="text"style="border-top:0px;border-left:0px;border-right:0px;width:120px;"placeholder=""></span><span class="pull-right no assessSet"><button type="button"onclick="Up(this,\'PaperFar\');"class="btn btn-default btn-sm"title="上移"><i class="fa fa-arrow-up"></i></button><button type="button"onclick="Down(this,\'PaperFar\');"class="btn btn-default btn-sm"title="下移"><i class="fa fa-arrow-down"></i></button><button type="button"onclick="addLangSub(this);"class="btn btn-success btn-sm"title="添加"><i class="fa fa-plus"></i></button><button type="button"onclick="removeLangPaper(this);"class="btn btn-danger btn-sm"title="删除"><i class="fa fa-trash"></i></button></span></div><div class="panel-body"><ul id="languagePaper"><li id="languageSubject"class="languageSubject"><div class="row assessTitle"><div class="col-sm-11"><div class="form-group"><label for=""class="col-sm-1 control-label">标题</label><div class="col-sm-11"><input type="text"class="form-control"id=""placeholder="考核题目"></div></div><div class="form-group"><label for=""class="col-sm-1 control-label">评语</label><div class="col-sm-11"><input type="text"class="form-control"id=""placeholder="评语"></div></div></div><div class="col-sm-1 no assessSet"><div class="btn-group-vertical"><button type="button"onclick="Up(this,\'languageSubject\');"class="btn btn-default btn-sm"title="上移"><i class="fa fa-long-arrow-up"></i></button><button type="button"onclick="removeLangSub(this);"class="btn btn-default btn-sm"title="删除"><i class="fa fa-trash"></i></button><button type="button"onclick="Down(this,\'languageSubject\');"class="btn btn-default btn-sm"title="下移"><i class="fa fa-long-arrow-down"></i></button></div></div></div></li></ul></div></div>');
    $('.assessTitle').hover(function() {
        $(this).children('.assessSet').show();
    }, function() {
        $(this).children('.assessSet').hide();
    })
}
// 删除评语项
function removeLangPaper(e) {
    confirm("确认删除该考核项吗？", "", function(isConfirm) {
        if (isConfirm) {
            $(e).parents("#langPaperFar").remove();
        }
    }, {
        confirmButtonText: '确认',
        cancelButtonText: '取消'
    });
}
// 添加评分题目
function addScoSub(e) {
    $(e).parents('#scorePaperFar').find('#scorePaper').append('<li id="scoreSubject"class="scoreSubject"><div class="row assessTitle"><div class="col-sm-11"><div class="form-group"><label for=""class="col-sm-1 control-label">标题</label><div class="col-sm-11"><input type="text"class="form-control"id=""placeholder="考核题目"></div></div><div class="form-group"><label for=""class="col-sm-1 control-label">分数</label><div class="col-sm-11"><input type="text"class="form-control"id=""placeholder="得分"></div></div></div><div class="col-sm-1 no assessSet"><div class="btn-group-vertical"><button type="button"onclick="Up(this,\'scoreSubject\');"class="btn btn-default btn-sm"title="上移"><i class="fa fa-long-arrow-up"></i></button><button type="button"onclick="removeScoSub(this);"class="btn btn-default btn-sm"title="删除"><i class="fa fa-trash"></i></button><button type="button"onclick="Down(this,\'scoreSubject\');"class="btn btn-default btn-sm"title="下移"><i class="fa fa-long-arrow-down"></i></button></div></div></div></li>');
    $('.assessTitle').hover(function() {
        $(this).children('.assessSet').show();
    }, function() {
        $(this).children('.assessSet').hide();
    })
}
// 删除评分题目
function removeScoSub(e) {
    confirm("确认删除该题吗？", "", function(isConfirm) {
        if (isConfirm) {
            $(e).parents("#scoreSubject").remove();
        }
    }, {
        confirmButtonText: '确认',
        cancelButtonText: '取消'
    });
}
// 添加评语题目
function addLangSub(e) {
    $(e).parents('#langPaperFar').find('#languagePaper').append('<li id="languageSubject"class="languageSubject"><div class="row assessTitle"><div class="col-sm-11"><div class="form-group"><label for=""class="col-sm-1 control-label">标题</label><div class="col-sm-11"><input type="text"class="form-control"id=""placeholder="考核题目"></div></div><div class="form-group"><label for=""class="col-sm-1 control-label">评语</label><div class="col-sm-11"><input type="text"class="form-control"id=""placeholder="评语"></div></div></div><div class="col-sm-1 no assessSet"><div class="btn-group-vertical"><button type="button"onclick="Up(this,\'languageSubject\');"class="btn btn-default btn-sm"title="上移"><i class="fa fa-long-arrow-up"></i></button><button type="button"onclick="removeLangSub(this);"class="btn btn-default btn-sm"title="删除"><i class="fa fa-trash"></i></button><button type="button"onclick="Down(this,\'languageSubject\');"class="btn btn-default btn-sm"title="下移"><i class="fa fa-long-arrow-down"></i></button></div></div></div></li>');
    $('.assessTitle').hover(function() {
        $(this).children('.assessSet').show();
    }, function() {
        $(this).children('.assessSet').hide();
    })
}
// 删除评语题目
function removeLangSub(e) {
    confirm("确认删除该题吗？", "", function(isConfirm) {
        if (isConfirm) {
            $(e).parents("#languageSubject").remove();
        }
    }, {
        confirmButtonText: '确认',
        cancelButtonText: '取消'
    });
}
// 删除考核项目
function assRemoveTable(e) {
    confirm("确认删除考核项目吗？", "", function(isConfirm) {
        if (isConfirm) {
            $(e).parents("#box").remove();
        }
    }, {
        confirmButtonText: '确认',
        cancelButtonText: '取消'
    });
}

// 发布考核表

function reseaseAssTable() {
	
	var s1=$("#select1").find("option:selected").text();      //获取选中的<option> 的值
	var s2=$("#select2").find("option:selected").text(); 
	
		
	var project_name=$("input:text[name='project_name']").val();           //获取<input> 标签中 type=‘text’ ，name="project_name" 的值
	var score=$("input:text[name='score']").val();
	
	
	var title1=$("input:text[name='title1']").val();
	var score1=$("input:text[name='score1']").val();

	var project_name2=$("input:text[name='project_name2']").val();
	
	var title2=$("input:text[name='title2']").val();
	
	console.log(s1+"  "+s2+"  "+project_name+"  "+score+"  "+title1+"  "+score1+"  "+project_name2+"  "+title2);
	
	var content_json="{'examinees':[{'companyNo':'{12121}','name':"+s1+",'no':10 }],'rater':{'companyNo':'{12121}','name':"+s2+",'no':10 }"+
					",'sections':[{'questions':[{'score':"+score1+",'title':"+title1+"}],'score':"+score+",'title':"+project_name+",'type':1},"+
					"{'questions':[{'title':"+title2+"}],'title':"+project_name2+",'type':2}]}";
					
	


	$.ajax({
		type:"post",
		datetype:"json",
		url:"evalformController/insertevalform",
		data:{"content_json":content_json},
		success: function(result){
			alert("发布考核表成功", "", function() {
		        $('#contentWrapper').load(Path + 'jsp/kpi-detail.jsp', function() {
		        	$("#content_jsonid").append("<tr><td>1212121</td><td>"+s1+"</td><td>"+s2+"</td><td>已生成</td><td><a type='button' onclick='editAssTable();' class='btn btn-primary' role='button'>编辑</a></td></tr>");

		        });
		    });
					
		},
		error: function(){
			alert("reseaseAssTable()  ,error");
		}
		
		
		
	});
	
	

}
 保存考核表
function AssTableDraft() {
    confirm("确认保存考核表为草稿吗？", "", function(isConfirm) {
        if (isConfirm) {
            $('#contentWrapper').load(Path + 'jsp/kpi-detail.jsp', function() {});
        }
    }, {
        confirmButtonText: '确认',
        cancelButtonText: '取消'
    });
}
// 编辑考核表
function editAssTable() {
    confirm("确认编辑考核表吗？", "", function(isConfirm) {
        if (isConfirm) {
            $('#contentWrapper').load(Path + 'jsp/kpi-form.jsp', function() {});
        }
    }, {
        confirmButtonText: '确认',
        cancelButtonText: '取消'
    });
}
// 统一发送
function assessSendDetail() {
    confirm("确认发送吗？", "", function(isConfirm) {
        if (isConfirm) {
            $('#contentWrapper').load(Path + 'jsp/kpi-send.jsp', function() {});
        }
    }, {
        confirmButtonText: '确认',
        cancelButtonText: '取消'
    });
}
// 查看考核详情
function resultDetail() {
    $('#contentWrapper').load(Path + 'jsp/kpi-result.jsp', function() {});
}

// 上移动模块
function Up(a, Class) {
    var row = $(a).parents("." + Class);
    var node = $(row).prev();
    if ($(node).hasClass(Class)) {
        swapNode(row, node, Class);
    }
}
// 下移动模块
function Down(a, Class) {
    var row = $(a).parents("." + Class);
    var node = $(row).next();
    if ($(node).hasClass(Class)) {
        swapNode(row, node, Class);
    }
}

// 交换模块模块
function swapNode(node1, node2, Class) {
    var parent = $(node1).parent();
    var t1 = $(node1).next();
    var t2 = $(node2).next();
    if ($(t1).hasClass(Class)) {
        $(t1).before(node2);
    } else {
        $(parent).append(node2);
    }
    if ($(t2).hasClass(Class)) {
        $(t2).before(node1);
    } else {
        $(parent).append(node1);
    }
}

// 返回
function backlist() {
    $('#contentWrapper').load(Path + 'jsp/kpi-list.jsp', function() {})
}

function backDetail() {
    $('#contentWrapper').load(Path + 'jsp/kpi-detail.jsp', function() {})
}

function backSend() {
    $('#contentWrapper').load(Path + 'jsp/kpi-send.jsp', function() {})
}