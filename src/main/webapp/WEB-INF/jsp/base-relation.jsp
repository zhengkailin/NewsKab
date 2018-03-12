<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <title>KAB创业教育网</title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/play.css"/>
    <script src="/bootstrap-3.3.7-dist/js/jquery.min.js"></script>
    <script src="/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
<%@include file="/comm/head.jsp"%>


<div class="container headinfo">
    <div class="banner">
        <h3>关于我们</h3>
        <img src="/img/banner.gif"/>
    </div>
    <div class="locaiton green"><a href="/indexlist">首页</a>&gt;&gt;单页管理&gt;&gt;关于我们</div>
</div>

<div class="container mianinfo">
    <div class="col-md-3">
        <div class="leftMenu fl">
            <div class="menuTop"> 单页管理</div>
            <ul>
                <li><a href="base-about.jsp">关于我们</a></li>
                <li><a href="base-copyright.jsp">版权声明</a></li>
                <li><a href="base-hiring.jsp">人才招聘</a></li>
                <li><a href="base-relation.jsp" class="on">联系我们</a></li>
            </ul>
        </div>
    </div>
    <div class="col-md-9">
        <div class="m-leftmenv fl">
            <p>
                <span style="white-space:nowrap;">&nbsp;电话：010-99999999</span>
            </p>
            <p>
                <span style="white-space:nowrap;">&nbsp;email：***@bdqn.cn</span>
            </p>
            <p>
                <span style="white-space:nowrap;">地址：北京海淀区成府路2*号</span>
            </p>
            <p>
                <span style="white-space:nowrap;">乘车路线：4号线北京大学东门站B出口，300米</span>
            </p>
        </div>
    </div>
</div>

<%@include file="/comm/foot.jsp"%>

</body>
</html>
