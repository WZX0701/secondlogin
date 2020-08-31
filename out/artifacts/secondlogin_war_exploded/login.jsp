<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 2020/8/30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>系统登录</title>
    <style type="text/css">
        h1{text-align:center;}
        body {
            background-image: url("images/02.jpg");
            background-size: 100%;
            background-repeat: no-repeat;
        }
        a{text-decoration:none;font-size:20px;color:black;}
        a:hover{text-decoration:underline;font-size:24px;color:red;}
    </style>
</head>
<body>
<div style="text-align: center;">
<form action="loginServlet" method="get" style="color: blue;font-size: 25px">
    <h1>用户登录页面</h1>
    <hr/>
    姓名：<input type="text" id="uname" name="uname" placeholder="请输入用户名"><br>
    密码：<input type="password" id="upwd" name="upwd" placeholder="请输入密码"><br>
        <input type="submit" value="登录"/>
        <input type="reset" value="重置"/>
        <a href="register.jsp" target="_blank">注册</a>
        <span style="color: #3cff8a;font-size: 12px">${msg}</span>

</form>
</div>
</body>
</html>
