<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <title>KAB创业教育网</title>
    <link rel="stylesheet" href="/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css"/>
    <link rel="stylesheet" href="/css/play.css"/>
    <script src="/bootstrap-3.3.7-dist/js/jquery.min.js"></script>
    <script src="/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="/js/foundgrade.js"></script>

</head>
<body>

<%@include file="/comm/head.jsp"%>

<div class="container mianinfo">
    <div class="col-md-3">
        <div class="m-leftmenv fl">
            <div class="menuTop">个人资料</div>
            <ul>
                <li>·&nbsp;<a href="foundgrade-modify.jsp">修改个人资料</a></li>
                <li>·&nbsp;<a href="foundgrade-modifymiMa.jsp">修改密码</a></li>
                <li>·&nbsp;<a href="foundgrade-applyEncrypted.jsp">申请密保</a></li>
            </ul>
            <div class="menuTop">网上开班</div>
            <ul>
                <li>·&nbsp;<a href="foundgrade-openManage.jsp" class="green">已开班级管理</a></li>
                <li>·&nbsp;<a href="/grade">创建新班级</a></li>
            </ul>
        </div>
    </div>
    <div class="col-md-9">
        <div class="m-leftmenv fl">
            <p><img src="img/u42.png"/><a class="no" href="foundgrade-openManage.jsp">已开班级管理</a>&gt;&gt;修改班级信息</p>
            <hr/>
        </div>
        <div class="formbox">
            <form method="post" action="" id="myform" name="myfrom">
                <div class="item">
                    <div id="schools"  >
                        <label>所属学校：</label>
                        <select name="province"  class="selectpicker show-tick form-control">
                            <option >-- 请选择省份 --</option>
                            <option value="1">北京</option>
                            <option value="10">黑龙江</option>
                            <option value="12">安徽</option>
                            <option value="13">山东</option>
                            <option value="14">浙江</option>
                            <option value="15">江西</option>
                            <option value="16">福建</option>
                            <option value="17">湖南</option>
                            <option value="18">湖北</option>
                            <option value="19">河南</option>
                            <option value="2">上海</option>
                            <option value="20">广东</option>
                            <option value="22">广西</option>
                            <option value="23">贵州</option>
                            <option value="24">四川</option>
                            <option value="25">云南</option>
                            <option value="26">陕西</option>
                            <option value="27">甘肃</option>
                            <option value="28">宁夏</option>
                            <option value="29">青海</option>
                            <option value="3">天津</option>
                            <option value="30">新疆</option>
                            <option value="31">西藏</option>
                            <option value="4">重庆</option>
                            <option value="7">河北</option>
                            <option value="48">台湾</option>
                        </select>
                        <select name="school" class="selectpicker show-tick form-control">
                            <option value=''>--请选择--</option>
                        </select>
                        <div class="fl">&nbsp;没有我要的学校，<a href="javascript:;" onclick = "rebackSchool();" class="green">马上创建？</a></div>
                    </div>

                    <div id="addschools" class="hide">
                        <label>输入学校名称：</label>
                        <input type="text"  class="form-control" name="school" />
                        <select name="province"  id="province2"  class="selectpicker show-tick form-control">
                            <option value="">-- 请选择省份 --</option>
                            <option value="1">北京</option>
                            <option value="10">黑龙江</option>
                            <option value="12">安徽</option>
                            <option value="13">山东</option>
                            <option value="14">浙江</option>
                            <option value="15">江西</option>
                            <option value="16">福建</option>
                            <option value="17">湖南</option>
                            <option value="18">湖北</option>
                            <option value="19">河南</option>
                            <option value="2">上海</option>
                            <option value="20">广东</option>
                            <option value="22">广西</option>
                            <option value="23">贵州</option>
                            <option value="24">四川</option>
                            <option value="25">云南</option>
                            <option value="26">陕西</option>
                            <option value="27">甘肃</option>
                            <option value="28">宁夏</option>
                            <option value="29">青海</option>
                            <option value="3">天津</option>
                            <option value="30">新疆</option>
                            <option value="31">西藏</option>
                            <option value="4">重庆</option>
                            <option value="7">河北</option>
                            <option value="48">台湾</option>
                        </select>
                        <div classs="fl">
                            <a href="javascript:void(0);" class="green" onclick="addSchool()">&nbsp;添加</a>
                            <a href="javascript:;"  onclick = "rebackSchool();"  class="green">&nbsp;返回选择学校</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <label>班级名称：</label><input type="text"  name="classname" class="form-control"   />
                </div>

                <div class="item">
                    <label>班级类型：</label>
                    <select name="info[classsort]" class="selectpicker show-tick form-control">
                        <option >--请选择班级类型--</option>
                        <option selected>学生班</option>
                        <option>讲师班</option>
                        <option>培训班</option>
                        <option>高级培训班</option>
                    </select>
                </div>
                <div class="clear"></div>
                <div class="item">
                    <label>班级状态：</label>
                    <select name="info[classsort]" class="selectpicker show-tick form-control">
                        <option >--请选择班级状态--</option>
                        <option >开班前</option>
                        <option selected>开班中</option>
                        <option >班级关闭</option>
                    </select>
                </div>
                <div class="item">
                    <label>开班教师：</label><span>admindd </span>
                </div>
                <div class="msg">
                    <input type="submit" class="btn btn-success" value="保&nbsp;&nbsp;存"/>
                    <input type="reset" class="btn btn-success" value="取&nbsp;&nbsp;消"/>
                </div>
            </form>
        </div>
    </div>
</div>

</div>
</div>


<%@include file="/comm/foot.jsp"%>


</body>
</html>
