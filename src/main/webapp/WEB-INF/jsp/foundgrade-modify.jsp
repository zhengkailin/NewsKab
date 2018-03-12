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
            <p><img src="img/u46.png"/>会员基本信息</p>
            <div class="errorinfo">${error }</div>
            <hr/>
        </div>
        <div class="formbox">
            <form action="${pageContext.request.contextPath}/foundgrade-info" method="post">
                <input type="hidden" name="id" value="${user.id}">
                <div class="item">
                    <label>真实姓名：</label>
                    <input type="text" name="realName" class="form-control" value="${user.realName}"/>
                </div>
                <div class="item">
                    <label>生日：</label>
                    <input type="text" name="birthday" class="form-control" value=" <fmt:formatDate value="${user.birthday}" pattern="yyyy-MM-dd"/>"/>
                </div>
                <div class="gender">
                    <label>性别：</label>
                    <input spellcheck="true" type="radio" value="男" name="sex">男
                    <input type="radio" vaule="女" name="sex">女
                </div>
                <div class="msg">
                    <label>学历：</label>
                    <select id="education" name="info[classsort]" class="selectpicker show-tick form-control">
                        <option value="${uesr.education}" selected="selected">--请选择学历--</option>
                        <option value="大专" name="education">大专</option>
                        <option value="本科" name="education">本科</option>
                        <option value="硕士" name="education">硕士</option>
                        <option value="博士" name="education">博士</option>
                        <option value="博士后" name="education">博士后</option>
                        <%--<c:forEach var="education" items="${educations}" varStatus="user">--%>
                            <%--<option value="${uesr.education}">${user.education}</option>--%>
                        <%--</c:forEach>--%>
                    </select>
                </div>
                <div class="item">
                    <label>身份号：</label>
                    <input type="text" name="idCard" class="form-control" value="${user.idCard}"/>
                </div>
                <div class="item">
                    <label>任教科目：</label>
                    <input type="text" name="teachSubject" class="form-control" value="${user.teachSubject}"/>
                </div>
                <div class="msg">
                    <label>参加班级意向：</label>
                    <select name="info[classsort]" class="selectpicker show-tick form-control">
                        <option value="0" selected>--请选择班级意向--</option>
                        <option value="1" name="joinClassId">学生班</option>
                        <option value="2" name="joinClassId">讲师班</option>
                        <option value="3" name="joinClassId">培训班</option>
                        <option value="4" name="joinClassId">高级培训班</option>
                    </select>
                </div>
                <div class="item">
                    <label>固定电话：</label>
                    <input type="text" name="tel" class="form-control" value="${user.tel}"/>
                </div>
                <div class="item">
                    <label>电子邮箱：</label>
                    <input type="text" name="email" class="form-control" value="${user.email}"/>
                </div>
                <div class="item">
                    <label>通讯地址：</label>
                    <input type="text" name="address" class="form-control" value="${user.address}"/>
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
