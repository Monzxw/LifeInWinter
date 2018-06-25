<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page language="java" import="java.sql.Statement" import="java.sql.*"%>
<html>
<head>
    <title>登出</title>
</head>
<body>
<%
    out.println("密码错误,正在跳转回主页面......");
    response.setHeader("Refresh","3;url=index.jsp");
    session.setAttribute("loginUser", null);
    request.getRequestDispatcher("index.jsp").forward(request, response);
%>
</body>
</html>