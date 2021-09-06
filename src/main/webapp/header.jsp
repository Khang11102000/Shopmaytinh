 <%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="get.BrandGet"%>
<%@page import="model.Brand"%>
<%@page import="java.util.Map"%>
<%@page import="model.Item"%>
<%@page import="model.Cart"%>
<%@page import="model.User"%>
<%@page import="model.Category"%>
<%@page import="get.CategoryGet"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Meta -->
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="keywords" content="MediaCenter, Template, eCommerce">
        <meta name="robots" content="all">
        <title>JSP Computer shop</title>
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
        <!-- ============================================== HEADER ============================================== -->
        <header class="header-style-1">
            <!-- ============================================== TOP MENU ============================================== -->
            <div class="top-bar animate-dropdown">
                <div class="container">
                    <div class="header-top-inner">
                        <div class="cnt-account">
                            <ul class="list-unstyled">
                                <!--<li><a href="myaccount.jsp"><i class="icon fa fa-user"></i>My Account</a></li>-->
                                <li><a href="checkout.jsp"><i class="icon fa fa-shopping-cart"></i>Giỏ hàng</a></li>
                                
                                <li><a href="cart-history.jsp"><i class="icon fa fa-check"></i>Lịch sử mua hàng</a></li>

                                <%if (user != null) {%>
                                <li class="list-unstyled"><a href="myaccount.jsp"><i class="icon fa fa-lock"> </i> <%=user.getUserName()%></a>
                                </li>
                                <% } %>
                                
                                <%if (user == null) { %>

                                <li>
                                    <a href="login.jsp">Sign In</a></li>
                                    <% }%>
                                
                                <li><a href="LogoutServlet"><i class="icon fa fa-sign-out"></i>Đăng xuất</a></li>

                            </ul>
                        </div><!-- /.cnt-account -->

                        <div class="cnt-block">
                            <ul class="list-unstyled list-inline">

                            </ul><!-- /.list-unstyled -->
                        </div><!-- /.cnt-cart -->
                        <div class="clearfix"></div>
                    </div><!-- /.header-top-inner -->
                </div><!-- /.container -->
            </div><!-- /.header-top -->
            <!-- ============================================== TOP MENU : END ============================================== -->
            <div class="main-header">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-3 logo-holder">
                            <!-- ============================================================= LOGO ============================================================= -->
                            <div class="logo">
                                <a href="index.jsp">

                                    <img src="assets\images\logo.png" alt="">

                                </a>
                            </div><!-- /.logo -->
                            <!-- ============================================================= LOGO : END ============================================================= -->				</div><!-- /.logo-holder -->

                        <div class="col-xs-12 col-sm-12 col-md-6 top-search-holder">
                            <!-- /.contact-row -->
                            <!-- ============================================================= SEARCH AREA ============================================================= -->
                            <div class="search-area">
                                <form>
                                    <div class="control-group">

                                        <ul class="categories-filter animate-dropdown" style="z-index: 100">
                                            <li class="dropdown">

                                                <a class="dropdown-toggle" data-toggle="dropdown" href="category.html">Categories <b class="caret"></b></a>

                                                <ul class="dropdown-menu" role="menu">
                                                    
                                                        <%
                                                            for (Category c : categoryget.getListCategory()) {
                                                        %>
                                                    <li><a href="products.jsp?category=<%=c.getCategoryID()%>"><%=c.getCategoryName()%></a></li>
                                                        <%
                                                            }
                                                        %>
                                                </ul>
                                            </li>
                                        </ul>

                                        <input class="search-field" placeholder="Search here...">

                                        <a class="search-button" href="#"></a>    

                                    </div>
                                </form>
                            </div><!-- /.search-area -->
                            <!-- ============================================================= SEARCH AREA : END ============================================================= -->				</div><!-- /.top-search-holder -->

                        <div class="col-xs-12 col-sm-11 col-md-3 animate-dropdown top-cart-row">
                            <!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->

                            <div class="dropdown dropdown-cart">
                                <a href="checkout.jsp" class="dropdown-toggle lnk-cart">
                                    <div class="items-cart-inner">
                                        <div class="basket">
                                            <i class="glyphicon glyphicon-shopping-cart"></i>
                                        </div>
                                        <div class="basket-item-count"><span class="count"> </span></div>
                                        <div class="total-price-basket">
                                            <span class="lbl">cart -</span>
                                            <span class="total-price">
                                                <span><%=formatter.format(cart.totalCart())%></span><span class="sign"> VND</span>
                                            </span>
                                        </div>


                                    </div>
                                </a>
                            </div><!-- /.dropdown-cart -->

                            <!-- ============================================================= SHOPPING CART DROPDOWN : END============================================================= -->				</div><!-- /.top-cart-row -->
                    </div><!-- /.row -->

                </div><!-- /.container -->

            </div><!-- /.main-header -->

            <!-- ============================================== NAVBAR ============================================== -->
            <div class="header-nav animate-dropdown">
                <div class="container">
                    <div class="yamm navbar navbar-default" role="navigation">
                        <div class="navbar-header">
                            <button data-target="#mc-horizontal-menu-collapse" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <div class="nav-bg-class">
                            <div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
                                <div class="nav-outer">
                                    <ul class="nav navbar-nav">
                                        <li class="active dropdown yamm-fw">
                                            <a href="index.jsp" data-hover="dropdown" class="dropdown-toggle" >Home</a>

                                        </li>
                                        <li class="dropdown yamm mega-menu">
                                            <a href="index.jsp" data-hover="dropdown" class="dropdown-toggle" >Hot Deal</a>
                                            <ul class="dropdown-menu container">
                                                <li>
                                                    <div class="yamm-content ">
                                                        <div class="row">

     




                                                            <div class="col-xs-12 col-sm-6 col-md-4 col-menu banner-image">
                                                                <img class="img-responsive" src="https://theme.hstatic.net/1000026716/1000440777/14/solid4.jpg?v=17395" alt="">
                                                            </div><!-- /.yamm-content -->

                                                            <div class="col-xs-12 col-sm-6 col-md-4 col-menu banner-image">
                                                                <img class="img-responsive" src="https://theme.hstatic.net/1000026716/1000440777/14/solid5.jpg?v=17395" alt="">
                                                            </div><!-- /.yamm-content -->
                                                            <div class="col-xs-12 col-sm-6 col-md-4 col-menu banner-image">
                                                                <img class="img-responsive" src="https://theme.hstatic.net/1000026716/1000440777/14/solid2.jpg?v=17395" alt="">
                                                            </div><!-- /.yamm-content -->
                                                        </div>
                                                    </div>

                                                </li>
                                            </ul>

                                        </li>

                                        <li class="dropdown mega-menu">
                                            <a href="category.html" data-hover="dropdown" class="dropdown-toggle" data-toggle="dropdown">Thương hiệu
                                                <span class="menu-label hot-menu hidden-xs">hot</span>
                                            </a>
                                            <ul class="dropdown-menu container">
                                                <li>
                                                    <div class="yamm-content">
                                                        <div class="row">

                                                            <div class="col-xs-12 col-sm-6 col-md-2 col-menu">
                                                                <h2 class="title">Danh mục sản phẩm</h2>
                                                                <ul class="links">
                                                                    <li class="menu-header"></li>
                                                                        <%
                                                                            for (Category c : categoryget.getListCategory()) {
                                                                        %>
                                                                    <li class="menu-header"><a href="products.jsp?category=<%=c.getCategoryID()%>"><%=c.getCategoryName()%></a></li>
                                                                        <%
                                                                            }
                                                                        %>
                                                                </ul>
                                                            </div><!-- /.col -->
                                                            <div class="col-xs-12 col-sm-12 col-md-2 col-menu">
                                                                <h2 class="title">Laptops</h2>
                                                                <ul class="links">

                                                                    <%
                                                                        for (Brand b : brandget.getListBrand()) {
                                                                    %>
                                                                    <li><a href="productbrand.jsp?brand=<%=b.getBrandID()%>"><%=b.getBrandName()%></a></li>
                                                                        <%
                                                                            }
                                                                        %>
                                                                </ul>
                                                            </div><!-- /.col -->

                                                            

                                                            <div class="col-xs-12 col-sm-12 col-md-4 col-menu custom-banner">
                                                                <a href="#"><img alt="" src="https://theme.hstatic.net/1000026716/1000440777/14/xxxbanner1.jpg?v=17469"></a>
                                                            </div>
                                                        </div><!-- /.row -->
                                                    </div><!-- /.yamm-content -->					</li>
                                            </ul>
                                        </li>
                                        <li class="dropdown hidden-sm">

                                            <a href="products.jsp?category=2">Xây dựng cấu hình
                                                <span class="menu-label new-menu hidden-xs">new</span>
                                            </a>
                                        </li>

                                        <li class="dropdown hidden-sm">
                                            <a href="products.jsp?category=1">Macbook</a>
                                        </li>

                                        <li class="dropdown">
                                            <a href="index.jsp">Sản phẩm mới</a>
                                        </li>

                                        <li class="dropdown">
                                            <a href="contact.jsp">Liên hệ </a>
                                        </li>

                                        <li class="dropdown  navbar-right special-menu">
                                            <a href="index.jsp">Todays offer</a>
                                        </li>


                                    </ul><!-- /.navbar-nav -->
                                    <div class="clearfix"></div>				
                                </div><!-- /.nav-outer -->
                            </div><!-- /.navbar-collapse -->


                        </div><!-- /.nav-bg-class -->
                    </div><!-- /.navbar-default -->
                </div><!-- /.container-class -->

            </div><!-- /.header-nav -->
            <!-- ============================================== NAVBAR : END ============================================== -->

        </header>
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

        <!-- For demo purposes – can be removed on production -->

        <script src="switchstylesheet/switchstylesheet.js"></script>

        <script>
            $(document).ready(function () {
                $(".changecolor").switchstylesheet({seperator: "color"});
                $('.show-theme-options').click(function () {
                    $(this).parent().toggleClass('open');
                    return false;
                });
            });

            $(window).bind("load", function () {
                $('.show-theme-options').delay(2000).trigger('click');
            });
        </script>
        <!-- For demo purposes – can be removed on production : End -->



    </body>
</html>
