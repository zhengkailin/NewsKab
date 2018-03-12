<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="utf-8">
    <title>KAB创业教育网</title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/play.css"/>
    <script src="bootstrap-3.3.7-dist/js/jquery.min.js"></script>
    <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>

<div class="logonr">
    <div class="container">
        欢迎来到 KAB创业教育网


        <c:if test="${user!=null}">
        <span>您好,${user.userName}  会员级别:预备讲师
            <a href="#">[我的班级]</a>
            <a href="${pageContext.request.contextPath}/zhuxiao">[注销]</a>
        </span>
        </c:if>

        <span class="pull-right">
           <c:if test="${user==null}">
               <a href="${pageContext.request.contextPath}/login">[登录]</a></li>
               <a href="${pageContext.request.contextPath}/add">[免费注册]</a></li>
           </c:if>
            <a href="${pageContext.request.contextPath}/index">首页</a>|
            <a href="javascript:;" onclick="addFav(location.href)">加入收藏</a>|
            <a href="javascript:;" onclick="setHomepage(location.href)">设为首页</a>
        </span>
    </div>
</div>


<div class="navmains">
    <div class="container">
        <div class="col-md-3 logo fl"><a href="index.php"><img src="img/logo.gif" alt="logo"/></a></div>
        <div class="col-md-9 topMain">
            <ul class="nav navbar-nav">
                <li><a href="${pageContext.request.contextPath}/index">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/jsp/survey">KAB概况</a></li>
                <li><a href="${pageContext.request.contextPath}/jsp/announcement">KAB公告</a></li>
                <li><a href="${pageContext.request.contextPath}/jsp/information">创业资讯</a></li>
                <li><a href="${pageContext.request.contextPath}/jsp/journalism">新闻展示</a></li>
                <li><a href="${pageContext.request.contextPath}/jsp/curriculum">KAB课程</a></li>
                <li><a href="${pageContext.request.contextPath}/foundgrade"  class="on">网上开班</a></li>
            </ul>
        </div>
    </div>
</div>

<div class="container mianinfo">
    <div class="col-md-3">
        <div class="m-leftmenv fl">
            <div class="menuTop">个人资料</div>
            <ul>
                <li>·&nbsp;<a href="${pageContext.request.contextPath}/foundgrade-modify">修改个人资料</a></li>
                <li>·&nbsp;<a href="${pageContext.request.contextPath}/foundgrade-modifymiMa">修改密码</a></li>
                <li>·&nbsp;<a href="${pageContext.request.contextPath}/foundgrade-applyEncrypted">申请密保</a></li>
            </ul>
            <div class="menuTop">网上开班</div>
            <ul>
                <li>·&nbsp;<a href="foundgrade-openManage.jsp">已开班级管理</a></li>
                <li>·&nbsp;<a href="foundgrade.jsp">创建新班级</a></li>
            </ul>
        </div>
    </div>
    <div class="col-md-9">
        <div class="m-leftmenv fl">
            <p><img src="img/u46.png"/>申请密保</p>
            <hr/>
        </div>
        <div class="formbox">
            <form action="index.jsp" method="post">
                <div class="msg">
                    <label>密保问题：</label>
                    <select name="info[classsort]" class="selectpicker show-tick form-control">
                        <option selected>--请选择密保问题--</option>
                        <option>我的父亲的姓名是?</option>
                        <option>我的母亲的姓名是?</option>
                        <option>我的小学老师的姓名是?</option>
                        <option>我的高中老师的姓名是?</option>
                        <option>我的大学老师的姓名是?</option>
                        <option>我最喜爱的动物是?</option>
                    </select>
                </div>
                <div class="item">
                    <label>密保答案：</label>
                    <input type="text" name="newmiMa" class="form-control"/>
                </div>
                <div class="msg">
                    <input type="submit" class="btn btn-success" value="保&nbsp;&nbsp;存"/>
                    <input type="reset" class="btn btn-success" value="取&nbsp;&nbsp;消"/>
                </div>
            </form>
        </div>

    </div>
</div>


<footer>
    <hr/>
    <ul>
        <li><a href="${pageContext.request.contextPath}/index">首页</a></li>
        <li>|</li>
        <li><a href="base-about.jsp">关于我们</a></li>
        <li>|</li>
        <li><a href="base-copyright.jsp">版权声明</a></li>
        <li>|</li>
        <li><a href="base-hiring.jsp">人才招聘</a></li>
        <li>|</li>
        <li><a href="base-relation.jsp">联系我们</a></li>
    </ul>
    <p class="text-center">Copyright&nbsp; 版权所有：北大青鸟</p>
</footer>


</body>
</html>
