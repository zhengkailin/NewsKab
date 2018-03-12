<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>
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
    <script src="/js/page.js"></script>
</head>
<body>

<%@include file="/comm/head.jsp"%>


<div class="container headinfo">
    <div class="banner">
        <h3>新闻展示</h3>
        <img src="/img/banner.gif" alt=""/>
    </div>
    <div class="locaiton"><a href="/indexlist">首页</a>&gt;&gt;新闻展示</div>
</div>
<div class="container mianinfo">
    <ul>
        <c:forEach items="${page.datas}" var="n">
        <li><a href="/newsById/${n.id}">·${n.title}</a>
            <span class='pull-right'>${n.creationDate}</span>
        </li>
        </c:forEach>
    </ul>
</div>


<%--分页写这里--%>
<div >
    <div >
        <div class="tcdPageCode" style="text-align:center;"></div>
    </div>
</div>
<%@include file="/comm/foot.jsp"%>

<script type="text/javascript">
    /* 分页要用的 */
    $(".tcdPageCode").createPage({
        pageCount:${page.totalPageCount},//总页数
        current:${page.currPageNo},//当前页数
        backFn:function(p){  //p是组件传过来的参数，p是跳转的下一页是第几页

//            //提交表单的方式
//            document.getElementById("currentPage").value=p;
//            $("#formList").submit();
            //--------------------------------------------------
            //         访问路径的方式
            location.href="${ctx}/newslist?currPageNo="+p;
        }
    });
</script>
</body>
</html>
