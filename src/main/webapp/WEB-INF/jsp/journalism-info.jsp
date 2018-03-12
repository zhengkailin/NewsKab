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
        <h3>新闻展示</h3>
        <img src="/img/banner.gif" alt=""/>
    </div>
    <div class="locaiton"><a href="/indexlist">首页</a>&gt;&gt;<a href="/newslist">新闻展示</a>&gt;&gt;详细</div>
</div>
<div class="container article">
    <div class="articleTop">
        <h3>${news.title}</h3>
        <span>${news.creationDate}</span>
        <span>访问量：<em id="hits">${news.visitorCount}</em></span>
    </div>
    <div class="m-leftmenv">
        <div>
            <p class="al">
              ${news.content}
            </p>


        </div>
        <div class="al">
            【责任编辑：${news.editor}】
        </div>
        <hr/>

        <div class="comments">
            <h3>发布评论</h3>

            <form action="" method="post">
                <textarea class="form-control" rows="3">请输入评论内容...</textarea>
                <input type="submit" class="btn btn-success login-button" value="立即评论"/>
                <div class="item">
                    <input type="text" class="form-control security-code" name="miMa" placeholder="验证码" required/>
                    <img src="img/u32.jpg" alt="" style="margin: 0 24px;"/>
                    <a href="#">看不清换一张</a>
                </div>
            </form>
            <div class="clear h20 msg green"></div>

            <div class="commentLists">
                <ul>
                    <c:forEach items="${comment}" var="comment">
                    <li>
                        ${comment.content}
                        <time class="pull-right">发表于：${comment.createtime}</time>
                    </li>
                    </c:forEach>
                </ul>
                <div id="pages" class="fr"></div>
            </div>
        </div>
    </div>
</div>

<%@include file="/comm/foot.jsp"%>

</body>
</html>
