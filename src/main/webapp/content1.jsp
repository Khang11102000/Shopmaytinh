<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@page import="model.Category"%>
<%@page import="model.Product"%>
<%@page import="java.util.Map"%>
<%@page import="model.Item"%>
<%@page import="model.Cart"%>
<%@page import="model.User"%>
<%@page import="get.CategoryGet"%>
<%@page import="get.BrandGet"%>
<%@page import="get.ProductGet"%>
<%@page import="java.text.DecimalFormat"%>
<!DOCTYPE html>
<html lang="en">
    <%
        DecimalFormat formatter = new DecimalFormat("###,###,###");
        ProductGet productGet = new ProductGet();
        BrandGet brandget = new BrandGet();
        String category_id = "";
        String brand_id = "";
        if (request.getParameter("category") != null) {
            category_id = request.getParameter("category");
        }
        if (request.getParameter("brand") != null) {
            brand_id = request.getParameter("brand");
        }
        CategoryGet categoryget = new CategoryGet();


    %>
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
        <%--<jsp:include page="header1.jsp"></jsp:include>--%>
        <%--<jsp:include page="banner1.jsp"></jsp:include>--%>
        <div class="body-content outer-top-xs" id="top-banner-and-menu">
            <div class="container">
                <div class="row"> 
                    <!-- ============================================== SIDEBAR ============================================== -->
                    <div class="col-xs-12 col-sm-12 col-md-3 sidebar"> 
                    </div>
                    <!-- /.sidemenu-holder --> 
                    <!-- ============================================== SIDEBAR : END ============================================== --> 

                    <!-- ============================================== CONTENT ============================================== -->
                    <div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder"> 

                        <!-- ============================================== SCROLL TABS ============================================== -->
                        <div id="product-tabs-slider" class="scroll-tabs outer-top-vs wow fadeInUp">
                            <div class="more-info-tab clearfix ">
                                <h3 class="new-product-title pull-left">Sản phẩm mới</h3>
                                <ul class="nav nav-tabs nav-tab-line pull-right" id="new-products-1">
                                    <li class="active"><a data-transition-type="backSlide" href="#all" data-toggle="tab">All</a></li>
                                    <li><a data-transition-type="backSlide" href="products.jsp?category=1">Laptop</a></li>
                                    <li><a data-transition-type="backSlide" href="products.jsp?category=2">PC</a></li>
                                    <li><a data-transition-type="backSlide" href="products.jsp?category=4">Linh kiện</a></li>
                                </ul>
                                <!-- /.nav-tabs --> 
                            </div>
                            <div class="tab-content outer-top-xs">
                                <div class="tab-pane in active" id="all">
                                    <div class="product-slider">
                                        <div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="4">
                                            <div class="item item-carousel">
                                                <% for (Product p : productGet.getList3ProductByCategory(Long.parseLong("1"))) {
                                                %>
                                                <div class="products">

                                                    <div class="product">
                                                        <div class="product-image">
                                                            <div class="image"> <a href="single.jsp?productID=<%=p.getProductID()%>"><img src="<%=p.getProductImage()%>" alt=""></a> 

                                                            </div>
                                                            <!-- /.image -->

                                                            <div class="tag new"><span>new</span></div>
                                                        </div>
                                                        <!-- /.product-image -->

                                                        <div class="product-info text-center">

                                                            <h4 class="product-price"><%=formatter.format(p.getProductPrice())%> VNĐ</h4>
                                                            <h3 class="name"><a href="single.jsp?productID=<%=p.getProductID()%>""><p><%=p.getProductName()%></p></a></h3>
                                                            <!-- Add to Cart -->
                                                            <div>
                                                                <a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" data-text="Chọn mua" class ="btn btn-upper btn-primary ">Chọn mua</a>

                                                            </div>

                                                            <div class="rating rateit-small" style="margin-top: 5px"></div>
                                                            <div class="description"></div>
                                                            <div class="product-price"> <span class="price"> <%=formatter.format(p.getProductPrice())%> VNĐ </span> </div>
                                                            <!-- /.product-price --> 

                                                        </div>
                                                        <!-- /.product-info -->
                                                        <div class="cart clearfix animate-effect">
                                                            <div class="action">
                                                                <ul class="list-unstyled">
                                                                    <li class="add-cart-button btn-group">
                                                                        <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"  > <i class="fa fa-shopping-cart"></i> </button>
                                                                        <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                                                    </li>
                                                                    <li class="lnk wishlist"> <a data-toggle="tooltip" class="add-to-cart" href="#" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                                                </ul>
                                                            </div>
                                                            <!-- /.action --> 
                                                        </div>
                                                        <!-- /.cart --> 
                                                    </div>
                                                    <!-- /.product --> 

                                                </div>
                                                <% } %>
                                                <!-- /.products --> 
                                            </div>
                                            <!-- /.item -->

                                            <div class="item item-carousel">
                                                <% for (Product p : productGet.getList3ProductByCategory(Long.parseLong("2"))) {
                                                %>
                                                <div class="products">

                                                    <div class="product">
                                                        <div class="product-image">
                                                            <div class="image"> <a href="single.jsp?productID=<%=p.getProductID()%>"><img src="<%=p.getProductImage()%>" alt=""></a> 

                                                            </div>
                                                            <!-- /.image -->

                                                            <div class="tag new"><span>new</span></div>
                                                        </div>
                                                        <!-- /.product-image -->

                                                        <div class="product-info text-center">

                                                            <h4 class="product-price"><%=formatter.format(p.getProductPrice())%> VNĐ</h4>
                                                            <h3 class="name"><a href="single.jsp?productID=<%=p.getProductID()%>""><p><%=p.getProductName()%></p></a></h3>
                                                            <!-- Add to Cart -->
                                                            <div>
                                                                <a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" data-text="Chọn mua" class ="btn btn-upper btn-primary ">Chọn mua</a>

                                                            </div>

                                                            <div class="rating rateit-small" style="margin-top: 5px"></div>
                                                            <div class="description"></div>
                                                            <div class="product-price"> <span class="price"> <%=formatter.format(p.getProductPrice())%> VNĐ </span> </div>
                                                            <!-- /.product-price --> 

                                                        </div>
                                                        <!-- /.product-info -->
                                                        <div class="cart clearfix animate-effect">
                                                            <div class="action">
                                                                <ul class="list-unstyled">
                                                                    <li class="add-cart-button btn-group">
                                                                        <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"  > <i class="fa fa-shopping-cart"></i> </button>
                                                                        <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                                                    </li>
                                                                    <li class="lnk wishlist"> <a data-toggle="tooltip" class="add-to-cart" href="#" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                                                </ul>
                                                            </div>
                                                            <!-- /.action --> 
                                                        </div>
                                                        <!-- /.cart --> 
                                                    </div>
                                                    <!-- /.product --> 

                                                </div>
                                                <% } %>
                                                <!-- /.products --> 
                                            </div>
                                            <div class="item item-carousel">
                                                <% for (Product p : productGet.getList3ProductByCategory(Long.parseLong("5"))) {
                                                %>
                                                <div class="products">

                                                    <div class="product">
                                                        <div class="product-image">
                                                            <div class="image"> <a href="single.jsp?productID=<%=p.getProductID()%>"><img src="<%=p.getProductImage()%>" alt=""></a> 

                                                            </div>
                                                            <!-- /.image -->

                                                            <div class="tag new"><span>new</span></div>
                                                        </div>
                                                        <!-- /.product-image -->

                                                        <div class="product-info text-center">

                                                            <h4 class="product-price"><%=formatter.format(p.getProductPrice())%> VNĐ</h4>
                                                            <h3 class="name"><a href="single.jsp?productID=<%=p.getProductID()%>""><p><%=p.getProductName()%></p></a></h3>
                                                            <!-- Add to Cart -->
                                                            <div>
                                                                <a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" data-text="Chọn mua" class ="btn btn-upper btn-primary ">Chọn mua</a>

                                                            </div>

                                                            <div class="rating rateit-small" style="margin-top: 5px"></div>
                                                            <div class="description"></div>
                                                            <div class="product-price"> <span class="price"> <%=formatter.format(p.getProductPrice())%> VNĐ </span> </div>
                                                            <!-- /.product-price --> 

                                                        </div>
                                                        <!-- /.product-info -->
                                                        <div class="cart clearfix animate-effect">
                                                            <div class="action">
                                                                <ul class="list-unstyled">
                                                                    <li class="add-cart-button btn-group">
                                                                        <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"  > <i class="fa fa-shopping-cart"></i> </button>
                                                                        <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                                                    </li>
                                                                    <li class="lnk wishlist"> <a data-toggle="tooltip" class="add-to-cart" href="#" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                                                </ul>
                                                            </div>
                                                            <!-- /.action --> 
                                                        </div>
                                                        <!-- /.cart --> 
                                                    </div>
                                                    <!-- /.product --> 

                                                </div>
                                                <% } %>
                                                <!-- /.products --> 
                                            </div>
                                            <div class="item item-carousel">
                                                <% for (Product p : productGet.getList3ProductByCategory(Long.parseLong("4"))) {
                                                %>
                                                <div class="products">

                                                    <div class="product">
                                                        <div class="product-image">
                                                            <div class="image"> <a href="single.jsp?productID=<%=p.getProductID()%>"><img src="<%=p.getProductImage()%>" alt=""></a> 

                                                            </div>
                                                            <!-- /.image -->

                                                            <div class="tag new"><span>new</span></div>
                                                        </div>
                                                        <!-- /.product-image -->

                                                        <div class="product-info text-center">

                                                            <h4 class="product-price"><%=formatter.format(p.getProductPrice())%> VNĐ</h4>
                                                            <h3 class="name"><a href="single.jsp?productID=<%=p.getProductID()%>""><p><%=p.getProductName()%></p></a></h3>
                                                            <!-- Add to Cart -->
                                                            <div>
                                                                <a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" data-text="Chọn mua" class ="btn btn-upper btn-primary ">Chọn mua</a>

                                                            </div>

                                                            <div class="rating rateit-small" style="margin-top: 5px"></div>
                                                            <div class="description"></div>
                                                            <div class="product-price"> <span class="price"> <%=formatter.format(p.getProductPrice())%> VNĐ </span> </div>
                                                            <!-- /.product-price --> 

                                                        </div>
                                                        <!-- /.product-info -->
                                                        <div class="cart clearfix animate-effect">
                                                            <div class="action">
                                                                <ul class="list-unstyled">
                                                                    <li class="add-cart-button btn-group">
                                                                        <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart"  > <i class="fa fa-shopping-cart"></i> </button>
                                                                        <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                                                    </li>
                                                                    <li class="lnk wishlist"> <a data-toggle="tooltip" class="add-to-cart" href="#" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                                                </ul>
                                                            </div>
                                                            <!-- /.action --> 
                                                        </div>
                                                        <!-- /.cart --> 
                                                    </div>
                                                    <!-- /.product --> 

                                                </div>
                                                <% }%>
                                                <!-- /.products --> 
                                            </div>
                                        </div>
                                        <!-- /.home-owl-carousel --> 
                                    </div>
                                    <!-- /.product-slider --> 
                                </div>
                                <!-- /.tab-pane -->


                                <!-- /.tab-pane -->
                            </div>
                            <!-- /.tab-content --> 
                        </div>
                        <!-- /.scroll-tabs --> 
                        <!-- ============================================== SCROLL TABS : END ============================================== -->     
                    </div>
                    <!-- /.homebanner-holder --> 
                    <!-- ============================================== CONTENT : END ============================================== --> 
                </div>
                <!-- /.row --> 
            </div>
            <!-- /.container --> 
        </div>
        <%--<jsp:include page="footer1.jsp"></jsp:include>--%>
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