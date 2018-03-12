<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>KAB创业教育网</title>
    <base href="http://localhost:63342/KAB/"/>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
            font-family: 'Microsoft YaHei';
        }

        html, body {
            width: 100%;
            height: 100%;
            background: #F3F3F3;
        }

        .notice {
            position: relative;
            width: 300px;
            padding: 100px;
            margin: 0 auto;
            border: 1px dashed #69C;
            background: white;
        }

        .msginfo {
            margin: 0 auto;
            width: 160px;
        }

        .timemsg {
            postion: absolute;
            bottom: 20px;
            padding-top: 20px;
        }

        .timemsg a {
            font-size: 10px;
        }

        .sucess {
            padding-left: 40px;
            background: #fff url(statics/images/msg_bg.png) no-repeat 0px -600px;
            line-height: 40px;
        }

        .error {
            padding-left: 40px;
            background: #fff url(statics/images/msg_bg.png) no-repeat 0px -400px;
            line-height: 40px;
        }

        .warn {
            padding-left: 40px;
            background: #fff url(statics/images/msg_bg.png) no-repeat 0px -500px;
            line-height: 40px;
        }
    </style>
    <script>
        window.onload = function () {

            var Obox = document.getElementById('box');
            var a = (document.documentElement.clientHeight );
            var b = Obox.offsetHeight;
            Obox.style.top = parseInt((a - b) / 4) + "px";

            var url = "login.jsp";
            var otimer = document.getElementById("timer");
            var n = 5;
            var timer = setInterval(function () {
                n--;
                otimer.innerHTML = n;
                if (n <= 1) {
                    clearInterval(timer);
                    if (url != "")
                        location.href = url;
                    else
                        window.history.back();
                    return;
                }

            }, 1000);
        }
    </script>
</head>
<body>

<div class="notice" id="box">
    <div class="msginfo warn">请先登录</div>
    <div class='timemsg'>
        <a href="login.jsp"> <span id="timer">5</span> 秒后，如果您的浏览器没有自动跳转，请点击这里</a>

    </div>
</div>
</body>
</html>