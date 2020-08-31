<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 2020/8/31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户注册</title>
    <style type="text/css">
        h1{text-align:center;}
        h4{text-align:right;color:red;}
        body{
            background-image: url("images/01.jpg");
            background-size: 100%;
            background-repeat: no-repeat;
        }
    </style>
</head>
<body>
<div style="text-align: center;">
<form action="registerServlet" method="post" id="form1" style="color: blue;font-size: 25px">
    <h1>用户注册页面</h1>
    <hr/>
        姓名：<input type="text" id="uname" name="uname" placeholder="请输入用户名"><br>
        密码：<input type="password" id="upwd" name="upwd" placeholder="请输入密码"><br>
        确认密码：<input type="password" id="rpwd" name="rpwd" placeholder="请确认密码"><br>
        电话号码：<input type="text" id="uphone" name="uphone" placeholder="请输入电话号码"><br>
        电子邮件：<input type="text" id="uemail" name="uemail" placeholder="请输入电子邮件"><br>
        <input type="submit" value="注册"/>
        <input type="reset" value="重置"/>
        <a href="login.jsp" target="_blank">登陆</a>
        <span style="color: #3cff8a;font-size: 12px">${msg}</span>
    </table>
</form>
</div>
</body>
</html>
