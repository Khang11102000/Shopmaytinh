<%-- 
    Document   : myaccount1
    Created on : Feb 1, 2021, 7:59:00 AM
    Author     : T O A N
--%>

<%@page import="model.BillDetail"%>
<%@page import="get.BillDetailGet"%>
<%@page import="get.ProductGet"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="get.UserGet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="get.BillGet"%>
<%@page import="model.Bill"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
    Document   : login1
    Created on : Jan 31, 2021, 6:18:52 PM
    Author     : T O A N
--%>
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
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
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
        <%
            User users = (User) session.getAttribute("user");
            if (users == null) {
                response.sendRedirect("/login_redirect.jsp");
            }
            DecimalFormat formatter = new DecimalFormat("###,###,###");
            long user_id = users.getUserID();

            BillGet billGet = new BillGet();
            ArrayList<Bill> listBillByUser = billGet.getListBillByUser(user_id);
            UserGet userGet = new UserGet();
            ProductGet productGet = new ProductGet();
            BillDetail billdetail = new BillDetail();

            User user = new UserGet().getUser(user_id);
        %>
        <div class="breadcrumb">
            <div class="container">
                <div class="breadcrumb-inner">
                    <ul class="list-inline list-unstyled">
                        <li><a href="index.jsp">Home</a></li>
                        <li class='active'>Login</li>
                    </ul>
                </div><!-- /.breadcrumb-inner -->
            </div><!-- /.container -->
        </div><!-- /.breadcrumb -->

        <div class="body-content">
            <div class="container">
                <div class="sign-in-page">
                    <div class="row">
                        <!-- create a new account -->
                        <div class="col-md-6 col-sm-6 create-new-account">
                            <h4 class="checkout-subtitle">Thông tin tài khoản</h4>
                            <p class="text title-tag-line">Chỉnh sửa thông tin tài khoản.</p>



                            <form class="register-form outer-top-xs" role="form" action="UserServlet" method="POST">
                                <div class="form-group">
                                    <label class="info-title" for="exampleInputEmail2">Email Address <span>*</span></label>
                                    <input type="hidden" name="role"  value="0">
                                    <input type="text" class="form-control unicase-form-control text-input" id="exampleInputEmail2" name="useremail" id="email" value="<%=user.getUserEmail()%>" >
                                    <span id="user-result"></span>                           
                                </div>
                                <div class="form-group">
                                    <label class="info-title" for="exampleInputEmail1">Name <span>*</span></label>
                                    <input type="hidden" name="user_id" value="<%=user.getUserID()%>">
                                    <input type="text" class="form-control unicase-form-control text-input" id="exampleInputEmail1" name="username" id="name" value="<%=user.getUserName()%>">

                                    <span id="user-result"></span>
                                </div>
                                <div class="form-group">
                                    <label class="info-title" for="exampleInputEmail1">Phone Number <span>*</span></label>
                                    <input type="text" class="form-control unicase-form-control text-input" id="exampleInputEmail1" name="phone" id="phone" value="<%=user.getUserPhone()%>" >
                                    <span id="user-result"></span>
                                </div>
                                <div class="form-group">
                                    <label class="info-title" for="exampleInputEmail1">Password <span>*</span></label>
                                    <input type="password" class="form-control unicase-form-control text-input" id="exampleInputEmail1" name="pass" id="pass" value="<%=user.getUserPass()%>" >
                                    <span></span>
                                </div>
                                <div class="form-group">
                                    <label class="info-title" for="exampleInputEmail1">Confirm Password <span>*</span></label>
                                    <input type="password" class="form-control unicase-form-control text-input" id="exampleInputEmail1" name="confirm_pass" id="confirm_pass" value="<%=user.getUserPass()%>" >
                                    <script>$('#pass, #confirm_pass').on('keyup', function () {
                                            if ($('#pass').val() == $('#confirm_pass').val()) {
                                                $('#message').html('Trùng khớp').css('color', 'green');
                                            } else
                                                $('#message').html('Không trùng khớp').css('color', 'red');
                                        });

                                    </script>
                                </div>
                                <button type="submit" class="btn-upper btn btn-primary checkout-page-button" >
                                    <input type="hidden" value="update" name="command">

                                    Cập nhật thông tin</button>
                            </form>

                        </div>	
                        <!-- create a new account -->		
                    </div><!-- /.row -->
                </div><!-- /.sigin-in-->
            </div><!-- /.body-content -->
            <!-- For demo purposes – can be removed on production -->


            <!-- For demo purposes – can be removed on production : End -->

            <!-- JavaScripts placed at the end of the document so the pages load faster -->

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
            <script src="switchstylesheet/switchstylesheet.js"></script>
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
