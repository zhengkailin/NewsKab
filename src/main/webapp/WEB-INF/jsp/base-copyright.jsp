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
                <li><a href="base-copyright.jsp" class="on">版权声明</a></li>
                <li><a href="base-hiring.jsp">人才招聘</a></li>
                <li><a href="base-relation.jsp">联系我们</a></li>
            </ul>
        </div>
    </div>
    <div class="col-md-9">
        <div class="m-leftmenv fl">
            <div style="text-align:center;">
                    <span style="white-space:nowrap;line-height:1.5;">
                        1、本网所有内容，凡注明"来源：北大青鸟××（频道）"的所有文字、图片和音视频资料，版权均属北大青鸟公司所有，<br/>
                        任何媒体、网站或个人未经本网协议授权不得转载、链接、转贴或以其他方式复制发布/发表。已经本网协议授权的媒体、网站，<br/>
                        在下载使用时必须注明"稿件来源：北大青鸟网"，违者本网将依法追究责任。 </span>
            </div>

            <span style="white-space:nowrap;">
                <div style="text-align:left;">
                    <span style="line-height:1.5;">凡本网注明"来源：XXX "的文/图等稿件，本网转载出于传递更多信息之目的，并不意味着赞同其观点或证实其内容的真实性。</span>
                </div>
            </span>

            <div style="text-align:left;">
                <span style="white-space:nowrap;"><br/></span>
            </div>
            <div style="text-align:left;">
                <br/>
            </div>
            <span style="white-space:nowrap;">
                <div style="text-align:left;">
                    <span style="line-height:1.5;">2、除注明"来源：北大青鸟××（频道）"的内容外，本网以下内容亦不可任意转载：</span>
                </div>
            </span>
            <span style="white-space:nowrap;">
                <div style="text-align:left;">
                    <span style="line-height:1.5;">a.本网所指向的非本网内容的相关链接内容； </span>
                </div>
            </span>
            <span style="white-space:nowrap;">
                <div style="text-align:left;">
                    <span style="line-height:1.5;">b.已作出不得转载或未经许可不得转载声明的内容； </span>
                </div>
            </span>
            <span style="white-space:nowrap;">
                <div style="text-align:left;">
                    <span style="line-height:1.5;">c.未由本网署名或本网引用、转载的他人作品等非本网版权内容； </span>
                </div>
            </span>
            <span style="white-space:nowrap;">
                <div style="text-align:left;">
                    <span style="line-height:1.5;">d.本网中特有的图形、标志、页面风格、编排方式、程序等； </span>
                </div>
            </span>
            <span style="white-space:nowrap;">
                <div style="text-align:left;">
                    <span style="line-height:1.5;">e.本网中必须具有特别授权或具有注册用户资格方可知晓的内容； </span>
                </div>
            </span>
            <span style="white-space:nowrap;">
                <div style="text-align:left;">
                    <span style="line-height:1.5;">f.其他法律不允许或本网认为不适合转载的内容。</span>
                </div>
            </span>

            <div style="text-align:left;">
		        <span style="white-space:nowrap;"><br/></span>
            </div>
            <div style="text-align:left;">
                <br/>
            </div>
            <span style="white-space:nowrap;">
                <div style="text-align:left;">
                    <span style="line-height:1.5;">
                        3、转载或引用本网内容必须是以新闻性或资料性公共免费信息为使用目的的合理、善意引用，不得对本<br/>
                        网内容原意进行曲解、修改，同时必须保留本网注明的"稿件来源"，并自负版权等法律责任。</span>
                </div>
            </span>

            <div style="text-align:left;">
		        <span style="white-space:nowrap;"><br/></span>
            </div>
            <div style="text-align:left;">
                <br/>
            </div>
            <span style="white-space:nowrap;">
                <div style="text-align:left;">
                    <span style="line-height:1.5;">4、转载或引用本网内容不得进行如下活动：</span>
                </div>
            </span>
            <span style="white-space:nowrap;">
                <div style="text-align:left;">
                    <span style="line-height:1.5;">a. 损害本网或他人利益；</span>
                </div>
            </span>
            <span style="white-space:nowrap;">
                <div style="text-align:left;">
                    <span style="line-height:1.5;">b. 任何违法行为； </span>
                </div>
            </span>
            <span style="white-space:nowrap;">
                <div style="text-align:left;">
                    <span style="line-height:1.5;">c. 任何可能破坏公秩良俗的行为； </span>
                </div>
            </span>
            <span style="white-space:nowrap;">
                <div style="text-align:left;">
                    <span style="line-height:1.5;">d. 擅自同意他人继续转载、引用本网内容；</span>
                </div>
            </span>

            <div style="text-align:left;">
		        <span style="white-space:nowrap;"><br/></span>
            </div>
            <div style="text-align:left;">
                <br/>
            </div>
            <span style="white-space:nowrap;">
                <div style="text-align:left;">
                    <span style="line-height:1.5;">5、转载或引用本网版权所有之内容须注明“转自（或引自）北大青鸟网”字样，并标明本网网址。</span>
                </div>
            </span>

            <div style="text-align:left;">
                <span style="white-space:nowrap;"><br/>
            </span>
            </div>
            <div style="text-align:left;">
                <br/>
            </div>
            <span style="white-space:nowrap;">
                <div style="text-align:left;">
                    <span style="line-height:1.5;">6、转载或引用本网中的署名文章，请按规定向作者支付稿酬。</span>
                </div>
            </span>

            <div style="text-align:left;">
		        <span style="white-space:nowrap;"><br/></span>
            </div>
            <div style="text-align:left;">
                <br/>
            </div>
            <span style="white-space:nowrap;">
                <div style="text-align:left;">
                    <span style="line-height:1.5;">7、对于不当转载或引用本网内容而引起的民事纷争、行政处理或其他损失，本网不承担责任。</span>
                </div>
            </span>

            <div style="text-align:left;">
		        <span style="white-space:nowrap;"><br/></span>
            </div>
            <div style="text-align:left;">
                <br/>
            </div>
            <span style="white-space:nowrap;">
                <div style="text-align:left;">
                    <span style="line-height:1.5;">8、本网以“法定许可”方式使用作品的报酬，已委托中华版权代理总公司代为转付。请相关作者直接与中华版权代理总公司联系，联系电话为：010-*****。</span>
                </div>
            </span>

            <div style="text-align:left;">
		        <span style="white-space:nowrap;"><br/></span>
            </div>
            <div style="text-align:left;">
                <br/>
            </div>
            <span style="white-space:nowrap;">
                <div style="text-align:left;">
                    <span style="line-height:1.5;">9、对不遵守本声明或其他违法、恶意使用本网内容者，本网保留追究其法律责任的权利。</span>
                </div>
            </span>

            <div style="text-align:left;">
                <span style="line-height:1.5;"></span>
            </div>
        </div>
    </div>
</div>
</div>

<%@include file="/comm/foot.jsp"%>


</body>
</html>
