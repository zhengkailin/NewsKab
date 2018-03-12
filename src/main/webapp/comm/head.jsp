<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head lang="en">
    <meta charset="utf-8">
    <title>KAB创业教育网</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css"/>
    <script src="/js/jquery.min.js"></script>
    <script src="/js/index.js"></script>
    <script src="/js/bootstrap.js"></script>
</head>

<body>
<div class="logonr">
    <div class="container">
        欢迎来到 KAB创业教育网

        <c:if test="${user!=null}">
        <span>
            <a class="no" href="${pageContext.request.contextPath}/foundgrade-info">您好,${user.userName}  会员级别:预备讲师</a>
            <a href="#">[我的班级]</a>
            <a href="${pageContext.request.contextPath}/zhuxiao">[注销]</a>
        </span>
        </c:if>

        <span class="pull-right">
           <c:if test="${user==null}">

            <a href="${pageContext.request.contextPath}/login">[登录]</a></li>
            <a href="${pageContext.request.contextPath}/add">[免费注册]</a></li>
            </c:if>
            <a href="/indexlist">首页</a>
        </span>
    </div>
</div>

<div class="navmains">
    <div class="container">
        <div class="col-md-3 logo fl"><a href="/indexlist"><img src="/img/logo.gif" alt="logo"/></a></div>
        <div class="col-md-9 topMain">
            <ul class="nav navbar-nav">
                <li data-segment="a"><a href="/indexlist" class="on">首页</a></li>
                <li data-segment="b"><a href="/index?id=1">KAB概况</a></li>
                <li data-segment="c"><a href="/announcementlist">KAB公告</a></li>
                <li data-segment="d"><a href="/entrepreneurshiplist">创业资讯</a></li>
                <li data-segment="e"><a href="/newslist">新闻展示</a></li>
                <li data-segment="f"><a href="/courselist">KAB课程</a></li>
                <li data-segment="g"><a href="/grade">网上开班</a></li>
            </ul>
        </div>
    </div>
</div>

