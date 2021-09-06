
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            User users = (User) session.getAttribute("user");
            if (users == null) {
                response.sendRedirect("/login.jsp");
            }
        %>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="breadcrumb">
                <div class="container">
                    <div class="breadcrumb-inner">
                        <ul class="list-inline list-unstyled">
                            <li><a href="#">Home</a></li>
                            <li class='active'>Thanh toán & Đặt mua</li>
                        </ul>
                    </div><!-- /.breadcrumb-inner -->
                </div><!-- /.container -->
            </div><!-- /.breadcrumb -->

            <div class="body-content outer-top-xs">
                <div class="container">
                    <div class="row ">
                        <div class="shopping-cart">
                            <form action="CheckOutServlet" method="POST"> 
                                <div class="col-md-6 col-sm-12 estimate-ship-tax">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>
                                                    <span class="estimate-title">Thông tin giao hàng</span>
                                                    <p>Quý khách vui lòng nhập thông tin giao hàng.</p>
                                                </th>
                                            </tr>
                                        </thead><!-- /thead -->
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <div class="form-group">
                                                        <label class="info-title control-label">Địa chỉ <span>*</span></label>
                                                        <input type="text" placeholder="Số nhà, đường, phường, quận..." name="address" required class="form-control unicase-form-control text-input">
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="info-title control-label">Họ tên người nhận <span>*</span></label>
                                                        <input type="text" placeholder="Họ và tên của người nhận hàng" name="name" required class="form-control unicase-form-control text-input">
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="info-title control-label">Điện thoại người nhận <span>*</span></label>
                                                        <input type="text" placeholder="Điện thoại di động của người nhận hàng" name="phone" required class="form-control unicase-form-control text-input">
                                                    </div>

                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div><!-- /.estimate-ship-tax -->

                                <div class="col-md-6 col-sm-12 estimate-ship-tax">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>
                                                    <span class="estimate-title">Phương thức thanh toán</span>
                                                    <p>Quý khách vui lòng chọn phương thức thanh toán</p>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <div class="form-group">
                                                        <label class="info-title control-label" >Phương thức thanh toán <span>*</span></label>
                                                        <select class="form-control unicase-form-control " name="payment">
                                                            <option>--Select options--</option>
                                                            <option value="Live">COD</option>
                                                            <option value="Bank transfer">Chuyển khoản</option>
                                                        </select>
                                                    </div>

                                                </td>
                                            </tr>
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>

                                                        <div class="cart-grand-total">
                                                            Xin vui lòng kiểm tra lại đơn hàng trước khi Đặt Mua<span class="inner-left-md"></span>
                                                        </div>
                                                    </th>
                                                </tr>
                                            </thead><!-- /thead -->
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <div class="cart-checkout-btn pull-right">
                                                            <button type="submit" class="btn btn-primary checkout-btn" value="Đặt hàng">ĐẶT MUA</button>

                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody><!-- /tbody -->
                                        </table><!-- /table -->
                                        </tbody><!-- /tbody -->
                                    </table><!-- /table -->
                                </div><!-- /.estimate-ship-tax -->


                            </form>
                        </div><!-- /.shopping-cart -->

                    </div> <!-- /.row -->
                    <!-- ============================================== BRANDS CAROUSEL ============================================== -->
                    <div id="brands-carousel" class="logo-slider wow fadeInUp">

                        <div class="logo-slider-inner">	
                            <div id="brand-slider" class="owl-carousel brand-slider custom-carousel owl-theme">
                                <div class="item m-t-15">
                                    <a href="#" class="image">
                                        <img data-echo="assets/images/brands/brand1.png" src="assets\images\blank.gif" alt="">
                                    </a>	
                                </div><!--/.item-->

                                <div class="item m-t-10">
                                    <a href="#" class="image">
                                        <img data-echo="assets/images/brands/brand2.png" src="assets\images\blank.gif" alt="">
                                    </a>	
                                </div><!--/.item-->

                                <div class="item">
                                    <a href="#" class="image">
                                        <img data-echo="assets/images/brands/brand3.png" src="assets\images\blank.gif" alt="">
                                    </a>	
                                </div><!--/.item-->

                                <div class="item">
                                    <a href="#" class="image">
                                        <img data-echo="assets/images/brands/brand4.png" src="assets\images\blank.gif" alt="">
                                    </a>	
                                </div><!--/.item-->

                                <div class="item">
                                    <a href="#" class="image">
                                        <img data-echo="assets/images/brands/brand5.png" src="assets\images\blank.gif" alt="">
                                    </a>	
                                </div><!--/.item-->

                                <div class="item">
                                    <a href="#" class="image">
                                        <img data-echo="assets/images/brands/brand6.png" src="assets\images\blank.gif" alt="">
                                    </a>	
                                </div><!--/.item-->

                                <div class="item">
                                    <a href="#" class="image">
                                        <img data-echo="assets/images/brands/brand2.png" src="assets\images\blank.gif" alt="">
                                    </a>	
                                </div><!--/.item-->

                                <div class="item">
                                    <a href="#" class="image">
                                        <img data-echo="assets/images/brands/brand4.png" src="assets\images\blank.gif" alt="">
                                    </a>	
                                </div><!--/.item-->

                                <div class="item">
                                    <a href="#" class="image">
                                        <img data-echo="assets/images/brands/brand1.png" src="assets\images\blank.gif" alt="">
                                    </a>	
                                </div><!--/.item-->

                                <div class="item">
                                    <a href="#" class="image">
                                        <img data-echo="assets/images/brands/brand5.png" src="assets\images\blank.gif" alt="">
                                    </a>	
                                </div><!--/.item-->
                            </div><!-- /.owl-carousel #logo-slider -->
                        </div><!-- /.logo-slider-inner -->

                    </div><!-- /.logo-slider -->
                    <!-- ============================================== BRANDS CAROUSEL : END ============================================== -->	</div><!-- /.container -->
            </div><!-- /.body-content -->
            <script>
                $('.value-plus').on('click', function () {
                    var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) + 1;
                    divUpd.text(newVal);
                });

                $('.value-minus').on('click', function () {
                    var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) - 1;
                    if (newVal >= 1)
                        divUpd.text(newVal);
                });
            </script>
        <jsp:include page="footer.jsp"></jsp:include>

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



        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>
