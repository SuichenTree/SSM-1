$.widget.bridge('uibutton', $.ui.button);

var Path = './pages/';

// 登录
function Login() {
    alert("登录成功", "", function() {
        window.location.assign('index.jsp');
    }, {
        type: 'success',
        confirmButtonText: '确认'
    });
}
// 注销
function signOut() {
    confirm("确认退出吗？", "", function(isConfirm) {
        if (isConfirm) {
            window.location.assign('login.jsp');
        }
    }, {
        confirmButtonText: '确认',
        cancelButtonText: '取消'
    });
}

// 表单重置
function formReset(id) {
    document.getElementById(id).reset();
}
// dataTable配置
function dataTable(e) {
    $(e).dataTable({
        //lengthMenu: [5, 10, 20, 30],//这里也可以设置分页，但是不能设置具体内容，只能是一维或二维数组的方式，所以推荐下面language里面的写法。
        paging: true, //分页
        ordering: true, //是否启用排序
        searching: false, //搜索
        processing: true,
        pagingType: "full_numbers", //分页样式的类型
        language: {
            lengthMenu: '', //<select class="form-control input-xsmall">' + '<option value="1">1</option>' + '<option value="10">10</option>' + '<option value="20">20</option>' + '<option value="30">30</option>' + '<option value="40">40</option>' + '<option value="50">50</option>' + '</select> 条记录', //左上角的分页大小显示。
            // search: '搜 索 :', //'<button class="btn btn-success btn-sm"> 搜索 </button>', 右上角的搜索文本，可以写html标签
            paginate: { //分页的样式内容。
                previous: "&lt;",
                next: "&gt;",
                first: "第一页",
                last: "最后一页"
            },

            zeroRecords: "<span style='color:red;'>暂时没有内容</span>", //table tbody内容为空时，tbody的内容。
            //下面三者构成了总体的左下角的内容。
            info: "总共 _PAGES_ 页，当前显示第 _START_ 条至第 _END_ 条", //总共_PAGES_ 页，显示第_START_ 条到第 _END_ 条，筛选之后得到 _TOTAL_ 条，初始_MAX_ 条,左下角的信息显示，大写的词为关键字。
            // infoEmpty: "无记录信息", //筛选为空时左下角的显示。
            infoFiltered: '', //"<span style='color:red;'>已筛选</span>" 筛选之后的左下角筛选提示
        }
    });
}

// 时间选择器
// function rangeTime(startTime, stopTime) {
//     $(startTime).datepicker({
//         changeYear: true,
//         changeMonth: true,
//         gotoCurrent: true,
//         showButtonPanel: true,
//         onClose: function(selectedDate) {
//             $(stopTime).datepicker("option", "minDate", selectedDate);
//         }
//     });
//     $(stopTime).datepicker({
//         changeYear: true,
//         changeMonth: true,
//         gotoCurrent: true,
//         showButtonPanel: true,
//         onClose: function(selectedDate) {
//             $(startTime).datepicker("option", "maxDate", selectedDate);
//         }
//     });
// }

$(function() {
    Home();

    // $('#time1,#time2').dcalendarpicker({
    //     format: 'yyyy-mm-dd'
    // })
    // $('#time1,#time2').dcalendarpicker({
    //     format: 'yyyy-mm-dd'
    // })
})