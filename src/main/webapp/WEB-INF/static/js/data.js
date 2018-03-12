var regionId=0;
$(function(){

    queryclasstypelist();
    queryregionlist();
    var tig=true
    $("#regionId").on("change",function(){
        regionId=$(this).val()
        queryStreet();
        setTimeout(function(){
            $("#schoolId").select2("open")
        },200)
    })
    $("#addgrade").on("click",function () {
        $("#addschools").removeClass("hide")
       $("#schools").addClass("hide")

    })
    $("#addgrade2").on("click",function () {
        $("#addschools").addClass("hide")
        $("#schools").removeClass("hide")
    })

    $("#addKabSchool").on("click",function () {
        $("#schoolfrom").submit;
    })


});

function queryStreet() {
    $("#schoolId").children().remove()
    $("#schoolId").append("<option>请选择</option>")
    $.ajax({
        type:"post",
        url:"/schoolById",
        data:{regionId:regionId},
        dataType:"json",
        success:function(data){
            for(var i=0;i<data.length;i++){
                $("#schoolId").append("<option value='"+data[i].id+"'>"+data[i].name+"</option>")
            }
        },
        error:function(data){
        }
    })
}

function queryclasstypelist()
{
    $("#classtype").children().remove()
    $("#classtype").append("<option>请选择</option>")
    $.ajax({
        type:"post",
        url:"/classtypelist",
        data:{},
        dataType:"json",
        success:function(data){
            for(var i=0;i<data.length;i++){
                $("#classtype").append("<option value='"+data[i].id+"'>"+data[i].name+"</option>")
            }
        },
        error:function(data){
        }
    })
}


function queryregionlist()
{
    $("#regionId").children().remove()
    $("#regionId").append("<option>请选择</option>")
    $.ajax({
        type:"post",
        url:"/regionlist",
        data:{},
        dataType:"json",
        success:function(data){
            for(var i=0;i<data.length;i++){
                $("#regionId").append("<option value='"+data[i].id+"'>"+data[i].name+"</option>")
            }
        },
        error:function(data){
        }
    })
}
