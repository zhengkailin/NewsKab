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
            <p><img src="img/u69.png"/>会员基本信息</p>
            <hr/>
        </div>
        <div class="formbox">
            <div class="col-md-6">
                <label>真实姓名：</label>${user.realName}
            </div>
            <div class="col-md-6">
                <label>所在院校：</label>${user.school}
            </div>
            <div class="col-md-6">
                <label>生日：</label> <fmt:formatDate value="${user.birthday}" pattern="yyyy-MM-dd"/>
            </div>
            <div class="col-md-6">
                <label>职务/职称：</label>${user.post}
            </div>
            <div class="col-md-6">
                <label>学历：</label>${uesr.education}
            </div>
            <div class="col-md-6">
                <label>专业：</label>${user.major}
            </div>
            <div class="col-md-6">
                <label>任教科目：</label>${user.teachSubject}
            </div>
            <div class="col-md-6">
                <label>手机号：</label>${user.phone}
            </div>
            <div class="col-md-6">
                <label>邮箱：</label>${user.email}
            </div>
            <div class="col-md-6">
                <label>通讯地址：</label>${user.address}
            </div>
        </div>


        <div class="clear"></div>

        <div class="m-leftmenv fl">
            <p><img src="img/u67.png"/>最新公告</p>
            <hr/>
        </div>
        <div class="formbox">
            <ul>
                <li><a href="#">· 关于申报2013年度“大学生KAB 创业教育基地”和“KAB创业教育讲师资格”的通知</a>
                    <span class='pull-right'>2017-12-05</span>
                </li>
                <li><a href="#">· 关于申报2013年度“大学生KAB 创业教育基地”和“KAB创业教育讲师资格”的通知</a>
                    <span class='pull-right'>2017-12-05</span>
                </li>
                <li><a href="#">· 关于申报2013年度“大学生KAB 创业教育基地”和“KAB创业教育讲师资格”的通知</a>
                    <span class='pull-right'>2017-12-05</span>
                </li>
                <li><a href="#">· 关于申报2013年度“大学生KAB 创业教育基地”和“KAB创业教育讲师资格”的通知</a>
                    <span class='pull-right'>2017-12-05</span>
                </li>
                <li><a href="#">· 关于申报2013年度“大学生KAB 创业教育基地”和“KAB创业教育讲师资格”的通知</a>
                    <span class='pull-right'>2017-12-05</span>
                </li>
            </ul>
        </div>
    </div>
</div>


<footer>
    <hr/>
    <ul>
        <li><a href="${pageContext.request.contextPath}/index">首页</a></li>
        <li>|</li>
        <li><a href="page.php?id=6">关于我们</a></li>
        <li>|</li>
        <li><a href="page.php?id=9">版权声明</a></li>
        <li>|</li>
        <li><a href="page.php?id=8">人才招聘</a></li>
        <li>|</li>
        <li><a href="page.php?id=7">联系我们</a></li>
    </ul>
    <p class="text-center">Copyright&nbsp; 版权所有：北大青鸟</p>
</footer>


</body>
</html>
