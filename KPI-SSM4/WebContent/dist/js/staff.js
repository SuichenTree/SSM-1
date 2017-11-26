// 加载第一页
function Home() {
    $('#contentWrapper').load(Path + 'jsp/staff-list.jsp', function() {
        
    });
}
// 载入添加新员工
function staffEntry() {
    $('#contentWrapper').load(Path + 'jsp/staff-add.jsp', function() {
        $('#staffEntryTime').datetimepicker({
            format: 'yyyy-mm-dd hh:ii:ss'
        });
    });
}
// 添加新员工成功
function staffAdd() {
    alert("已添加", "", function() {
        $('#contentWrapper').load(Path + 'jsp/staff-list.jsp', function() {});
    }, {
        type: 'success',
        confirmButtonText: '确认'
    });
}
// 放弃添加员工
function staffRemove() {
    confirm("确认取消添加员工？", "", function(isConfirm) {
        if (isConfirm) {
            $('#contentWrapper').load(Path + 'jsp/staff-list.jsp');
        }
    }, {
        confirmButtonText: '确认',
        cancelButtonText: '取消'
    });
}

/*
function searchemployee(){

	var searchinput=$("#searchinput1").val();
	console.log(searchinput);
	alert(searchinput);
	 $.ajax({
		
	 	type:"POST",              			 			//提交方式为post
	 	dataType:"json",  								//当dataType 设置为json时，ajax所接受的数据必须符合json格式,否则，会一直执行error的回调函数。
	 	url:"employeeController/selectemployee",
	 	data:{"name":searchinput},    			//这里的data是从表单传来的数据,格式必须符合dataType的值
        success: function(data){     					//作为参数的data是从服务器端的传来的数据，例如这里是从evalprojectController/insertevalproject标记的处理方法return 返回的数据
        	
       	 	$('#contentWrapper').load(Path + 'jsp/staff-list.jsp', function() {
       	 		for(var i=0;i<=data.length;i++){                                       //用js操作DOM，来配合ajax动态生成表格
       	 			$("#tbody").append("<tr name='staff_data'>"+"<td class='staff_id'>"+data[i].id+"</td>"+"<td>"+data[i].name+"</td>"+
       	 					"<td>"+data[i].dept+"</td>"+"<td>"+data[i].post+"</td>"+"<td>"+data[i].email+"</td>"+"<td>"+data[i].phone+"</td>"+
       	 					"<td><button type='button' onclick='staffEdit2(this);' class='btn btn-default'>编辑</button></td>"+"</tr>");
       	 		} 		
       	 	});
       	
        },
        error : function() {
       	alert("searchemployee() ,error");
       	
        }
    });
	
	
}

*/
//编辑员工
function staffEdit() {
	 $.ajax({
		
	 	 type:"POST",              			 			//提交方式为post
	 	 dataType:"json",  								//当dataType 设置为json时，ajax所接受的数据必须符合json格式,否则，会一直执行error的回调函数。
         url:"employeeController/submitemployee",
	 	 data: $('#addStaffForm').serialize(),    			//这里的data是从表单传来的数据,格式必须符合dataType的值
         success: function(data){     					//作为参数的data是从服务器端的传来的数据，例如这里是从evalprojectController/insertevalproject标记的处理方法return 返回的数据
        	 	
        	 //alert("DATA:"+data.name);				//data为json字符串格式，逐个取出data的各个属性
        	 	//console.log(data);
        	 				
         	
        
        		 $('#contentWrapper').load(Path + 'jsp/staff-edit.jsp', function() {	 
        	
        		 var work_no1=document.getElementById("work_no");
        		 var name1=document.getElementById("name");                //若要把传来的数据填写到表单中，使用value属性进行添值
        		 var dept1=document.getElementById("dept");
        		 var post1=document.getElementById("post");
        		 var phone1=document.getElementById("phone");
        		 var email1=document.getElementById("email");
        		 var id_no1=document.getElementById("id_no");
        		 var wechat_no1=document.getElementById("wechat_no");
        		 var hireDate1=document.getElementById("hireDate");
        		 //var isActive1=document.getElementById("isActive");
        		
        		
        		 work_no1.value=data.work_no;
        		 name1.value=data.name;
        		 dept1.value=data.dept;
        		 post1.value=data.post;
        		 phone1.value=data.phone;
        		 email1.value=data.email;
        		 id_no1.value=data.id_no;
        		 wechat_no1.value=data.wechat_no;
        		 hireDate1.value=data.hireDate;
        		// isActive1.innerHTML=obj.isActive;
        		
            });
        	
         },
         error : function() {
        	alert("staffEdit() ,error");
        	
         }
     });
	
	 
	 
}



//编辑员工
function staffEdit2(obj) {
	
	var staff_id=$(obj).parents().children("td").eq(0).text();        //获取点击按钮所在行的第一个单元格的值
	//alert(staff_id);
	
		$.ajax({
		
	 	 type:"POST",              			 			//提交方式为post
	 	 dataType:"json",  								//当dataType 设置为json时，ajax所接受的数据必须符合json格式,否则，会一直执行error的回调函数。
         url:"employeeController/selectemployee",
	 	 data:{"id":staff_id},  			//这里的data是从表单传来的数据,格式必须符合dataType的值，即为json的格式
         success: function(result){     					//作为参数的data是从服务器端的传来的数据，例如这里是从evalprojectController/insertevalproject标记的处理方法return 返回的数据
        	 console.log(result);

        		 $('#contentWrapper').load(Path + 'jsp/staff-edit.jsp', function() {	 
        	
        		 var work_no1=document.getElementById("work_no");
        		 var name1=document.getElementById("name");                //若要把传来的数据填写到表单中，使用value属性进行添值
        		 var dept1=document.getElementById("dept");
        		 var post1=document.getElementById("post");
        		 var phone1=document.getElementById("phone");
        		 var email1=document.getElementById("email");
        		 var id_no1=document.getElementById("id_no");
        		 var wechat_no1=document.getElementById("wechat_no");
        		 var hireDate1=document.getElementById("hireDate");
        		 var isActive1=document.getElementById("isActive");
        		
        		
        		 work_no1.value=result.work_no;
        		 name1.value=result.name;
        		 dept1.value=result.dept;
        		 post1.value=result.post;
        		 phone1.value=result.phone;
        		 email1.value=result.email;
        		 id_no1.value=result.id_no;
        		 wechat_no1.value=result.wechat_no;
        		 hireDate1.value=result.hireDate;
        		// isActive1.innerHTML=result.isActive;
        		 isActive1.append("<option>"+result.isActive+"</option>");
        		
            });
        	
         },
         error : function() {
        	alert("staffEdit2() ,error");
        	
         }
     });
	
	 
	 
}




function staffinsert() {
	 $.ajax({
		
	 	type:"POST",              			 			//提交方式为post
	 	dataType:"json",  								//当dataType 设置为json时，ajax所接受的数据必须符合json格式,否则，会一直执行error的回调函数。
        url:"employeeController/insertemployee",
	 	data: $('#staffeditform').serialize(),    			//这里的data是从表单传来的数据,格式必须符合dataType的值
        success: function(data){     					//作为参数的data是从服务器端的传来的数据，例如这里是从evalprojectController/insertevalproject标记的处理方法return 返回的数据
        	//alert("success   "+data);          
        	//console.log(data);
       		// $('#contentWrapper').load(Path + 'jsp/staff-list.jsp', function() {});
        	
        	staffshow();            					//当数据插入数据库时，调用该函数，ajax动态加载数数据库的内容       	
        },
        error : function() {
        	alert("staffinsert() ,error");
       	
        }
    });
	
	 
	 
}




// 保存编辑员工
function staffshow() {

	 $.ajax({
		
	 	 type:"POST",              			 			//提交方式为post
	 	 dataType:"json",  								//当dataType 设置为json时，ajax所接受的数据必须符合json格式,否则，会一直执行error的回调函数。
         url:"employeeController/selectallemployee",
	 	 //data: $('#staffeditform').serialize(),    			//这里的data是从表单传来的数据,格式必须符合dataType的值
         success: function(data){     					//作为参数的data是从服务器端的传来的数据，例如这里是从evalprojectController/insertevalproject标记的处理方法return 返回的数据
        	// 	alert("data: "+data.work_no);      			//data.work_no  是data的json字符串的work_no字段的数据
        	 	$('#contentWrapper').load(Path + 'jsp/staff-list.jsp', function() {
        	 		for(var i=0;i<data.length;i++){                                       //用js操作DOM，来配合ajax动态生成表格
        	 			$("#tbody").append("<tr name='staff_data'>"+"<td class='staff_id'>"+data[i].id+"</td>"+"<td>"+data[i].name+"</td>"+
        	 					"<td>"+data[i].dept+"</td>"+"<td>"+data[i].post+"</td>"+"<td>"+data[i].email+"</td>"+"<td>"+data[i].phone+"</td>"+"<td><button type='button' onclick='staffEdit2(this);' class='btn btn-default'>编辑</button></td>"+"</tr>");
        	 		} 		
        	 	});
        	
         },
         error : function() {
        	alert("staffEditSave() ,error");
        	
         }
     });
	
	 
	
	
	
}
// 添加修改返回
function staffEditCancel() {
    confirm("确认放弃修改吗？", "", function(isConfirm) {
        if (isConfirm) {
            $('#contentWrapper').load(Path + 'jsp/staff-list.jsp', function() {});
        }
    }, {
        confirmButtonText: '确认',
        cancelButtonText: '取消'
    });
}

function SuppliersubmitFormData() {
    $('#SupplierForm').bootstrapValidator('validate');
    var bv = $("#SupplierForm").data('bootstrapValidator');
    if ($("#SupplierForm").data('bootstrapValidator').isValid()) {
        var SupplierformData = mapto($("#SupplierForm"));
        $.ajax(supplier.entrysubmitupPath, {
            type: "POST",
            dataType: "JSON",
            contentType: "application/json",
            data: JSON.stringify(SupplierformData),
            success: function(data) {
                console.log(JSON.stringify(SupplierformData));
                console.log(data);
                if (data.code == 0) {
                    alert("提交成功", "", function() {
                        location.href = "SupplierList.html";
                    }, { type: 'success', confirmButtonText: 'OK' });
                } else {
                    alert("提交失败", data.message, function() {}, { type: 'error', confirmButtonText: 'OK' });

                }
            },
            error: function() {
                alert("提交失败", "", function() {}, { type: 'error', confirmButtonText: 'OK' });
            }
        })
    } else {
        alert("验证失败", "请点击ok，进行修改!", function() {
            bv.getInvalidFields().focus();
        }, { type: 'error', confirmButtonText: 'OK' });
    }
}