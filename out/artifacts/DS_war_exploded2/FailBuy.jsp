<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2018/6/13
  Time: 19:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--bootstrap要求的框架-->
    <meta name="Description" content="">          <!--设置描述 -->
    <meta http-equiv="x-ua-compatible" content="ie=edge chrome=1">  <!--针对ie浏览器的浏览模式-->
    <meta name="keywords" content=""> <!--设置关键字-->
    <link type="text/css" rel="stylesheet" href="CSS/indexcss.css">
    <link rel="stylesheet" type="text/css" href="bootstrap-3.3.7-dist/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="CSS/ShoppingTrolley.css">
    <link rel="stylesheet" type="text/css" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="bootstrap-3.3.7-dist/css/bootstrap-theme.min.css">
    <link rel="stylesheet" type="text/css" href="CSS/denglu.css">
    <title>购买成功</title>
    <script src="jquery-3.3.1/jquery-3.3.1.js"></script>
    <script>
        jQuery(document).ready(function($) {
            $('.theme-login').click(function(){
                $('.theme-popover-mask').fadeIn(100);
                $('.theme-popover').slideDown(200);
            })
            $('.theme-poptit .close').click(function(){
                $('.theme-popover-mask').fadeOut(100);
                $('.theme-popover').slideUp(200);
            })
            $('.theme-signup').click(function(){
                $('.theme-popover-mask').fadeIn(100);
                $('.theme-popover-signup').slideDown(200);
            })
            $('.theme-poptit .close').click(function(){
                $('.theme-popover-mask').fadeOut(100);
                $('.theme-popover-signup').slideUp(200);
            })
        })
    </script>

</head>
<body>


<header class="header">
    <nav class="headline container"><!--中心导航栏-->
        <ul class="headerul" role="navigation" aria-label="home">
            <li class="headerli" id="headli">
                <a role="button" tabindex="0" aria-haspopup="false" href="index.jsp">
                    <p class="headerp">Home</p>
                </a>
            </li>
            <li class="headerli" id="headlineallcommodity">
                <a role="button" tabindex="0" aria-haspopup="false" href="AllGoods.jsp" class="headera">
                    <p class="headerp">Goods</p>
                </a>
            </li>
            <li class="headerli">
                <a role="button" tabindex="0" aria-haspopup="false" href="Goods.jsp" class="headera">
                    <p class="headerp">About us</p>
                </a>
            </li>
        </ul>
    </nav>
    <div class="headerLoginAndRegistration"><!--登录注册块-->
        <ul class="headerul" role="navigation">
            <% String loginUser = null;
                if(session.getAttribute("loginUser")!=null)
                {
                    loginUser= (String) session.getAttribute("loginUser");
                }
                if(loginUser!=null)
                {
            %>
            <li class="headerli">
                <p>欢迎您<%=loginUser%></p>
            </li>
            <li class="headerli">
                <a href="loginout.jsp" role="button" tabindex="0" aria-haspopup="false"  class="headera">
                    <p>LoginOut</p>
                </a>
            </li>
            <li class="headerli">
                <a href="ShoppingTrolley.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" version="1.1" style="width:55px;height:55px;display:block;float:right;margin-top:81px;margin-right:20px;"
                         viewBox="8.3 0 105.5 126.1" preserveAspectRatio="xMinYMax meet" ng-switch-when="1" fill="red">
                        <path d="M99.8 28.4c0-1.2-0.9-2-2.1-2h-15c0 3.2 0 7.6 0 8.2 0 1.5-1.2 2.6-2.6 2.9 -1.5 0.3-2.9-0.9-3.2-2.3 0-0.3 0-0.3 0-0.6 0-0.9 0-4.7 0-8.2H40.1c0 3.2 0 7.3 0 8.2 0 1.5-1.2 2.9-2.6 2.9 -1.5 0-2.9-0.9-3.2-2.3 0-0.3 0-0.3 0-0.6 0-0.6 0-5 0-8.2h-15c-1.2 0-2 0.9-2 2L8.3 124c0 1.2 0.9 2.1 2.1 2.1h96.3c1.2 0 2.1-0.9 2.1-2.1L99.8 28.4z"></path>
                        <path d="M59.1 5.9c-2.9 0-2 0-2.9 0 -2 0-4.4 0.6-6.4 1.5 -3.2 1.5-5.9 4.1-7.6 7.3 -0.9 1.8-1.5 3.5-1.8 5.6 0 0.9-0.3 1.5-0.3 2.3 0 1.2 0 2.1 0 3.2 0 1.5-1.2 2.9-2.6 2.9 -1.5 0-2.9-0.9-3.2-2.3 0-0.3 0-0.3 0-0.6 0-1.2 0-2.3 0-3.5 0-3.2 0.9-6.4 2-9.4 1.2-2.3 2.6-4.7 4.7-6.4 3.2-2.9 6.7-5 11.1-5.9C53.5 0.3 55 0 56.7 0c1.5 0 2.9 0 4.4 0 2.9 0 5.6 0.6 7.9 1.8 2.6 1.2 5 2.6 6.7 4.4 3.2 3.2 5.3 6.7 6.4 11.1 0.3 1.5 0.6 3.2 0.6 4.7 0 1.2 0 2.3 0 3.2 0 1.5-1.2 2.6-2.6 2.9s-2.9-0.9-3.2-2.3c0-0.3 0-0.3 0-0.6 0-1.2 0-2.6 0-3.8 0-2.3-0.6-4.4-1.8-6.4 -1.5-3.2-4.1-5.9-7.3-7.3 -1.8-0.9-3.5-1.8-5.9-1.8C61.1 5.9 59.1 5.9 59.1 5.9L59.1 5.9z"></path>
                        <text x="58.5" y="77" dy=".35em" text-anchor="middle" class="quantity">4
                        </text>
                    </svg>
                </a>
            </li>
            <%
            }
            else{

            %>
            <li class="headerli" id="headLogin">
                <a role="button" tabindex="0" aria-haspopup="false" href="javascript:;" class="headera theme-login">
                    <p>Login</p>
                </a>
            </li>
            <li class="headerli" id="headRegister">
                <a role="button" tabindex="0" aria-haspopup="false" href="javascript:;" class="headera theme-signup">
                    <p>Register</p>
                </a>
            </li>
            <%
                }
            %>
        </ul>
    </div>
</header><!--标题栏-->

<div style="width:100%;height:100px;padding-top:76px;padding-left: 48%;">
    <p class="container" style="width: 100%;font-size:24px;font-family: actor;">购买失败</p>
    <p class="container" style="width: 100%;font-size:24px;font-family: actor;">购买失败原因：</p>
</div>


<div class="Foot">
    <script type="text/javascript" src="foot.js"></script><!--js法引入足部-->
</div>
</body>
</html>
