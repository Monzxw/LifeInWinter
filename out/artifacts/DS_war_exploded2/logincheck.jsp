<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page language="java" import="java.sql.Statement" import="java.sql.*"%>
<html>
<head>
    <title>登录提示</title>
</head>
<body>
<%
    String username=(String)request.getParameter("username");
    String password=(String)request.getParameter("password");
    try{
        Class.forName("org.gjt.mm.mysql.Driver");
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }

    try{
        Connection connect=DriverManager.getConnection("jdbc:mysql://localhost/zuke?user=root&password=ZXW19961207..&useUnicode=true&characterEncoding=8859_1");
        //jdbc:mysql://localhost/testdb?user=root&password=mysql&useUnicode=true&characterEncoding=8859_1
        //jdbc:mysql://localhost/数据库名user=数据库登陆用户名&password=数据库登陆密码&useUnicode=是否允许设置字符编码&characterEncoding=允许设置编码时，要设置的编码;

        Statement stmt = connect.createStatement();
        ResultSet rs=stmt.executeQuery("select * from yonghu");
        int userflag=0,passwordflag=0;
        while(rs.next())
        {
            if(username.equalsIgnoreCase(rs.getString("Yonghu_Name")))
            {
                userflag=1;
            }
            if(password.equalsIgnoreCase(rs.getString("Yonghu_code")))
            {
                passwordflag=1;
            }
            if(userflag==1&&passwordflag==1) break;
        }
        if(userflag==1)
        {
            if(passwordflag==1)
            {
                session.setAttribute("loginUser", username);
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
            else
            {
                out.println("密码错误,正在跳转回主页面......");
                response.setHeader("Refresh","3;url=index.jsp");
            }
        }
        else
        {
            out.println("用户不存在,正在跳转回主页面......");
            response.setHeader("Refresh","3;url=index.jsp");
        }
    }
    catch(Exception e)
    {
        out.print("获得数据错误!");
        e.printStackTrace();
    }
%>
</body>
</html>