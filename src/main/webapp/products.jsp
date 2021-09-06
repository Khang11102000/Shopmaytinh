<%@page import="java.text.DecimalFormat"%>
<%@page import="get.BrandGet"%>
<%@page import="model.Brand"%>
<%@page import="get.CategoryGet"%>
<%@page import="model.Category"%>
<%@page import="model.Product"%>
<%@page import="get.ProductGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SẢN PHẨM</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <script src="js/jquery.min.js"></script>
        <script src="js/simpleCart.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
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
    <body>
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
            String category_id_1 = "1";

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

                                        <%                                            for (Category c : categoryget.getListCategory()) {
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
                                                <% } %>                                           
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
                <!-- /.sidebar -->


                <div class="col-md-9 " style="background-color: #fff">  
                    <div class="clearfix filters-container m-t-10" style="border: none; box-shadow: none">
                        <div class="row">
                            <div class="col col-sm-6 col-md-2">
                                <div class="filter-tabs">
                                    <ul id="filter-tabs" class="nav nav-tabs nav-tab-box nav-tab-fa-icon">
                                        <li class="active"> <a data-toggle="tab" href="#grid-container"><i class="icon fa fa-th-large"></i>Grid</a> </li>
                                        <li><a data-toggle="tab" href="#list-container"><i class="icon fa fa-th-list"></i>List</a></li>
                                    </ul>
                                </div>
                                <!-- /.filter-tabs --> 
                            </div>
                            <!-- /.col -->
                            <div class="col col-sm-12 col-md-6">
                                <div class="col col-sm-3 col-md-6 no-padding">
                                    <div class="lbl-cnt"> <span class="lbl">Sort by</span>
                                        <div class="fld inline">
                                            <div class="dropdown dropdown-small dropdown-med dropdown-white inline">
                                                <button data-toggle="dropdown" type="button" class="btn dropdown-toggle"> Position <span class="caret"></span> </button>
                                                <ul role="menu" class="dropdown-menu">
                                                    <li role="presentation"><a href="#">position</a></li>
                                                    <li role="presentation"><a href="#">Price:Lowest first</a></li>
                                                    <li role="presentation"><a href="#">Price:HIghest first</a></li>
                                                    <li role="presentation"><a href="#">Product Name:A to Z</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <!-- /.fld --> 
                                    </div>
                                    <!-- /.lbl-cnt --> 
                                </div>
                                <!-- /.col -->
                                <div class="col col-sm-3 col-md-6 no-padding">
                                    <div class="lbl-cnt"> <span class="lbl">Show</span>
                                        <div class="fld inline">
                                            <div class="dropdown dropdown-small dropdown-med dropdown-white inline">
                                                <button data-toggle="dropdown" type="button" class="btn dropdown-toggle"> 1 <span class="caret"></span> </button>
                                                <ul role="menu" class="dropdown-menu">
                                                    <li role="presentation"><a href="#">1</a></li>
                                                    <li role="presentation"><a href="#">2</a></li>
                                                    <li role="presentation"><a href="#">3</a></li>
                                                    <li role="presentation"><a href="#">4</a></li>
                                                    <li role="presentation"><a href="#">5</a></li>
                                                    <li role="presentation"><a href="#">6</a></li>
                                                    <li role="presentation"><a href="#">7</a></li>
                                                    <li role="presentation"><a href="#">8</a></li>
                                                    <li role="presentation"><a href="#">9</a></li>
                                                    <li role="presentation"><a href="#">10</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <!-- /.fld --> 
                                    </div>
                                    <!-- /.lbl-cnt --> 
                                </div>
                                <!-- /.col --> 
                            </div>
                            <!-- /.col -->
                            <div class="col col-sm-6 col-md-4 text-right">
                                <div class="pagination-container">
                                    <ul class="list-inline list-unstyled">
                                        <li class="prev"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                                        <li><a href="#">1</a></li>
                                        <li class="active"><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li class="next"><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                    </ul>
                                    <!-- /.list-inline --> 
                                </div>
                                <!-- /.pagination-container --> </div>
                            <!-- /.col --> 
                        </div>
                        <!-- /.row --> 
                    </div>

                    <div class="mid-popular">

                        <%
                            for (Product p : productGet.getListProductByCategory(Long.parseLong(category_id))) {
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
                                    <!--<a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" data-text="Chọn mua" class="but-hover1 item_add" style="padding-top: 0.25em;">Chọn mua</a>-->
                                </div>
                            </div>
                        </div>
                        <%
                            }
                        %>


                    </div>

                </div>

            </div>
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
        <script src="assets\js\bootstrap-select.min.js"></script> 
        <script src="assets\js\wow.min.js"></script> 
        <script src="assets\js\scripts.js"></script>s
    </body>
</html>
