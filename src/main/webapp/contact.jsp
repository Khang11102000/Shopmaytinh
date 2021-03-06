<%-- 
    Document   : contac
    Created on : Feb 2, 2021, 1:10:06 PM
    Author     : T O A N
--%>

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
        <jsp:include page="header.jsp"></jsp:include>

            <div class="breadcrumb">
                <div class="container">
                    <div class="breadcrumb-inner">
                        <ul class="list-inline list-unstyled">
                            <li><a href="#">Home</a></li>
                            <li class='active'>Th??ng tin li??n h???</li>
                        </ul>
                    </div><!-- /.breadcrumb-inner -->
                </div><!-- /.container -->
            </div><!-- /.breadcrumb -->

            <div class="body-content">
                <div class="container">
                    <div class="contact-page">
                        <div class="row">

                            <div class="col-md-12 contact-map outer-bottom-vs">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.484231881327!2d106.76973361433718!3d10.850726660786023!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752763f23816ab%3A0x282f711441b6916f!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBTxrAgcGjhuqFtIEvhu7kgdGh14bqtdCBUaMOgbmggcGjhu5EgSOG7kyBDaMOtIE1pbmg!5e0!3m2!1svi!2s!4v1612277194815!5m2!1svi!2s" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                                <!--<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3886.0080692193424!2d80.29172299999996!3d13.098675000000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a526f446a1c3187%3A0x298011b0b0d14d47!2sTransvelo!5e0!3m2!1sen!2sin!4v1412844527190" width="600" height="450" style="border:0"></iframe>-->
                            </div>
                            <div class="col-md-9 contact-form">
                                <div class="col-md-12 contact-title">
                                    <h4>Contact Form</h4>
                                </div>
                                <div class="col-md-4 ">
                                    <form class="register-form" role="form">
                                        <div class="form-group">
                                            <label class="info-title" for="exampleInputName">Your Name <span>*</span></label>
                                            <input type="email" class="form-control unicase-form-control text-input" id="exampleInputName" placeholder="">
                                        </div>
                                    </form>
                                </div>
                                <div class="col-md-4">
                                    <form class="register-form" role="form">
                                        <div class="form-group">
                                            <label class="info-title" for="exampleInputEmail1">Email Address <span>*</span></label>
                                            <input type="email" class="form-control unicase-form-control text-input" id="exampleInputEmail1" placeholder="">
                                        </div>
                                    </form>
                                </div>
                                <div class="col-md-4">
                                    <form class="register-form" role="form">
                                        <div class="form-group">
                                            <label class="info-title" for="exampleInputTitle">Title <span>*</span></label>
                                            <input type="email" class="form-control unicase-form-control text-input" id="exampleInputTitle" placeholder="Title">
                                        </div>
                                    </form>
                                </div>
                                <div class="col-md-12">
                                    <form class="register-form" role="form">
                                        <div class="form-group">
                                            <label class="info-title" for="exampleInputComments">Your Comments <span>*</span></label>
                                            <textarea class="form-control unicase-form-control" id="exampleInputComments"></textarea>
                                        </div>
                                    </form>
                                </div>
                                <div class="col-md-12 outer-bottom-small m-t-20">
                                    <a href="Sorry.jsp" class ="btn btn-upper btn-primary pull-right outer-right-xs">Send Message</a>
                                </div>
                            </div>
                            <div class="col-md-3 contact-info">
                                <div class="contact-title">
                                    <h4>Th??ng tin li??n l???c</h4>
                                </div>
                                <div class="clearfix address">
                                    <span class="contact-i"><i class="fa fa-map-marker"></i></span>
                                    <span class="contact-span">1 V?? V??n Ng??n, Linh Chi???u, Th??? ?????c, Th??nh ph??? H??? Ch?? Minh</span>
                                </div>
                                <div class="clearfix phone-no">
                                    <span class="contact-i"><i class="fa fa-mobile"></i></span>
                                    <span class="contact-span">+(888) 123-4567<br>+(888) 456-7890</span>
                                </div>
                                <div class="clearfix email">
                                    <span class="contact-i"><i class="fa fa-envelope"></i></span>
                                    <span class="contact-span"><a href="#">group07@jsp2020.com</a></span>
                                </div>
                            </div>			</div><!-- /.contact-page -->
                    </div><!-- /.row -->
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


                <!-- For demo purposes ??? can be removed on production -->


                <!-- For demo purposes ??? can be removed on production : End -->

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

                <!-- For demo purposes ??? can be removed on production -->

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
                <!-- For demo purposes ??? can be removed on production : End -->



            </div>
        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>
