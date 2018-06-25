<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2018/6/13
  Time: 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page language="java" import="java.sql.Statement" import="java.sql.*"%>
<%@ page pageEncoding="utf-8"%>
<%request.setCharacterEncoding("utf-8");%>
<html>
<head>
    <title></title>
</head>
<body>
<%
    String logname=request.getParameter("logname");
    String password=request.getParameter("pwd");
    String local=request.getParameter("local");
    try{
        Class.forName("org.gjt.mm.mysql.Driver");
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    //try{
    Connection connect=DriverManager.getConnection("jdbc:mysql://localhost/zuke?user=root&password=ZXW19961207..&useUnicode=true&characterEncoding=8859_1");
    //jdbc:mysql://localhost/testdb?user=root&password=mysql&useUnicode=true&characterEncoding=8859_1
    //jdbc:mysql://localhost/数据库名user=数据库登陆用户名&password=数据库登陆密码&useUnicode=是否允许设置字符编码&characterEncoding=允许设置编码时，要设置的编码;

    Statement stmt = connect.createStatement();
    int rs1=stmt.executeUpdate("insert into yonghu(Yonghu_Name,Yonghu_code,Yonghu_location) values('"+logname+"','"+password+"','"+local+"');");
    out.println("注册成功！，正在返回。。。");
    response.setHeader("Refresh","3;url=index.jsp");

    //}
 /*catch(Exception e)
 {
 out.print("添加数据错误!");
 e.printStackTrace();
 }*/
%>
</body>
</html>