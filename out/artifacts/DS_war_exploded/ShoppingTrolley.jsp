<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2018/6/12
  Time: 12:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <title>ShoppingTrolley</title>
</head>
<body>
<iframe frameboder="0" scrolling="no" width="100%" height="64" src="index.jsp"></iframe><!--iframe包含法引入头部-->
<div class="ShoppingTrolleyheader">
    <div class="ShoppingTrolleyUpAndDown">
        <a><span class="glyphicon glyphicon-menu-left"></span></a>
        <a>继续购物</a>
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
<div class="ShoppingTrolleymessage"><!--购物车信息-->
    <div class="STimage">
        <div class="STimageitem">
            <img src="picture/1.jpg" width="100%" height="100%">
        </div>
        <div class="STimagemessage">
            <h2>Im a title</h2>
            <p>Sku:004</p>
            <p>Color:red</p>
            <p>Size:small</p>
            <a><p>Remove</p></a>
        </div>
    </div>
    <div class="STitemmessage">
        <div class="STtotal">
            <p>￥25</p>
        </div>
        <div class="STqty">
            <div class="input-group">
                <input type="number" class="form-control" placeholder="Quantity" aria-describedby="basic-addon2" style="width:91px;height: 41px;font-size:17px;font-weight: 300;border:1px solid #000;" min="0">
            </div>
        </div>
        <div class="STprice">
            <p>￥25</p>
        </div>
    </div>
    <div class="STline">
    </div>
</div>

<div class="ShoppingTrolleymessage"><!--购物车信息-->
    <div class="STimage">
        <div class="STimageitem">
            <img src="picture/1.jpg" width="100%" height="100%">
        </div>
        <div class="STimagemessage">
            <h2>Im a title</h2>
            <p>Sku:004</p>
            <p>Color:red</p>
            <p>Size:small</p>
            <a><p>Remove</p></a>
        </div>
    </div>
    <div class="STitemmessage">
        <div class="STtotal">
            <p>￥25</p>
        </div>
        <div class="STqty">
            <div class="input-group">
                <input type="number" class="form-control" placeholder="Quantity" aria-describedby="basic-addon2" style="width:91px;height: 41px;font-size:17px;font-weight: 300;border:1px solid #000;">
            </div>
        </div>
        <div class="STprice">
            <p>￥25</p>
        </div>
    </div>
    <div class="STline">
    </div>
</div>


<div class="ShoppingTrolleymessage"><!--购物车信息-->
    <div class="STimage">
        <div class="STimageitem">
            <img src="picture/1.jpg" width="100%" height="100%">
        </div>
        <div class="STimagemessage">
            <h2>Im a title</h2>
            <p>Sku:004</p>
            <p>Color:red</p>
            <p>Size:small</p>
            <a><p>Remove</p></a>
        </div>
    </div>
    <div class="STitemmessage">
        <div class="STtotal">
            <p>￥25</p>
        </div>
        <div class="STqty">
            <div class="input-group">
                <input type="number" class="form-control" placeholder="Quantity" aria-describedby="basic-addon2" style="width:91px;height: 41px;font-size:17px;font-weight: 300;border:1px solid #000;">
            </div>
        </div>
        <div class="STprice">
            <p>￥25</p>
        </div>
    </div>
    <div class="STline">
    </div>
</div>

<div class="STpurchaseitem">
    <div>
    </div>
    <div>
        <div class="STpurchasemessage">
            <p>Subtotal</p>
            <p style="display: block;padding-left:236px;">￥75</p>
            <p>Adress</p>
            <p style="clear:both;">北京市朝阳区揭发大队总部</p>
        </div>
        <div class="STpurchase">
            <p>Subtotal</p>
            <p style="display: block;padding-left:215px">￥75</p>
            <button type="button" class="btn btn-default" onclick="this.blur();">结&nbsp;算</button>
        </div>
    </div>
</div>
<div class="Foot">
    <script type="text/javascript" src="foot.js"></script><!--js法引入足部-->
</div>
</body>
</html>
