
<%@page import="java.text.DecimalFormat"%>
<%@page import="get.ProductGet"%>
<%@page import="model.Product"%>
<%@page import="java.util.Map"%>
<%@page import="model.Item"%>
<%@page import="model.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP COMPUTER - CART</title>
        <!-- //for-mobile-apps -->
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
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="keywords" content="MediaCenter, Template, eCommerce">
        <meta name="robots" content="all">


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

            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
            DecimalFormat formatter = new DecimalFormat("###,###,###");
        %>
        <jsp:include page="header.jsp"></jsp:include>


        </div>
        <div class="check-out">	 
            <div class="container shopping-cart">	 



                <table class="table animated " >
                    <tr>


                        <th class="t-head" style="
                            width: 25%;
                            border-top-left-radius: 8px;
                            border-bottom-left-radius: 5px;">Sản phẩm</th>
                        <th class="t-head ">Tên sản phẩm</th>
                        <th class="t-head">Đơn giá</th>
                        <th class="t-head">Số Lượng</th>
                        <th class="t-head" style="
                            width: 25;
                            border-top-right-radius: 8px;
                            border-bottom-right-radius: 5px;"></th>

                    </tr>

                <%for (Map.Entry<Long, Item> list : cart.getCartItems().entrySet()) {%>
                <tr class="cross1">
                    <td class="t-data">
                        <a href="single.jsp?productID=<%=list.getValue().getProduct().getProductID()%>" class="at-in">
                            <img src="<%=list.getValue().getProduct().getProductImage()%>" class="fashion-grid" alt=""> 

                        </a>
                    </td>
                    <td class="t-data">

                        <h4><%=list.getValue().getProduct().getProductName()%></h4>
                    </td>
                    <td class="t-data"><h4><%=formatter.format(list.getValue().getProduct().getProductPrice())%> VNĐ</h4></td>
                    <td class="t-data"><div class="quantity"> 
                            <div class="quantity-select">            
                                <div class="entry value-minus">&nbsp;</div>
                                <div class="entry value"><span class="span-1"><%=list.getValue().getQuantity()%></span></div>									

                                <div class="entry value-plus active">&nbsp;</div>
                            </div>

                        </div>


                    </td>

                    <td class="t-data"><a href="CartServlet?command=remove&productID=<%=list.getValue().getProduct().getProductID()%>"><img src="images/minus.png" class="img-responsive " alt=""></a></td>

                </tr>
                <% }%>

            </table>

            <div class=" cart-shopping-total" style="
                 width: 40%; padding: 40px; float: right">

                <h5 class="continue"> Tổng tiền hàng</h5>
                <div class="price-details">
                    <h5>Chi Tiết:</h5>
                    <h5>Giảm giá:</h5>
                    <h5>Phí vận chuyển:</h5>
                    <span class="total1"></span>
                    <div class="clearfix"></div>				 
                </div>	
                <ul class="total_price">
                    <li class="last_price"> <h4>Thành tiền:</h4></li>	
                    <li class="last_price"><h4><%=formatter.format(cart.totalCart())%> VNĐ</h4></li>
                    <div class="clearfix"> </div>
                </ul>

                <a href="deal.jsp" class ="btn btn-upper btn-primary pull-right outer-right-xs">Tiến hành đặt hàng</a>

            </div>


        </div>
    </div>
    <!--quantity-->
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
    <!--quantity-->

    <div class="social animated wow fadeInUp" data-wow-delay=".1s">

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
