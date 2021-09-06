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
            <!-- ============================================== TOP MENU ============================================== -->
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
                        <!-- ============================================================= SHOPPING CART DROPDOWN : END============================================================= -->				</div><!-- /.top-cart-row -->
                </div><!-- /.row -->

            </div><!-- /.container -->

        </div><!-- /.main-header -->

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
