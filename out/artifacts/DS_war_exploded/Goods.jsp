<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2018/6/12
  Time: 12:42
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
    <link type="text/css" rel="stylesheet" href="CSS/Goodscss.css">
    <link rel="stylesheet" type="text/css" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="bootstrap-3.3.7-dist/css/bootstrap-theme.min.css">
    <title>Goods</title>
</head>
<body>
<div class="Goodspageheader">
    <iframe frameboder="0" scrolling="no" width="100%" height="64" src="index.jsp"></iframe><!--iframe包含法引入头部-->
</div>
<div class="Goodsheader">
    <div class="GoodsUpAndDown">
        <a><span class="glyphicon glyphicon-menu-left"></span></a>
        <a>上一个</a>
        <span class="glyphicon glyphicon-option-vertical"></span>
        <a>下一个</a>
        <a><span class="glyphicon glyphicon-menu-right"></span></a>
    </div>
</div>
<div class="Goods"><!--商品详情-->
    <div class="GoodsBigimage col-lg-3 col-md-4 col-sm-6 col-xs-12"><!--左边图片-->
        <div class="Goodsimage"><!--大图片-->
            <img src="picture/1.jpg" width="100%" height="100%">
        </div><!--大图片-->
    </div>
    <div class="Goodintroduce col-lg-3 col-md-4 col-sm-6 col-xs-12"><!--右边功能区-->
        <h2 style="font-size:42px;font-family:actor;font-weight: 500;">I"m a Title</h2>
        <p style="font-size:21px;font-weight: 300;font-family: actor;margin-top:23px">Sku:0000</p>
        <p class="glyphicon glyphicon-jpy" style="font-size:25px;color:crimson;font-weight: 300;">15.00</p>
        <p style="font-size:21px;font-weight: 300;font-family: actor;margin-top:23px">Size</p>

        <form>
            <select class="Goodintroduceselect">
                <option value="Small">Small</option>
                <option value="Medium">Medium</option>
                <option value="Large">Large</option>
            </select>
        </form>
        <p style="font-size:21px;font-weight: 300;font-family: actor;margin-top:23px">Quantity</p>
        <div class="input-group">
            <input type="number" class="form-control" placeholder="Quantity" aria-describedby="basic-addon2" style="width:131px;height: 51px;font-size:17px;font-weight: 300;border:1px solid #000;" min="1">
        </div>
        <div class="GoodsAddtoCart">
            <button type="button" class="btn btn-default" onclick="this.blur(); return false;document.forms['theForm'].submit();">Add to Cart</button>
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
