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
            <p><img src="img/u42.png"/><a class="no" href="foundgrade-openManage.jsp">已开班级管理</a>&gt;&gt;修改学生信息</p>
            <hr/>
        </div>
        <div class="formbox">
            <form action="foundgrade-openManage.jsp" method="post">
                <div class="item">
                    <label>学号：</label>
                    <input type="text" name="name" class="form-control" value="1001"/>
                </div>
                <div class="item">
                    <label>姓名：</label>
                    <input type="text" name="name" class="form-control" value="李素"/>
                </div>
                <div class="gender">
                    <label>性别：</label>
                    <input type="radio" value="男" name="sex">男
                    <input type="radio" vaule="女" name="sex" checked>女
                </div>
                <div class="item">
                    <label>年龄：</label>
                    <input type="text" name="name" class="form-control" value="25"/>
                </div>
                <div class="item">
                    <label>学校：</label>
                    <input type="text" name="name" class="form-control" value="北京航空航天大学"/>
                </div>
                <div class="item">
                    <label>专业：</label>
                    <input type="text" name="name" class="form-control" value="软件工程"/>
                </div>
                <div class="msg">
                    <label>年级：</label>
                    <select name="info[classsort]" class="selectpicker show-tick form-control">
                        <option>--请选择年级--</option>
                        <option>大一</option>
                        <option selected>大二</option>
                        <option>大三</option>
                        <option>研一</option>
                        <option>研二</option>
                        <option>其他</option>
                    </select>
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
