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


<div class="container headinfo">
    <div class="banner">
        <h3>创业资讯</h3>
        <img src="/img/banner.gif" alt=""/>
    </div>
    <div class="locaiton"><a href="index.jsp">首页</a>&gt;&gt;<a href="information.jsp">创业资讯</a>&gt;&gt;详细</div>
</div>
<div class="container article">
    <div class="articleTop">
        <h3>${ship.title}</h3>
        <span>${ship.createByName}</span>
        <span>${ship.creationDate}</span>
        <span>访问量：<em id="hits">${ship.visitorCount}</em></span>
    </div>
    <div class="m-leftmenv">
        <div>
            <p class="al">
               ${ship.content}
            </p>
        </div>
        </div>
        <div class="al">
            【责任编辑：赵小阳】
        </div>
    </div>
</div>


<%@include file="/comm/foot.jsp"%>

</body>
</html>
