<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2018/6/12
  Time: 12:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="entity.*"%>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="Dao.ProductDao" %>
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
    <link rel="stylesheet" type="text/css" href="bootstrap-3.3.7-dist/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="CSS/ShoppingTrolley.css">
    <link rel="stylesheet" type="text/css" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="bootstrap-3.3.7-dist/css/bootstrap-theme.min.css">
    <link rel="stylesheet" type="text/css" href="CSS/denglu.css">
    <title>ShoppingTrolley</title>
    <script src="jquery-3.3.1/jquery-3.3.1.js"></script>

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











<!--<iframe frameboder="0" scrolling="no" width="100%" height="64" src="index.jsp"></iframe><!--iframe包含法引入头部-->
<div class="ShoppingTrolleyheader">
    <div class="ShoppingTrolleyUpAndDown">
        <a href="Goods.jsp"><span class="glyphicon glyphicon-menu-left"></span></a>
        <a href="Goods.jsp">继续购物</a>
    </div>
    <div class="ShoppingTrolleyitem">
        <div class="ShopingTrolleyMyCart">
            <h3>MyCart</h3>
        </div>
        <div class="ShopingTrolleyPrice">
            <p>Total</p>
        </div>
        <div class="ShopingTrolleyQty">
            <p>Qty</p>
        </div>
        <div class="ShopingTrolleyTotal">
            <p>Price</p>
        </div>
    </div>
    <div class="ShoppingTrolleyline"> <!--下边灰色的线-->
    </div>
</div>


<%
    if(request.getSession().getAttribute("cart")!=null)
    {
        Cart cart = (Cart)request.getSession().getAttribute("cart");
        HashMap<BuyProduct,Integer> goods=cart.getGoods();
        Set<BuyProduct> buyProducts=goods.keySet();
        Iterator<BuyProduct> it = buyProducts.iterator();
        while(it.hasNext())
        {
            BuyProduct i=it.next();
            int tempsize=i.getSize();
            String size;
            if(tempsize==0){
                size="Small";
            }
            else if(tempsize==1){
                size="Medium";
            }
            else {
                size="Large";
            }
            String tempid=i.getProduct_id();
            ProductDao productDao=new ProductDao();
            Product product=new Product();
            product=productDao.getproductById(tempid);
%>
<div class="ShoppingTrolleymessage"><!--购物车信息-->
    <div class="STimage">
        <div class="STimageitem">
            <img src="picture/Product/<%=product.getProduct_picture()%>" width="100%" height="100%">
        </div>
        <div class="STimagemessage">
            <h2><%=product.getProduct_title()%></h2>
            <p><%=product.getProduct_id()%></p>
            <p>Color:red</p>
            <p><%=size%></p>
            <a class="remove-btn"><p>Remove</p></a>
            <b style="display: none;"><%=product.getProduct_id()%></b>
        </div>
    </div>
    <div class="STitemmessage">
        <div class="STtotal">
            <p>￥<%=product.getProduct_price()%></p>
        </div>
        <div class="STqty">
            <div class="input-group">
                <input type="number" class="form-control" placeholder="<%=goods.get(i)%>" aria-describedby="basic-addon2" style="width:91px;height: 41px;font-size:17px;font-weight: 300;border:1px solid #000;" min="0">
            </div>
        </div>
        <div class="STprice">
            <%
                double price=product.getProduct_price();
                int Num=goods.get(i);
                price=price*Num;
            %>
            <p>￥<%=price%></p>
        </div>
    </div>
    <div class="STline">
    </div>
</div>
<%
    }
}
else{
%>
<div style="padding: 200px 0;">
    <h3 style="display: block; text-align: center; ">没有任何商品，<a href="AllGoods.jsp">继续购物</a></h3>
</div>
<%
    }
%>
<%
    Cart cart = (Cart)request.getSession().getAttribute("cart");
%>
<div class="STpurchaseitem">
    <div>
    </div>
    <div>
        <div class="STpurchasemessage">
            <p>Subtotal</p>
            <p style="display: block;padding-left:236px;">￥<%=cart.getTotalprice()%></p>
            <p>Adress</p>
            <p style="clear:both;">北京市朝阳区揭发大队总部</p>
        </div>
        <div class="STpurchase">
            <p>Subtotal</p>
            <p style="display: block;float: right;">￥<%=cart.getTotalprice()%></p>
            <button type="button" class="btn btn-default" onclick="deleteall_item()">结&nbsp;算</button>
        </div>
    </div>
</div>
<div class="Foot">
    <script type="text/javascript" src="foot.js"></script><!--js法引入足部-->
</div>

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

    $(".remove-btn").click(function () {
        //href="?action=delete&id=<%--=product.getProduct_id()--%>"
        var size = $($(this).prev()[0]).html();
        var id = $($(this).next("b")).html();
        $.ajax({
            url:"/CartServlet",
            data:{
                "action":"delete",
                "id":id,
                "size":size
            },
            async:false,
            success:function (data) {
                if(data=="success"){
                    alert("删除成功");
                    $(window).attr("location","ShoppingTrolley.jsp");
                }
                else{
                    alert("删除失败");
                }
            },
            error:function (jqHXR) {
                alert("服务器内部错误");
            }
        })
    });


    function deleteall_item()
    {

        $.ajax({
            url:"/CartServlet",
            data:{
                "action":"deleteall"
            },
            async:false,
            success:function(data) {
                if(data=="success"){
                    alert("结算成功");
                    $(window).attr("location","ShoppingTrolley.jsp");
                }
                else {
                    alert("结算失败");
                }
            },
            error:function(jqHXR) {
                alert("服务器内部错误"+jqHXR.status);
            }
        });
    }
</script>
</body>
</html>
