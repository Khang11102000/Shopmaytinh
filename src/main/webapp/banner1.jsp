<%@page import="java.text.DecimalFormat"%>
<%@page import="model.Product"%>
<%@page import="get.ProductGet"%>

<%@page import="get.BrandGet"%>
<%@page import="model.Brand"%>
<%@page import="java.util.Map"%>
<%@page import="model.Item"%>
<%@page import="model.Cart"%>
<%@page import="model.User"%>
<%@page import="model.Category"%>
<%@page import="get.CategoryGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Meta -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="keywords" content="MediaCenter, Template, eCommerce">
        <meta name="robots" content="all">
        <title>JSPCOMPUTER - HI-END LAPTOP & COMPUTER WORLD</title>

        <!-- Bootstrap Core CSS -->
        <link rel="stylesheet" href="assets\css\bootstrap.min.css">

        <!-- Customizable CSS -->
        <link rel="stylesheet" href="assets\css\main.css">
        <link rel="stylesheet" href="assets\css\blue.css">
        <link rel="stylesheet" href="assets\css\owl.carousel.css">
        <link rel="stylesheet" href="assets\css\owl.transitions.css">
        <link rel="stylesheet" href="assets\css\animate.min.css">
        <link rel="stylesheet" href="assets\css\rateit.css">
        <link rel="stylesheet" href="assets\css\bootstrap-select.min.css">

        <!-- Icons/Glyphs -->
        <link rel="stylesheet" href="assets\css\font-awesome.css">

        <!-- Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,800' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    </head>
    <body class="cnt-home">

        <%
            CategoryGet categoryget = new CategoryGet();
            BrandGet brandget = new BrandGet();
            User user = null;
            if (session.getAttribute("user") != null) {
                user = (User) session.getAttribute("user");
            }
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
            DecimalFormat formatter = new DecimalFormat("###,###,###");
        %>

        
        <div class="body-content outer-top-xs" id="top-banner-and-menu">
            <div class="container">
                
                <div class="row"> 
                    <div class="col-xs-12 col-sm-12 col-md-3 sidebar"> 

                            <!-- ================================== TOP NAVIGATION ================================== -->
                            <div class="side-menu animate-dropdown outer-bottom-xs">
                                <div class="head"><i class="icon fa fa-align-justify fa-fw"></i> Categories</div>
                                <nav class="yamm megamenu-horizontal">
                                    <ul class="nav">
                                        <li class="dropdown menu-item">

                                            <!--<a class="dropdown-toggle" data-toggle="dropdown" href="category.html">Categories </a>-->

<!--                                            <ul class="dropdown-menu" role="menu">-->

                                                <%
                                                    for (Category c : categoryget.getListCategory()) {
                                                %>
                                                <li><a href="products.jsp?category=<%=c.getCategoryID()%>"><%=c.getCategoryName()%></a></li>
                                                    <%
                                                        }
                                                    %>
                                            <!--</ul>-->
                                        </li>
                                        
                                    </ul>
                                    <!-- /.nav --> 
                                </nav>
                                <!-- /.megamenu-horizontal --> 
                            </div>
                            <!-- /.side-menu --> 
                        </div>
                    <!-- ============================================== CONTENT ============================================== -->
                    <div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder"> 
                        <!-- ========================================== SECTION – HERO ========================================= -->

                        <div id="hero">
                            <div id="owl-main" class="owl-carousel owl-inner-nav owl-ui-sm">
                                <div class="item" style="background-image: url(https://gnd-tech.com/content/2018/08/ryzen-threadripper-second-gen.jpg);">
                                    <div class="container-fluid">
                                        <div class="caption bg-color vertical-center text-left">
                                            <div class="slider-header fadeInDown-1"> <span class="highlight">Sale Sốc</span></div>
                                            <div class="big-text fadeInDown-1"> <span class="highlight">Mua CPU AMD </span> </div>
                                            <div class="slider-header fadeInDown-1" style="color: #000"> <span class="highlight">Nhận ngay code game & phần mềm bản quyền</span> </div>
                                            <div class="button-holder fadeInDown-3"> <a href="products.jsp?category=4" class="btn-lg btn btn-uppercase btn-primary shop-now-button">Shop Now</a> </div>
                                        </div>
                                        <!-- /.caption --> 
                                    </div>
                                    <!-- /.container-fluid --> 
                                </div>
                                <!-- /.item -->

                                <div class="item" style="background-image: url(https://pktottot.com/wp-content/uploads/2020/12/mach-ban-7-dieu-can-dac-biet-quan-tam-khi-mua-pc-gaming-gia-lam.jpg);">
                                    <div class="container-fluid">
                                        <div class="caption bg-color vertical-center text-left">
                                            <div class="slider-header fadeInDown-1">Spring 2021</div>
                                            <div class="big-text fadeInDown-1"> JSP <span class="highlight">PC</span> </div>
                                            <div class="excerpt fadeInDown-2 hidden-xs"> <span>Dịch vụ Custom PC theo nhu cầu</span> </div>
                                            <div class="button-holder fadeInDown-3"> <a href="products.jsp?category=2" class="btn-lg btn btn-uppercase btn-primary shop-now-button">Shop Now</a> </div>
                                        </div>
                                        <!-- /.caption --> 
                                    </div>
                                    <!-- /.container-fluid --> 
                                </div>
                                <!-- /.item --> 

                            </div>
                            <!-- /.owl-carousel --> 
                        </div>

                        <!-- ========================================= SECTION – HERO : END ========================================= --> 

                        <!-- ============================================== INFO BOXES ============================================== -->
                        <div class="info-boxes wow fadeInUp">
                            <div class="info-boxes-inner">
                                <div class="row">
                                    <div class="col-md-6 col-sm-4 col-lg-4">
                                        <div class="info-box">
                                            <div class="row">
                                                <div class="col-xs-12">
                                                    <h4 class="info-box-heading green">Bảo hành</h4>
                                                </div>
                                            </div>
                                            <h6 class="text">Chính sách bảo hành 18 tháng</h6>
                                        </div>
                                    </div>
                                    <!-- .col -->

                                    <div class="hidden-md col-sm-4 col-lg-4">
                                        <div class="info-box">
                                            <div class="row">
                                                <div class="col-xs-12">
                                                    <h4 class="info-box-heading green">free shipping</h4>
                                                </div>
                                            </div>
                                            <h6 class="text">Miễn phí giao hàng nội thành</h6>
                                        </div>
                                    </div>
                                    <!-- .col -->

                                    <div class="col-md-6 col-sm-4 col-lg-4">
                                        <div class="info-box">
                                            <div class="row">
                                                <div class="col-xs-12">
                                                    <h4 class="info-box-heading green">Sale Sốc</h4>
                                                </div>
                                            </div>
                                            <h6 class="text">Giảm giá lên đến 45%</h6>
                                        </div>
                                    </div>
                                    <!-- .col --> 
                                </div>
                                <!-- /.row --> 
                            </div>
                            <!-- /.info-boxes-inner --> 

                        </div>
                        <!-- /.sidebar-widget --> 
                        <!-- ============================================== BEST SELLER : END ============================================== --> 
                    </div>
                    <!-- /.homebanner-holder --> 
                    <!-- ============================================== CONTENT : END ============================================== --> 
                </div>
                <!-- /.row --> 
                <!-- ============================================== BRANDS CAROUSEL ============================================== -->
                <div id="brands-carousel" class="logo-slider wow fadeInUp">
                    <div class="logo-slider-inner">
                        <div id="brand-slider" class="owl-carousel brand-slider custom-carousel owl-theme">
                            <div class="item m-t-15"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand1.png" src="assets\images\blank.gif" alt=""> </a> </div>
                            <!--/.item-->

                            <div class="item m-t-10"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand2.png" src="assets\images\blank.gif" alt=""> </a> </div>
                            <!--/.item-->

                            <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand3.png" src="assets\images\blank.gif" alt=""> </a> </div>
                            <!--/.item-->

                            <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand4.png" src="assets\images\blank.gif" alt=""> </a> </div>
                            <!--/.item-->

                            <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand5.png" src="assets\images\blank.gif" alt=""> </a> </div>
                            <!--/.item-->

                            <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand6.png" src="assets\images\blank.gif" alt=""> </a> </div>
                            <!--/.item-->

                            <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand2.png" src="assets\images\blank.gif" alt=""> </a> </div>
                            <!--/.item-->

                            <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand4.png" src="assets\images\blank.gif" alt=""> </a> </div>
                            <!--/.item-->

                            <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand1.png" src="assets\images\blank.gif" alt=""> </a> </div>
                            <!--/.item-->

                            <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand5.png" src="assets\images\blank.gif" alt=""> </a> </div>
                            <!--/.item--> 
                        </div>
                        <!-- /.owl-carousel #logo-slider --> 
                    </div>
                    <!-- /.logo-slider-inner --> 

                </div>
                <!-- /.logo-slider --> 
                <!-- ============================================== BRANDS CAROUSEL : END ============================================== --> 
            </div>
            <!-- /.container --> 
        </div>
        <!-- /#top-banner-and-menu --> 

        <!-- For demo purposes – can be removed on production --> 

        <!-- For demo purposes – can be removed on production : End --> 

        <!-- JavaScripts placed at the end of the document so the pages load faster --> 
        <script src="assets\js\jquery-1.11.1.min.js"></script> 
        <script src="assets\js\bootstrap.min.js"></script> 
        <script src="assets\js\bootstrap-hover-dropdown.min.js"></script> 
        <script src="assets\js\owl.carousel.min.js"></script> 
        <script src="assets\js\echo.min.js"></script> 
        <script src="assets\js\jquery.easing-1.3.min.js"></script> 
        <script src="assets\js\bootstrap-slider.min.js"></script> 
        <script src="assets\js\jquery.rateit.min.js"></script> 
        <script type="text/javascript" src="assets\js\lightbox.min.js"></script> 
        <script src="assets\js\bootstrap-select.min.js"></script> 
        <script src="assets\js\wow.min.js"></script> 
        <script src="assets\js\scripts.js"></script>
    </body>
</html>