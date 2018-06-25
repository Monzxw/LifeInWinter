<%@ page language="java" contentType="text/html; charset=GB18030"
         pageEncoding="GB18030"%>
<%@ page import="entity.Product" %>
<%@ page import="Dao.ProductDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.*" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!doctype html>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <!--<meta http-equiv="Cache-Control" content="">  <!--�������� -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--bootstrapҪ��Ŀ��-->
    <meta name="Description" content="">          <!--�������� -->
    <meta http-equiv="x-ua-compatible" content="ie=edge chrome=1">  <!--���ie����������ģʽ-->
    <meta name="keywords" content=""> <!--���ùؼ���-->
    <link type="text/css" rel="stylesheet" href="CSS/indexcss.css">
    <link rel="stylesheet" type="text/css" href="bootstrap-3.3.7-dist/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="CSS/denglu.css">
    <title>���Ϲ����̳�</title>
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
<!--<body style="overflow:-Scroll;overflow-x:hidden">-->
<body>
<div><!--�ܵ�DIV-->
    <div class="backgroundKuang">
        <img src="picture/index.jpg" height="100%" width="100%" class="backgroundimg" alt="����ͼƬ">
    </div><!--����ͼƬ-->
    <header class="header">
        <nav class="headline container"><!--���ĵ�����-->
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
        <div class="headerLoginAndRegistration"><!--��¼ע���-->
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
                    <p>��ӭ��<%=loginUser%></p>
                </li>
                <li class="headerli">
                    <form action="loginout.jsp" method="post">
                    <a role="button" tabindex="0" aria-haspopup="false"  class="headera">
                    <p>LoginOut</p>
                    </a>
                    </form>
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
    </header><!--������-->
    <div class="bigHeading"><!--������������-->
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
    </div><!--�������ϵ�����-->

    <!-- ��¼��ע��js����������� -->
    <div class="theme-popover">
        <div class="theme-poptit">
            <a href="javascript:;" title="�ر�" class="close">��</a>
            <h3>��¼ ��һ��̬��</h3>
        </div>
        <div class="theme-popbod dform">
            <form class="theme-signin" name="loginform" action="logincheck.jsp" method="post">
                <table style="margin-left:100px;">
                    <caption style="font-size: 20px;font-family: actor;color: #0f0f0f;">�û���¼</caption>
                    <tr><td><strong style="font-size: 17px;font-family: actor;color: #0f0f0f;font-weight: 300">�û�����</strong><input class="ipt" type="text" name="username" style="height:27px;width: 241px;"/></td></tr>
                    <tr><td><strong style="font-size: 17px;font-family: actor;color: #0f0f0f;font-weight: 300">���룺&nbsp;&nbsp;&nbsp;</strong><input class="ipt" type="password" name="password" style="height:27px;width:241px;"/></td></tr>
                    <tr><td><input class="btn btn-primary" type="submit" name="submit" value=" �� ¼ " style="display: block;margin-left:63px;margin-top:20px;width:241px;height:27px;font-size: 17px;color:black;font-weight: 300;"/></td></tr>
                </table>
            </form>
        </div>
    </div>
    <div class="theme-popover-mask"></div>
    <div class="theme-popover-signup">
        <div class="theme-poptit">
            <a href="javascript:;" title="�ر�" class="close">��</a>
            <h3>ע�� ��һ��̬��</h3>
        </div>
        <div class="theme-popbod dform">
            <form class="theme-signin" name="loginform" action="" method="post">
                <ol style="margin-top:-20px;">
                    <li><strong style="">&nbsp;�����û�����</strong><input class="ipt" type="text" name="log"  size="20" style="height:27px;width: 241px;"/></li>
                    <li><strong style="">&nbsp;�������룺&nbsp;&nbsp;&nbsp;</strong><input class="ipt" type="password" name="pwd"  size="20" style="height:27px;width: 241px;"/></li>
                    <li><strong style="">���ڵأ�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><input class="ipt" type="text" name="local"  size="20" style="height:27px;width: 241px;"/></li>
                    <li><input class="btn btn-primary" type="submit" name="submit" value=" ע ��" style="display: block;margin-left:199px;margin-top:20px;width:241px;height:27px;font-size: 17px;color:black;font-weight: 300;"/></li>
                </ol>
            </form>
        </div>
    </div>
    <div class="theme-popover-mask"></div>

    <section class="Categoryofgoods">  <!--��վ��������Section-->
        <div class="Categoryofgoodsdiv">
            <img src="picture/background/Categoryofgoods.jpg" width="100%" height="100%" alt="���౳��ͼ">
        </div>
        <div class="ProductofType"><!--��Ʒ�������-->
            <h1 class="ProductofTypeh1">Product&nbsp;&nbsp;of&nbsp;&nbsp;Type</h1>
        </div>
        <div class="ProductofTypeKuang"><!--��Ʒ�������-->
            <div class="ProductofTypesmallKuang">
                <div class="ProductofTypeico">
                    <a href=""><img src="picture/ico/yifu.ico" alt="�·�����"></a>
                </div>
                <div class="ProductofTypeHeading">
                    <a href="" class="ProductofTypea"><h2 class="ProductofTypeHeadingFont">Cotton</h2></a>
                </div>
                <div class="ProductofTypeintroduction">'
                    <span class="ProductofTypeintroductionfont">
					������������
					<br>
					ʽ������ʽ���޷�
					<br>
					ʱ�еģ��ÿ��ģ�
					<br>
					�����ﶼ���Կ���
				</span>
                </div>
            </div>
            <div class="ProductofTypesmallKuang">
                <div class="ProductofTypeico">
                    <a href=""><img src="picture/ico/kuzi.ico" alt="���ӷ���"></a>
                </div>
                <div class="ProductofTypeHeading">
                    <a href="" class="ProductofTypea"><h2 class="ProductofTypeHeadingFont"> Trousers</h2></a>
                </div>
                <div class="ProductofTypeintroduction">'
                    <span class="ProductofTypeintroductionfont">
					������������
					<br>
					ʽ������ʽ�Ŀ���
					<br>
					ʱ�еģ��ÿ��ģ�
					<br>
					�����ﶼ���Կ���
				</span>
                </div>
            </div>
            <div class="ProductofTypesmallKuang">
                <div class="ProductofTypeico">
                    <a href=""><img src="picture/ico/xie.ico" alt="Ь�ӷ���"></a>
                </div>
                <div class="ProductofTypeHeading">
                    <a href="" class="ProductofTypea"><h2 class="ProductofTypeHeadingFont"> Shoes</h2></a>
                </div>
                <div class="ProductofTypeintroduction">
				<span class="ProductofTypeintroductionfont">
					������������
					<br>
					ʽ������ʽ��Ь��
					<br>
					ʱ�еģ��ÿ��ģ�
					<br>
					�����ﶼ���Կ���
				</span>
                </div>
            </div>
        </div>
    </section>
    <div class="allProduct"><!--ȫ����Ʒչʾ-->
        <div class="allProductHeading"><!--������-->
            <p>Hot&nbsp;Products</p>
            <div class="allProductHeadingHeng">
            </div>
            <div class="allProductHeadingJie">
                <p>������һЩ���̳ǽ�Ϊ�𱬵���Ʒ</p>
            </div>
        </div>
        <div class="Product"><!--��Ʒ��-->
            <div class="container">
                <%  ProductDao productDao=new ProductDao();
                    ArrayList<Product> list=productDao.getAllProduct();
                    for(int i=0;i<list.size();i++)
                    {
                        Product product=list.get(i);
                        if(product.getProduct_hot()==1){
                        %>
                <div class="hotproduct col-lg-3 col-md-4 col-sm-6 col-xs-12">
                    <a href="#" class="thumbnail">
                        <img src="picture/shili.jpg" width="100%" height="100%" alt="...">
                    </a>
                    <div class="caption">
                        <h5><%=product.getProduct_title()%></h5>
                        <p style="color:#E8A106">��<%=product.getProduct_price()%></p>
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
        <div class="AboutusBackgroundimg1"><!--�Ӿ���ͼƬ-->
        </div>
        <div class="AboutusBackground"><!--����ͼ-->
            <div class="Aboutuscenter">
                <h2>��������</h2>
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;������һ��ר����Զ����װ�������̳ǡ����ֶ������п���ƣ����ɿ����ٱ���վ��������Ի�������������վ��ͬʱ�����������г�������־��ʿ��������һ��ͬ��ҵ����������δ����
                </p>
            </div>
        </div>
        <div class="AboutusBottom"><!--�ײ�-->
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
                <p>�0�82018&nbsp;by&nbsp;Mon&nbsp;created&nbsp;with&nbsp;DW</p>
            </div>
        </div>
    </section>
</div>
</body>
</html>