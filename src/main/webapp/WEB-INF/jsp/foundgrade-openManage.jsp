<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <title>KAB创业教育网</title>
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
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
                <li>·&nbsp;<a href=/grade">创建新班级</a></li>
            </ul>
        </div>
    </div>
    <div class="col-md-9">
        <div class="m-leftmenv fl">
            <p><img src="img/u42.png"/>已开班级管理</p>
            <hr/>
        </div>
        <div class="formbox">
            <div class="col-md-4 formbox-left">
                <div class="tree well">
                    <ul>
                        <li>
                            <span>北京</span>
                            <ul>
                                <li>
                                    <span>北京航天航空大学</span>
                                    <ul>
                                        <li>
                                            <span>创业实训一班</span>
                                            <span>股市风投班</span>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="col-md-8">
                <div class="m-leftmenv fl">
                    <p>班级基本信息:</p>
                </div>
                <div class="formbox">
                    <table id="datatable" class="table table-striped table-bordered">
                        <thead>
                        <tr>
                            <th>班级名称</th>
                            <th>开班教师</th>
                            <th>班级类型</th>
                            <th>班级状态</th>
                            <th>开班时间</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>创业实训班</td>
                            <td>李素</td>
                            <td>学生班</td>
                            <td>开班中</td>
                            <td>2011/04/25</td>
                        </tr>
                        </tbody>

                    </table>
                    <a class="no" href="foundgrade-openManagemodify.jsp"><img src="img/u46.png"/>修改班级</a>
                    <a class="no" href=""><img src="img/u89.png"/>删除班级</a>

                    <hr/>

                    <table class="table table-striped table-bordered">
                        <thead>
                        <tr>
                            <th>选择</th>
                            <th>班级名称</th>
                            <th>开班教师</th>
                            <th>班级类型</th>
                            <th>班级状态</th>
                            <th>开班时间</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><input type="checkbox" checked/></td>
                            <td>创业实训班</td>
                            <td>李素</td>
                            <td>学生班</td>
                            <td>开班中</td>
                            <td>2011/04/25</td>
                        </tr>
                        </tbody>

                    </table>
                    <a class="no" href="foundgrade-openManageaddS.jsp"><img src="img/u93.png"/>添加学生</a>
                    <a class="no" href="foundgrade-openManagemodifyS.jsp"><img src="img/u46.png"/>修改学生信息</a>
                    <a class="no" href=""><img src="img/u89.png"/>删除班级</a>

                </div>
            </div>
        </div>
    </div>
</div>

</div>
</div>

<%@include file="/comm/foot.jsp"%>

</body>
</html>
