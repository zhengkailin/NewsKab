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
            <%--<a href="javascript:;" onclick="addFav(location.href)">加入收藏</a>|--%>
            <%--<a href="javascript:;" onclick="setHomepage(location.href)">设为首页</a>--%>
        </span>
    </div>
</div>


<div class="navmains">
    <div class="container">
        <div class="col-md-3 logo fl"><a href="index.php"><img src="img/logo.gif" alt="logo"/></a></div>
    </div>
</div>


<div id="register" class="container">
    <div class="col-md-8">
        <form class="lzy" action="${pageContext.request.contextPath}/addUser" method="post" id="form1">
            <h3>会员注册</h3>
            <div class="errorinfo">${error }</div>
            <div class="form-group">
                <input id="userName" type="text" class="form-control" name="userName" placeholder="用户名" required/>
                <span id="yhms" style="color: #00A000;float: right;padding-right: 160px"></span>
                <span id="yhmss" style="color: #aa0000;float: right;padding-right: 160px"></span>
            </div>
            <div class="form-group">
                <input id="miMa" type="password" class="form-control" name="miMa" placeholder="密码" required/>
            </div>
            <div class="form-group">
                <input id="pwd"type="password" class="form-control" name="miMas" placeholder="确认密码" required/>
                <span id="pwds" style="color: #00A000;float: right;padding-right: 180px"></span>
                <span id="pwdss" style="color: #aa0000;float: right;padding-right: 100px"></span>
            </div>
            <div class="form-group">
                <input id="email" type="Email" class="form-control" name="email" placeholder="邮箱" required/>
                <span id="emails" style="color: #00A000;float: right;padding-right: 160px"></span>
            </div>
            <div class="form-group">
                <%--<input type="text" class="form-control security-code" name="miMa" placeholder="验证码" required/>--%>
                <input type="text" id="u21_input" class="form-control security-code" style="width: 90px;"
                       name="inputVerifyCode" placeholder="验证码" maxlength="4" required/>
                    <span id="yzms" style="color: #aa0000"></span>
                <%--<img src="img/u32.jpg" alt="" style="margin: 0 24px;"/>--%>
                    <img class="img" src="/login/getVerifyCode" id="u22_img" style="margin: 0 24px;"/>
                <a href='#' id="changeVerifImageRegister"
                   onclick="javascript:changeImage();">看不清换一张</a>
            </div>
            <input  type="submit" class="btn btn-success login-button" value="立即注册"/>
        </form>
    </div>

    <div class="col-md-4 log-register">
        已有账号，<a c href="${pageContext.request.contextPath}/login">立即登录</a>
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
    }
    function changeImage() {
        var xx=$("#u22_img").attr("src","${pageContext.request.contextPath }/login/getVerifyCode?timestamp=" + genTimestamp());
    };

//    $("#lzy").submit(
//        function () {
//             if(true){
//                 return true;
//             }else{
//                 return false;
//             }
//        }
//    );
    $("#pwd").blur(function () {
        if( $("#pwd").val()!=null && $("#pwd").val()!=""){
        var miMa = document.getElementById("miMa").value;
        var pwd = document.getElementById("pwd").value;
        if(miMa==pwd){
            document.getElementById("pwds").innerHTML="验证正确";
            $("#pwds").css("display","block");
            $("#pwdss").css("display","none");
            return true;
        }else{
            document.getElementById("pwdss").innerHTML="验证错误，请重新输入";
            $("#pwdss").css("display","block");
            $("#pwds").css("display","none");
            //window.location.href="index.jsp";
            return false;
        }
        }
    });
    //登录，目前只检测验证码
    $("#u21_input").blur(function () {
        if( $("#u21_input").val()!=null && $("#u21_input").val()!="") {
            $.ajax({
                url: "/login/login",
                data: {yzm: $("#u21_input").val()},
                dataType: "text",
                type: "post",
                success: function (data) {
                    if (data == "1") {
                        $("#yzms").css("display","none");
                        return true;
//                        $(".lzy").submit();
                    } else {
                        document.getElementById("yzms").innerHTML = "验证错误，请重新输入";
//                        $("#yzms").css("display","block");
                        return false;
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert(XMLHttpRequest.status + "" + errorThrown);
                }
            });
        }
    });

    //    判断用户名已存在

    $("#userName").blur(function () {
        if( $("#userName").val()!=null && $("#userName").val()!="") {
            $.ajax({
                type: "post",
                data: {yhm: $("#userName").val()},
                dataType: "text",
                url: "/existUsername",
                success: function (data) {
                    if (data == "1") {
                        document.getElementById("yhms").innerHTML = "用户可以使用";
                        $("#yhms").css("display","block");
                        $("#yhmss").css("display","none");
                        return true;
                    } else {
                        document.getElementById("yhmss").innerHTML = "用户名已存在";
                        $("#yhmss").css("display","block");
                        $("#yhms").css("display","none");
                        return false;
                    }
                },

                error: function (i, v, x) {
                    alert(x);
                }
            })
        }
    });

</script>
</body>
</html>
