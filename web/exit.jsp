<%--
  Created by IntelliJ IDEA.
  User: 12789
  Date: 2019/1/16
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>退出登录</title>
</head>
<body>
<%
session.removeAttribute("user");
%>
<jsp:forward page="login.jsp"/>
</body>
</html>
