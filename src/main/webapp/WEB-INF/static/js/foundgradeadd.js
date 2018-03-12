var schoolId=null;
var classtype=null;
var className=null;
var status=null;
var addBtn = null;
var backBtn = null;


$(function()
{
    schoolId=$("#schoolId");
    classtype=$("#classtype");
    className=$("#className");
    status=$("#status");
    addBtn = $("#add");
    backBtn = $("#back");
    //初始化的时候，要把所有的提示信息变为：* 以提示必填项，更灵活，不要写在页面上
    schoolId.next().html("*");
    classtype.next().html("*");
    className.next().html("*");


    addBtn.on("click",function(){
                confirm("是否确认提交数据")
                $("#myform").submit();
    });
})

