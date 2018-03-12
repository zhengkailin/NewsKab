<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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

        <span class="pull-right">
            <a href="${pageContext.request.contextPath}/index">首页</a>|
            <a href="javascript:;" onclick="addFav(location.href)">加入收藏</a>|
            <a href="javascript:;" onclick="setHomepage(location.href)">设为首页</a>
        </span>
    </div>
</div>


<div class="navmains">
    <div class="container">
        <div class="col-md-3 logo fl"><a href="index.php"><img src="img/logo.gif" alt="logo"/></a></div>
    </div>
</div>


<div style="background: #FAFAFA;" class="container">
    <div class="col-md-8">
        <img src="img/loginBg.jpg" alt=""/>
    </div>
    <div class="col-md-4">
        <div id="log" class="container">
            <form class="lzy" action="${pageContext.request.contextPath}/LoginServlet" method="post">
                <h3 >会员登录</h3>
                <div class="form-group">
                    <input type="text" value="admin" class="form-control"  name="userName" placeholder="用户名" required />
                </div>
                <div class="form-group">
                    <input type="password" value="admin" class="form-control" name="userPassword" placeholder="密码" required />
                </div>
                <div id="yzms" class="errorinfo" style="color: #FF1800">${error}</div>
                <div class="form-group">
                    <%--<input type="text" class="form-control security-code" name="miMa" placeholder="验证码" required />--%>
                    <input type="text" id="u23_input"  class="form-control security-code"
                           name="inputVerifyCode" placeholder="验证码" maxlength="4" required/>
                    <%--<img src="img/u32.jpg" alt="" style="margin: 0 15px;"/>--%>
                        <img class="img" src="/login/getVerifyCode" id="u24_img" style="margin: 0 10px;">
                    <%--<a class="no" href="#">看不清换一张</a>--%>
                      <a class="no" href='#' id="changeVerifImageRegister"
                                     onclick="javascript:changeImage();">看不清换一张</a>
                        <span  style="color: #aa0000"></span>
                </div>
                <input onclick="login()" type="submit" class="btn btn-success" value="登 录"/>
                <p class="text-success pull-left">还没账号？去<a href="${pageContext.request.contextPath}/add" style="color: #FFAE6A;">注册</a></p>
                <p class="text-success pull-right"><a href="${pageContext.request.contextPath}/zhmm" style="color: #5BAF32;">忘记密码？</a></p>
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

<script type="text/javascript" src="/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">

    function genTimestamp() {
        var time = new Date();
        return time.getTime();
    };
    function changeImage() {
        var xx=$("#u24_img").attr("src","${pageContext.request.contextPath }/login/getVerifyCode?timestamp=" + genTimestamp());
    };
    //登录，目前只检测验证码
    function login() {
        if ($("#u23_input").val() != null && $("#u23_input").val() != "") {
            $.ajax({
                url: "/login/login",
                data: {yzm: $("#u23_input").val()},
                dataType: "text",
                type: "post",
                success: function (data) {
                    if (data == "1") {
//                    alert("验证码正确");
//                        document.getElementById("yzms").innerHTML = "验证码正确";
                        $("#yzms").css("display","none");
                        return true;
                    } else if(data == "0"){
//                        document.getElementById("yzms").innerHTML = "验证错误，请重新输入";
                        <%--window.location.href="${pageContext.request.contextPath }/login"+"/${false}" ;--%>
                        return false;
                    }
//                    $("#lzy").submit(
//                        function () {
//                            if(true){
//                                return false;
//                            }else{
//                                return false;
//                            }
//                        }
//                        );
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert(XMLHttpRequest.status + "" + errorThrown);
                }
            });
        }
    };

</script>
</body>
</html>

