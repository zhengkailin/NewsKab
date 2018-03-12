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
        <h3>KAB课程</h3>
        <img src="/img/banner.gif" alt=""/>
    </div>
    <div class="locaiton"><a href="/indexlist">首页</a>&gt;&gt;<a href="/courselist">KAB课程</a>&gt;&gt;详细</div>
</div>
<div class="container article">
    <div class="articleTop">
        <h3>${course.title}</h3>
        <span>${course.createName}</span>
        <span>${course.createDate}</span>
        <span>访问量：<em id="hits">${course.visitorCount}</em></span>
    </div>
    <div class="m-leftmenv">
        <div>
            <p class="al">
                该课程以国际劳工组织编写的英文教材为蓝本，经国际劳工组织授权，作了符合我国实际情况的本土化改编。教学内容分为8个模块，依次为：什么是企业（模块1）、为什么要发扬创业精神（模块2）、什么样的人能成为创业者（模块3）、如何成为创业者（模块4）、如何找到一个好的企业想法（模块5）、如何组建一家企业（模块6）、如何经营一家企业（模块7）、如何准备商业计划书（模块8）。教学时间约需36个学时。学生选修该课程可以获得相应的学分。
            </p>

            <p class="al">
                 该课程的教学用书包含讲师用书、学生用书和商业游戏。讲师用书的具体内容包括教学大纲和教学指南两部分内容。学生用书包括两部分：第一部分为练习，注重培养学生的创业素质。具体包括自我测试、课堂演示、小组活动、案例分析、头脑风暴、嘉宾访谈、商业游戏等多种形式，生动活泼，具有极强的实践效果。第二部分为阅读材料。此部分紧密结合练习内容，为每个模块提供了丰富的阅读材料，力求理论与实践相结合，重点以知识背景、实践经验分析、操作指南为内容，提供给学生更丰富的指示并引导他们更深入地学习。
            </p>

            <p class="al">
                 该课程实行小班授课，突出以学生为中心的教学思想，体现出更多的参与特点，主要以鼓励、促使学生主动思考、亲身体验为主，在编写体例和教学方法上都有创新之处，是一门有创意、实用性强的创业基础教育课程，适合高等院校的各学科学生学习。
            </p>

            <p class="al">
                一、时 间：2013年7月10～13日,9日报到
            </p>

            <p class="al">
                二、地 点：北京
            </p>

            <p class="al">
                三、费 用：2980元/人。
            </p>

            <p class="al">
                四、师 资：项目指派培训师。
            </p>

            <p class="al">
                五、联 系 人：${course.teacher}&nbsp; 联系电话：${course.phone}
            </p>

            <p class="al">
                六、接收报名表邮箱：${course.email}
            </p>
        </div>
    </div>
</div>

<%@include file="/comm/foot.jsp"%>
</body>
</html>
