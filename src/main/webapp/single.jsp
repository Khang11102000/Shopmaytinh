
<%@page import="java.text.DecimalFormat"%>
<%@page import="get.BrandGet"%>
<%@page import="model.Brand"%>
<%@page import="get.CategoryGet"%>
<%@page import="model.Category"%>
<%@page import="get.ReviewGet"%>
<%@page import="model.Review"%>
<%@page import="model.Product"%>
<%@page import="get.ProductGet"%>
<%@page import="get.ProductGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>THÔNG TIN ĐƠN PHẨM</title>

        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- js -->
        <script src="js/jquery.min.js"></script>
        <!-- js -->
        <!-- cart -->
        <script src="js/simpleCart.min.js"></script>
        <!-- cart -->
        <!-- for bootstrap working -->
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
        <!-- //for bootstrap working -->
        <!-- js -->
        <script src="js/jquery.min.js"></script>
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


</head>
<body>

    <%
        ProductGet productGet = new ProductGet();
        BrandGet brandget = new BrandGet();
        Product product = new Product();
        String productID = "";
        if (request.getParameter("productID") != null) {
            productID = request.getParameter("productID");
            product = productGet.getProduct(Long.parseLong(productID));
        }
        ReviewGet reviewGet = new ReviewGet();
        long category_id = product.getCategoryID();
        Review review = new Review();
        CategoryGet categoryget = new CategoryGet();
        String category_id_1 = "1";
        DecimalFormat formatter = new DecimalFormat("###,###,###");
    %>

    <jsp:include page="header.jsp"></jsp:include>
        <div class="product">
            <div class="container">
                <div class='col-md-3 sidebar'> 
                    <!-- ================================== TOP NAVIGATION ================================== -->
                    <div class="side-menu animate-dropdown outer-bottom-xs">
                        <!--<div class="col-xs-12 col-sm-12 col-md-3 sidebar">--> 

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
                    <!--</div>-->
                </div>
                <!-- /.side-menu --> 
                <!-- ================================== TOP NAVIGATION : END ================================== -->
                <div class="sidebar-module-container">
                    <div class="sidebar-filter"> 
                        <!-- ============================================== SIDEBAR CATEGORY ============================================== -->
                        <div class="sidebar-widget wow fadeInUp">
                            <h3 class="section-title">shop by</h3>
                            <div class="widget-header">
                                <h4 class="widget-title">Brand</h4>
                            </div>
                            <div class="sidebar-widget-body">
                                <div class="accordion">
                                    <ul class="accordion-group">


                                        <%
                                            for (Brand b : brandget.getListBrand()) {
                                        %>
                                        <li class="accordion-heading" ><a class="accordion-toggle collapsed" href="productbrand.jsp?brand=<%=b.getBrandID()%>"><%=b.getBrandName()%></a></li>	
                                            <% }%>                                           
                                        <!-- /.accordion-heading -->
                                        <!-- /.accordion-body --> 
                                    </ul>
                                    <!-- /.accordion-group -->
                                </div>
                                <!-- /.accordion --> 
                            </div>
                            <!-- /.sidebar-widget-body --> 
                        </div>
                        <!-- /.sidebar-widget --> 
                        <!-- ============================================== SIDEBAR CATEGORY : END ============================================== --> 

                        <!-- ============================================== PRICE SILDER============================================== -->
                        <div class="sidebar-widget wow fadeInUp" style="margin-bottom: 20px">
                            <div class="widget-header">
                                <h4 class="widget-title">Price Slider</h4>
                            </div>
                            <div class="sidebar-widget-body m-t-10">
                                <div class="price-range-holder"> <span class="min-max"> <span class="pull-left">$200.00</span> <span class="pull-right">$800.00</span> </span>
                                    <input type="text" id="amount" style="border:0; color:#666666; font-weight:bold;text-align:center;">
                                    <input type="text" class="price-slider" value="">
                                </div>
                                <!-- /.price-range-holder --> 
                                <a href="#" class="lnk btn btn-primary">Show Now</a> </div>
                            <!-- /.sidebar-widget-body --> 
                        </div>
                        <!-- /.sidebar-widget --> 
                        <!-- ============================================== PRICE SILDER : END ============================================== --> 
                        <!-- /.sidebar-widget --> 
                    </div>
                    <!-- /.sidebar-filter --> 
                </div>
                <!-- /.sidebar-module-container --> 
            </div>
            <div class="col-md-9 animated wow fadeInUp" style="background-color: #fff">

                <div class="col-md-5 grid-im">

                    <div class="flexslider">
                        <ul class="slides">
                            <li data-thumb="<%=product.getProductImage()%>">
                                <div class="thumb-image"> <img src="<%=product.getProductImage()%>" > </div>
                            </li>
                            <li data-thumb="<%=product.getProductImageForward()%>">
                                <div class="thumb-image"> <img src="<%=product.getProductImageForward()%>" > </div>
                            </li>
                            <li data-thumb="<%=product.getProductImageBack()%>">
                                <div class="thumb-image"> <img src="<%=product.getProductImageBack()%>"> </div>
                            </li>
                        </ul>
                    </div>
                </div>	

                <div class="col-md-7 single-top-in">
                    <div class="span_2_of_a1 simpleCart_shelfItem">
                        <h3><%=product.getProductName()%></h3>

                        <div class="price_single">
                            <span class="reducedfrom item_price" ><%=formatter.format(product.getProductPrice())%> VNĐ</span>
                            <a href="CartServlet?command=plus&productID=<%=product.getProductID()%>" data-text="Chọn mua" class ="btn btn-upper btn-primary      ">Chọn mua</a>

                            <div class="clearfix"> </div>
                        </div>


                        <div class="clearfix"> </div>
                    </div>
                    <!----- tabs-box ---->
                    <div class="sap_tabs">	
                        <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                            <ul class="resp-tabs-list">
                                <li class="resp-tab-item " aria-controls="tab_item-0" role="tab"><span>Mô Tả Sản Phẩm</span></li>
                                <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span><i class="glyphicon glyphicon-info-sign" ></i> Thông Tin Chi Tiết</span></li>
                                <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span><i class="glyphicon glyphicon-edit" ></i> Đánh Giá</span></li>
                                <div class="clearfix"></div>
                            </ul>				  	 
                            <div class="resp-tabs-container">
                                <h2 class="resp-accordion resp-tab-active" role="tab" aria-controls="tab_item-0"><span class="resp-arrow"></span>Mô Tả Sản Phẩm</h2><div class="tab-1 resp-tab-content resp-tab-content-active" aria-labelledby="tab_item-0" style="display:block">
                                    <div class="facts">
                                        <p><%=product.getProductDescription()%></p>
                                    </div>

                                </div>
                                <h2 class="resp-accordion" role="tab" aria-controls="tab_item-1"><span class="resp-arrow"></span>Additional Information</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
                                    <div class="facts1">

                                        <div class="color"><p>Màu sắc</p>
                                            <span >Blue, Black, Red</span>
                                            <div class="clearfix"></div>
                                        </div>


                                    </div>

                                </div>									
                                <h2 class="resp-accordion" role="tab" aria-controls="tab_item-2"><span class="resp-arrow"></span>Reviews</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
                                    <div class="comments-top-top">
                                        <%
                                            for (Review r : reviewGet.getListReviewByProduct(Long.parseLong(productID))) {
                                        %>
                                        <div class="top-comment-left">
                                            <img class="img-responsive" src="images/co.png" alt="">
                                        </div>
                                        <div class="top-comment-right">
                                            <h6><a href="#"><%=r.getReviewName()%></a> - Đánh giá sản phẩm : <%=r.getReviewStar()%>/5</h6>
                                            <p><%=r.getReviewMessage()%></p>
                                        </div>
                                        <div class="clearfix"> </div>
                                        <% }%>

                                        <a class="add-re" href="Sorry.jsp"><i class="glyphicon glyphicon-comment" ></i> Viết Đánh Giá</a>
                                    </div>


                                </div>
                            </div>
                        </div>
                        <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
                        <script type="text/javascript">
                            $(document).ready(function () {
                                $('#horizontalTab').easyResponsiveTabs({
                                    type: 'default', //Types: default, vertical, accordion           
                                    width: 'auto', //auto or any width like 600px
                                    fit: true   // 100% fit in a container
                                });
                            });
                        </script>	
                        <!---->
                    </div>


                </div>
                <!----->
                <div class="clearfix"> </div>
                <div class="page-header">
                    <h3 >SẢN PHẨM LIÊN QUAN</h3>
                </div>
                <div class=" col-md-si">
                    <%
                        for (Product p : productGet.getListProductRelated(category_id, Long.parseLong(productID))) {
                    %>
                    <div class="col-sm-4 item-grid item-gr  simpleCart_shelfItem">

                        <div class="grid-pro" style="
                             background-color: #fff;">
                            <div  class=" grid-product " >
                                <div class="product-image">

                                    <a href="single.jsp?productID=<%=p.getProductID()%>"><img src="<%=p.getProductImage()%>" alt=""></a> 

                                    <!--                                        <div class="image">
                                                                                <img  src="<%=p.getProductImageBack()%>" class="img-responsive" alt="">
                                                                            </div>
                                                                            <div class="image">
                                                                                <img  src="<%=p.getProductImageForward()%>" class="img-responsive"  alt="">
                                                                            </div>			-->
                                    </a>		

                                </div>       
                            </div>
                            <div class="women">
                                <a href="#"><img src="" alt=""></a>
                                <h6><a href="single.jsp?productID=<%=p.getProductID()%>"><%=p.getProductName()%></a></h6>
                                <p ><em class="item_price"><%=formatter.format(p.getProductPrice())%> VNĐ</em></p>

                                <a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" data-text="Chọn mua" class ="btn btn-upper btn-primary      ">Chọn mua</a>

                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>

                    <div class="clearfix"> </div>
                </div>
            </div>	

            <script defer src="js/jquery.flexslider.js"></script>
            <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

            <script>
                            // Can also be used with $(document).ready()
                            $(window).load(function () {
                                $('.flexslider').flexslider({
                                    animation: "slide",
                                    controlNav: "thumbnails"
                                });
                            });
            </script>

        </div>
        <jsp:include page="footer.jsp"></jsp:include>
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
