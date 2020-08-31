<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 2020/8/30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>系统登录</title>
</head>
<body>
<div id="aaa">
<form action="loginServlet" method="post" style="color: #41b5ff;font-size: 25px">
    姓名：<input type="text" id="uname" name="uname" placeholder="请输入用户名"><br>
    密码：<input type="password" id="upwd" name="upwd" placeholder="请输入密码"><br>
    <button style="color: blue;font-size: 15px">登录</button>
    <span style="color: #3cff8a;font-size: 12px">${msg}</span>
</form>
</div>
</body>
<style>
    body {

        background-image: url("images/02.jpg");
        background-size: 100%;
        background-repeat: no-repeat;
    }

</style>
</html>
