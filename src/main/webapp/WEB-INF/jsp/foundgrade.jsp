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
    <style type="text/css">
        .hide{
            display: none;
        }
    </style>
    <script src="/bootstrap-3.3.7-dist/js/jquery.min.js"></script>
    <script src="/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="/js/data.js"></script>
    <script src="/js/foundgradeadd.js"></script>
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
                <li>·&nbsp;<a href="jsp/foundgrade-openManage.jsp">已开班级管理</a></li>
                <li>·&nbsp;<a href="/grade" class="green">创建新班级</a></li>
            </ul>
        </div>
    </div>

    <div class="col-md-9">
        <div class="m-leftmenv fl">
            <p><img src="img/u54.png"/>创建新班级</p>
            <hr/>
        </div>
        <div class="formbox">
            <form method="post" action="${pageContext.request.contextPath }/addKabClass" id="myform" name="myfrom">
                <div class="item">
                    <div id="schools">
                        <label>所属学校：</label>
                        <select   id ="regionId" class="selectpicker show-tick form-control">
                            <option value="0">--请选择--</option>
                        </select>
                        <select name="school.id" id="schoolId" class="selectpicker show-tick form-control">
                            <option value="0">--请选择--</option>
                        </select>
                        <font color="red"></font>
                        <div class="fl">&nbsp;没有我要的学校，<a href="javascript:;" id="addgrade" class="green">马上创建？</a></div>
                    </div>

                    <div id="addschools" class="hide">
                        <label>输入学校名称：</label>
                        <input type="text"  class="form-control" name="name" />
                        <select name="regionId" id="province2"  class="selectpicker show-tick form-control">
                            <option value="0">-- 请选择省份 --</option>
                        </select>
                        <div classs="fl">
                            <a href="javascript:;" id="addKabSchool" class="green">&nbsp;添加</a>
                            <a href="javascript:;" id="addgrade2"  class="green">&nbsp;返回选择学校</a>
                        </div>
                    </div>

                </div>
                <div class="item">
                    <label>班级名称：</label>

                    <input type="text" id="kabClassName" name="kabClassName" class="form-control">
                    <!-- 放置提示信息 -->
                    <font color="red"></font>
                </div>

                <div class="item">
                    <label>班级类型：</label>
                    <select name="kabClassType.id" id="classtype" class="selectpicker show-tick form-control">
                        <option value="0">--请选择--</option>
                    </select>
                    <font color="red"></font>
                </div>
                <div class="clear"></div>
                <div class="item">
                    <label>班级状态：</label><span>开班前</span><input type="hidden"  value="0" name="status" />
                </div>
                <div class="item">
                    <label>开班教师：</label><span>admindd </span>
                </div>
                <div class="msg">
                    <input type="button" id="add" name="add"  class="btn btn-success" value="保&nbsp;&nbsp;存"/>
                    <%--<input type="submit" value="提交">--%>
                    <input type="reset" id="back" name="back" class="btn btn-success" value="返&nbsp;&nbsp;回"/>
                </div>
            </form>
        </div>
    </div>
</div>

<%@include file="/comm/foot.jsp"%>

</body>
</html>
