<%@ page language="java" contentType="text/html; charset=GB18030"
         pageEncoding="GB18030" %>
<%@ page import="Dao.ProductDao" %>
<%@ page import="entity.Product" %>
<%@ page import="java.util.ArrayList" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!doctype html>
<html>
<head>
    <!--<meta http-equiv="Cache-Control" content="">  <!--不允许缓存 -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--bootstrap要求的框架-->
    <meta name="Description" content="">          <!--设置描述 -->
    <meta http-equiv="x-ua-compatible" content="ie=edge chrome=1">  <!--针对ie浏览器的浏览模式-->
    <meta name="keywords" content=""> <!--设置关键字-->
    <link type="text/css" rel="stylesheet" href="CSS/indexcss.css">
    <link rel="stylesheet" type="text/css" href="bootstrap-3.3.7-dist/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="CSS/denglu.css">
    <title>网上购物商城</title>
    <script src="jquery-3.3.1/jquery-3.3.1.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            $('.theme-login').click(function () {
                $('.theme-popover-mask').fadeIn(100);
                $('.theme-popover').slideDown(200);
            })
            $('.theme-poptit .close').click(function () {
                $('.theme-popover-mask').fadeOut(100);
                $('.theme-popover').slideUp(200);
            })
            $('.theme-signup').click(function () {
                $('.theme-popover-mask').fadeIn(100);
                $('.theme-popover-signup').slideDown(200);
            })
            $('.theme-poptit .close').click(function () {
                $('.theme-popover-mask').fadeOut(100);
                $('.theme-popover-signup').slideUp(200);
            })
        })
    </script>
</head>
<!--<body style="overflow:-Scroll;overflow-x:hidden">-->
<body>
<div><!--总的DIV-->
    <div class="backgroundKuang">
        <img src="picture/index.jpg" height="100%" width="100%" class="backgroundimg" alt="背景图片">
    </div><!--背景图片-->
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
                    if (session.getAttribute("loginUser") != null) {
                        loginUser = (String) session.getAttribute("loginUser");
                    }
                    if (loginUser != null) {
                %>
                <li class="headerli">
                    <p>欢迎您<%=loginUser%>
                    </p>
                </li>
                <li class="headerli">
                    <a href="loginout.jsp" role="button" tabindex="0" aria-haspopup="false" class="headera">
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
                } else {

                %>
                <li class="headerli" id="headLogin">
                    <a role="button" tabindex="0" aria-haspopup="false" href="javascript:;" class="headera theme-login">
                        <p>Login</p>
                    </a>
                </li>
                <li class="headerli" id="headRegister">
                    <a role="button" tabindex="0" aria-haspopup="false" href="javascript:;"
                       class="headera theme-signup">
                        <p>Register</p>
                    </a>
                </li>
                <%
                    }
                %>
            </ul>
        </div>
    </header><!--标题栏-->
    <div class="bigHeading"><!--标题栏的文字-->
        <ul class="bigHeadingul">
            <li class="bigHeadingWord">
                <p>Life</p>
            </li>
            <li class="bigHeadingWord">
                <p>&nbsp;&nbsp;In&nbsp;&nbsp;</p>
            </li>
            <li class="bigHeadingWord">
                <p>Winter</p>
            </li>
        </ul>
    </div><!--标题栏上的文字-->

    <!-- 登录和注册js弹窗处理代码 -->
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

    <section class="Categoryofgoods">  <!--网站售卖类型Section-->
        <div class="Categoryofgoodsdiv">
            <img src="picture/background/Categoryofgoods.jpg" width="100%" height="100%" alt="分类背景图">
        </div>
        <div class="ProductofType"><!--商品分类标题-->
            <h1 class="ProductofTypeh1">Product&nbsp;&nbsp;of&nbsp;&nbsp;Type</h1>
        </div>
        <div class="ProductofTypeKuang"><!--商品分类大框架-->
            <div class="ProductofTypesmallKuang">
                <div class="ProductofTypeico">
                    <a href=""><img src="picture/ico/yifu.ico" alt="衣服分类"></a>
                </div>
                <div class="ProductofTypeHeading">
                    <a href="" class="ProductofTypea"><h2 class="ProductofTypeHeadingFont">Cotton</h2></a>
                </div>
                <div class="ProductofTypeintroduction">'
                    <span class="ProductofTypeintroductionfont">
					在这里，你可以样
					<br>
					式各种样式的棉服
					<br>
					时尚的，好看的，
					<br>
					在这里都可以看到
				</span>
                </div>
            </div>
            <div class="ProductofTypesmallKuang">
                <div class="ProductofTypeico">
                    <a href=""><img src="picture/ico/kuzi.ico" alt="裤子分类"></a>
                </div>
                <div class="ProductofTypeHeading">
                    <a href="" class="ProductofTypea"><h2 class="ProductofTypeHeadingFont"> Trousers</h2></a>
                </div>
                <div class="ProductofTypeintroduction">'
                    <span class="ProductofTypeintroductionfont">
					在这里，你可以样
					<br>
					式各种样式的裤子
					<br>
					时尚的，好看的，
					<br>
					在这里都可以看到
				</span>
                </div>
            </div>
            <div class="ProductofTypesmallKuang">
                <div class="ProductofTypeico">
                    <a href=""><img src="picture/ico/xie.ico" alt="鞋子分类"></a>
                </div>
                <div class="ProductofTypeHeading">
                    <a href="" class="ProductofTypea"><h2 class="ProductofTypeHeadingFont"> Shoes</h2></a>
                </div>
                <div class="ProductofTypeintroduction">
				<span class="ProductofTypeintroductionfont">
					在这里，你可以样
					<br>
					式各种样式的鞋子
					<br>
					时尚的，好看的，
					<br>
					在这里都可以看到
				</span>
                </div>
            </div>
        </div>
    </section>
    <div class="allProduct"><!--全部商品展示-->
        <div class="allProductHeading"><!--标题栏-->
            <p>Hot&nbsp;Products</p>
            <div class="allProductHeadingHeng">
            </div>
            <div class="allProductHeadingJie">
                <p>这里是一些该商城较为火爆的商品</p>
            </div>
        </div>
        <div class="Product"><!--商品栏-->
            <div class="container">
                <%
                    ProductDao productDao = new ProductDao();
                    ArrayList<Product> list = productDao.getAllProduct();
                    for (Product product : list) {
                        if (product.getProduct_hot() == 1) {
                %>
                <div class="hotproduct col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <a href="Goods.jsp?id=<%=product.getProduct_id()%>" class="thumbnail">
                        <img src="picture/Product/<%=product.getProduct_picture()%>" width="100%" height="100%"
                             alt="...">
                    </a>
                    <div class="caption">
                        <h5><%=product.getProduct_title()%>
                        </h5>
                        <p style="color:#E8A106"> ￥ <%=product.getProduct_price()%>
                        </p>
                    </div>
                </div>
                <%
                        }
                    }

                %>

                <!--<div class="hotproduct col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <a href="#" class="thumbnail">
                        <img src="picture/shili.jpg" width="100%" height="100%" alt="...">
                    </a>
                    <div class="caption">
                        <h5>Thumbnail label</h5>
                        <p style="color:#E8A106">$100</p>
                    </div>
                </div>


                <div class="hotproduct col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <a href="#" class="thumbnail">
                        <img src="picture/shili.jpg" width="100%" height="100%" alt="...">
                    </a>
                    <div class="caption">
                        <h5>Thumbnail label</h5>
                        <p style="color:#E8A106">$100</p>
                    </div>
                </div>

                <div class="hotproduct col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <a href="#" class="thumbnail">
                        <img src="picture/shili.jpg" width="100%" height="100%" alt="...">
                    </a>
                    <div class="caption">
                        <h5>Thumbnail label</h5>
                        <p style="color:#E8A106">$100</p>
                    </div>
                </div>


                <div class="hotproduct col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <a href="#" class="thumbnail">
                        <img src="picture/shili.jpg" width="100%" height="100%" alt="...">
                    </a>
                    <div class="caption">
                        <h5>Thumbnail label</h5>
                        <p style="color:#E8A106">$100</p>
                    </div>
                </div>-->
            </div>
        </div>
    </div>
    <section class="Aboutus">
        <div class="AboutusBackgroundimg1"><!--视觉差图片-->
        </div>
        <div class="AboutusBackground"><!--背景图-->
            <div class="Aboutuscenter">
                <h2>关于我们</h2>
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我们是一家专门针对冬天服装的网上商城。各种冬季流行款，潮牌，都可可以再本网站购买。你可以积极宣传我们网站。同时，我们向广大市场招收有志人士，与我们一起共同创业，开拓美好未来。
                </p>
            </div>
        </div>
        <div class="AboutusBottom"><!--底部-->
            <div class="BottomicoKuang">
                <ul>
                    <li class="Bottomico">
                        <a>
                            <img src="picture/ico/QQ.png" height="32" width="32" alt="QQ">
                        </a>
                    </li>
                    <li class="Bottomico">
                        <a>
                            <img src="picture/ico/Wechat.png" height="32" width="32" alt="Wechat">
                        </a>
                    </li>
                    <li class="Bottomico">
                        <a>
                            <img src="picture/ico/Weibo.png" height="32" width="32" alt="Weibo">
                        </a>
                    </li>
                </ul>
            </div>
            <div class="BottomCreator">
                <p>©2018&nbsp;by&nbsp;Mon&nbsp;created&nbsp;with&nbsp;DW</p>
            </div>
        </div>
    </section>
</div>
</body>
</html>