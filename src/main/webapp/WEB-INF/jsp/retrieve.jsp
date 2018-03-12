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
</head>
<body>
<%@include file="/comm/head.jsp"%>

<div style="background: #FAFAFA;" class="container">
    <div id="retrieve" class="container">
        <form action="index.jsp" method="post" name="retrievemiMa">
            <p><img src="img/u93.png"/>&nbsp;&nbsp;找回密码&nbsp; &nbsp; &gt;&nbsp; 输入注册邮箱 </p>

            <div class="msg">
                <input type="text" class="form-control" name="userName" placeholder="请输入邮箱" required/>
            </div>
            <div class="h20"></div>

            <div class="msg">
                <input type="submit" class="btn btn-success login-button" value="提交"/>
            </div>
        </form>


        <form action="foundgrade-info.jsp" method="post" class="hide">
            <p><img src="img/u93.png"/>&nbsp;&nbsp;找回密码&nbsp; &nbsp; &gt;&nbsp; 输入密保答案 </p>

            <div class="msg">
                <label>密保问题：</label>
                <span style="padding-left: 18px;">我小学班主任姓名?</span>
            </div>
            <div class="item" style="margin-top: 10px;">
                <label>答案：</label>
                <input type="text" name="name" class="form-control"/>
            </div>
            <div class="msg-d">
                <input type="submit" class="btn btn-success login-button" value="提交"/>
            </div>
        </form>


        <form action="foundgrade-info.jsp" method="post" class="hide">
            <p><img src="img/u93.png"/>&nbsp;&nbsp;找回密码&nbsp; &nbsp; &gt;&nbsp; 修改密码 </p>

            <div class="item">
                <label>输入新密码：</label>
                <input type="password" name="name" class="form-control"/>
            </div>
            <div class="item" style="margin-top: 10px;">
                <label>再次输入新密码：</label>
                <input type="password" name="name" class="form-control"/>
            </div>
            <div class="msg-d">
                <input type="submit" class="btn btn-success login-button" value="修改密码"/>
            </div>
        </form>

    </div>


</div>

<%@include file="/comm/foot.jsp"%>

</body>
</html>
