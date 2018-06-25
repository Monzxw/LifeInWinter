<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2018/6/12
  Time: 12:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="entity.Product" %>
<%@ page import="Dao.ProductDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.*" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
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
    <link type="text/css" rel="stylesheet" href="CSS/Goodscss.css">
    <link rel="stylesheet" type="text/css" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="bootstrap-3.3.7-dist/css/bootstrap-theme.min.css">
    <link rel="stylesheet" type="text/css" href="CSS/denglu.css">
    <title>Goods</title>
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

        function selflog_show(id)
        {
            var num = $("#Number").val();
            var size= $("#Size").val();
            $.ajax({
                url:"/CartServlet",
                data:{
                    "action":"add",
                    "id":id,
                    "num":num,
                    "size":size
                },
                asyc:false,
                success:function(data) {
                    if(data=="success"){
                        alert("添加成功");
                    }
                    else {
                        alert("添加失败");
                    }
                },
                error:function(jqHXR) {
                    alert("服务器内部错误"+jqHXR.status);
                }
            });
        }
    </script>
</head>
<body>
<div class="Goodspageheader">

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


    <div class="theme-popover">
        <div class="theme-poptit">
            <a href="javascript:;" title="关闭" class="close">×</a>
            <h3>登录 是一种态度</h3>
        </div>
        <div class="theme-popbod dform">
            <form class="theme-signin" name="loginform" action="logincheck.jsp" method="post">
                <table style="margin-left:100px;">
                    <caption style="font-size: 20px;font-family: actor;color: #0f0f0f;">用户登录</caption>
                    <tr>
                        <td><strong
                                style="font-size: 17px;font-family: actor;color: #0f0f0f;font-weight: 300">用户名：</strong><input
                                class="ipt" type="text" name="username" style="height:27px;width: 241px;"/></td>
                    </tr>
                    <tr>
                        <td><strong style="font-size: 17px;font-family: actor;color: #0f0f0f;font-weight: 300">密码：&nbsp;&nbsp;&nbsp;</strong><input
                                class="ipt" type="password" name="password" style="height:27px;width:241px;"/></td>
                    </tr>
                    <tr>
                        <td><input class="btn btn-primary" type="submit" name="submit" value=" 登 录 "
                                   style="display: block;margin-left:63px;margin-top:20px;width:241px;height:27px;font-size: 17px;color:black;font-weight: 300;"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <div class="theme-popover-mask"></div>
    <div class="theme-popover-signup">
        <div class="theme-poptit">
            <a href="javascript:;" title="关闭" class="close">×</a>
            <h3>注册 是一种态度</h3>
        </div>
        <div class="theme-popbod dform">
            <form class="theme-signin" name="loginform" action="Signup.jsp" method="post">
                <ol style="margin-top:-20px;">
                    <li><strong>&nbsp;设置用户名：</strong><input class="ipt" type="text" name="logname" size="20"
                                                            style="height:27px;width: 241px;"/></li>
                    <li><strong>&nbsp;设置密码：&nbsp;&nbsp;&nbsp;</strong><input class="ipt" type="password" name="pwd"
                                                                             size="20"
                                                                             style="height:27px;width: 241px;"/></li>
                    <li><strong>所在地：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><input class="ipt" type="text"
                                                                                              name="local" size="20"
                                                                                              style="height:27px;width: 241px;"/>
                    </li>
                    <li><input class="btn btn-primary" type="submit" name="submit" value=" 注 册"
                               style="display: block;margin-left:199px;margin-top:20px;width:241px;height:27px;font-size: 17px;color:black;font-weight: 300;"/>
                    </li>
                </ol>
            </form>
        </div>
    </div>
    <div class="theme-popover-mask"></div>



</div>
<%
    ProductDao productDao=new ProductDao();
    String temp=request.getParameter("id");
    if(temp==null) temp="10001";
    if(Integer.parseInt(temp)<10001) temp="10001";
    int inttemp=Integer.parseInt(temp);
    int lastint=inttemp-1;
    int nextint=inttemp+1;
    if(lastint==10000) lastint=10001;
    Product product=productDao.getproductById(temp);
    Product productnext=productDao.getproductById(String.valueOf(nextint));
    if(productnext==null) nextint--;
    if(product!=null){

%>
<div class="Goodsheader">
    <div class="GoodsUpAndDown">
        <a href="Goods.jsp?id=<%=lastint%>"><span class="glyphicon glyphicon-menu-left"></span></a>
        <a href="Goods.jsp?id=<%=lastint%>">上一个</a>
        <span class="glyphicon glyphicon-option-vertical"></span>
        <a href="Goods.jsp?id=<%=nextint%>">下一个</a>
        <a href="Goods.jsp?id=<%=nextint%>"><span class="glyphicon glyphicon-menu-right"></span></a>
    </div>
</div>
<div class="Goods"><!--商品详情-->
    <div class="GoodsBigimage col-lg-3 col-md-4 col-sm-6 col-xs-12"><!--左边图片-->
        <div class="Goodsimage"><!--大图片-->
            <img src="picture/Product/<%=product.getProduct_picture()%>" width="100%" height="100%">
        </div><!--大图片-->
    </div>
    <div class="Goodintroduce col-lg-3 col-md-4 col-sm-6 col-xs-12"><!--右边功能区-->
        <h2 style="font-size:42px;font-family:actor;font-weight: 500;"><%=product.getProduct_title()%></h2>
        <p style="font-size:21px;font-weight: 300;font-family: actor;margin-top:23px"><%=product.getProduct_id()%></p>
        <p class="glyphicon glyphicon-jpy" style="font-size:25px;color:crimson;font-weight: 300;"><%=product.getProduct_price()%></p>
        <% } %>
        <p style="font-size:21px;font-weight: 300;font-family: actor;margin-top:23px">Size</p>

        <form>
            <select class="Goodintroduceselect" name="Size" id="Size" name="Size">
                <option value="Small">Small</option>
                <option value="Medium">Medium</option>
                <option value="Large">Large</option>
            </select>
        </form>
        <p style="font-size:21px;font-weight: 300;font-family: actor;margin-top:23px">Quantity</p>
        <div class="input-group">
            <input type="number" name="Number"id="Number" class="form-control" value="1" placeholder="Quantity" aria-describedby="basic-addon2" style="width:131px;height: 51px;font-size:17px;font-weight: 300;border:1px solid #000;" min="1">
        </div>
        <div class="GoodsAddtoCart">
            <button type="button" class="btn btn-default" onclick="selflog_show(<%=product.getProduct_id()%>)">Add to Cart</button>
        </div>
        <div class="GoodsInfo">
            <h4>Product Info</h4>
            <div class="GoodsInfoWord">
                <p>这件大衣穿起来很舒适，就算刮风下雨穿他也是很舒适，你说你买不起，我听你在放狗屁，还不赶快给我买回去</p>
            </div>
        </div>
        <!--<div class="dropdown">
              <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                Dropdown
                <span class="caret"></span>
              </button>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                 <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                 <li><a href="#">Something else here</a></li>
                 <li role="separator" class="divider"></li>
                 <li><a href="#">Separated link</a></li>
               </ul>
        </div>-->
    </div>
</div>
<script type="text/javascript" src="foot.js"></script><!--js法引入足部-->
<script type="text/javascript" src="jquery-3.3.1/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</body>
</html>
