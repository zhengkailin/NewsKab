<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head lang="en">
    <meta charset="utf-8">
    <title>KAB创业教育网</title>
    <link rel="stylesheet" href="/bootstrap-3.3.7-dist/css/bootstrap.css">
    <link rel="stylesheet" href="/css/style.css"/>
    <link rel="stylesheet" href="/css/play.css"/>
    <script src="/bootstrap-3.3.7-dist/js/jquery.min.js"></script>
    <script src="/js/index.js"></script>
    <script src="/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
</head>
<body>
<%@include file="/comm/head.jsp"%>

<div class="container hide-slideshow">
    <a href="#" class="pull-right"><img src="/img/15100549.jpg"/></a>
</div>
<div class="container show-slidehide">
    <a href="#" class="pull-right"><img src="/img/15100550.jpg"/></a>
</div>
<div id="myCarousel" class="container carousel slide">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="/img/slide1.png" alt="First slide">
        </div>
        <div class="item">
            <img src="/img/slide2.png" alt="Second slide">
        </div>
        <div class="item">
            <img src="/img/slide3.png" alt="Third slide">
        </div>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="carousel-control left" href="#myCarousel"
       data-slide="prev">&lsaquo;</a>
    <a class="carousel-control right" href="#myCarousel"
       data-slide="next">&rsaquo;</a>
</div>


<div class="container survey">
    <h3><img src="/img/u55.png" alt="KAB概况"/>KAB概况</h3>
    <hr/>
    <p> ${general.content} &nbsp;&nbsp;&nbsp;<a href="/index?id=1">详细&gt;&gt;</a></p>

</div>

<div class="clearfix"></div>


<div class="container">
    <div class="col-md-8">

        <div class="relative">
            <div class="lontit lines pull-right">
                <a href="/announcementlist" class="Selected notice">KAB公告</a><span>|</span><a href="/newslist" class="new">新闻展示</a>
            </div>

            <div class="sider1">
                <strong>KAB公告</strong>

                <div class="nokey">
                    <ul>
                        <c:forEach items="${announcement.datas}" var="announcement">
                        <li><a href="/announcementById/${announcement.id}">· ${announcement.title}</a>
                            <span class='pull-right'>${announcement.creationDate}</span>
                        </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>

            <!--{listing:15080418}-->
            <div class="sider2" style="display: none;">
                <strong>新闻展示</strong>

                <div class="nokey">
                    <ul>
                        <c:forEach items="${news.datas}" var="news">
                        <li><a href="/newsById/${news.id}">·${news.title}</a>
                            <span class='pull-right'>${news.creationDate}</span>
                        </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>

    </div>


    <div class="col-md-4">
        <div class="relative">
            <ul id="myTab" class="nav nav-tabs">
                <li class="active">
                    <a href="#sider1" data-toggle="tab">创业资讯 </a>
                </li>
                <li><a href="#sider2" data-toggle="tab">KAB课程</a></li>
            </ul>

            <div class="tab-content">
                <div id="sider1" class="tab-pane fade in active">
                    <div class="nokey">
                        <ul>
                            <c:forEach items="${entrepreneurship.datas}" var="ship">
                                <li><a href="/entrepreneurshiplById/${ship.id}">· ${ship.title}</a>
                                <span class='pull-right'>${ship.creationDate}</span>
                            </li>
                            </c:forEach>
                            <a href="" class="relative-a">更多&gt;&gt;</a>
                        </ul>
                    </div>
                </div>

                <!--{listing:15080418}-->
                <div id="sider2"  class="tab-pane fade in">
                    <div class="nokey" >
                        <ul>
                            <c:forEach items="${course.datas}" var="course">
                            <li><a href="/courseById/${course.id}">· ${course.title}</a></li>
                            </c:forEach>
                            <a href="" class="relative-a">更多&gt;&gt;</a>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>



<%@include file="/comm/foot.jsp"%>

</body>
</html>