<%@ page import="utils.UtilsPath" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="utils.UtilsPath" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Coffee - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">


    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/signin_signup.css">
    <link rel="stylesheet" href="css/userStyle.css">
    <link rel="stylesheet" href="css/search.css">

</head>
<body>
<%
    String name_error = "";
    String email_error = "";
    String password_error = "";
    String repass_error = "";
    String phone_error ="";
    String address_error= "";
    if (request.getAttribute("name_error") != null) {
        name_error = (String) request.getAttribute("name_error");
    }
    if (request.getAttribute("email_error") != null) {
        email_error = (String) request.getAttribute("email_error");
    }
    if(request.getAttribute("phone_error")!=null){
        phone_error =(String)request.getAttribute("phone_error");
    }

    if (request.getAttribute("password_error") != null) {
        password_error = (String) request.getAttribute("password_error");
    }
    if (request.getAttribute("repass_error") != null) {
        repass_error = (String) request.getAttribute("repass_error");
    }
    String name = "";
    String email = "";
    String phone ="";
    String address ="";
    String password = "";
    String re_password = "";
    if (request.getAttribute("name") != null) {
        name = (String) request.getAttribute("name");
    }
    if (request.getAttribute("email") != null) {
        email = (String) request.getAttribute("email");
    }
    if (request.getAttribute("phone") != null) {
        phone = (String) request.getAttribute("phone");
    }
    if (request.getAttribute("address") != null) {
        address = (String) request.getAttribute("address");
    }
    if (request.getAttribute("password") != null) {
        password = (String) request.getAttribute("password");
    }
    if (request.getAttribute("repass") != null) {
        re_password = (String) request.getAttribute("repass");
    }

%>
<body>
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">Coffee<small>Blend</small></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>
        <div class="collapse navbar-collapse" id="ftco-nav" class="menu">
            <ul class="navbar-nav ml-auto">
                <li class="search_and_icon">
                    <input type="text" class="form-control search align-left-search" placeholder="Tìm kiếm......">
                    <a class="icon-search align-left-search"></a>
                </li>
                <li class="nav-item"><a href="index.jsp" class="nav-link">Trang chủ</a></li>
                <li class="nav-item"><a href="menu.html" class="nav-link">Thực đơn</a></li>
                <!--                <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>-->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">Cửa hàng</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown04">
                        <a class="dropdown-item" href="about.html">Về chúng tôi</a>
                        <a class="dropdown-item" href="shop.html">Cửa hàng</a>
                        <!--                        <a class="dropdown-item" href="services.html">Dịch vụ</a>-->
                        <a class="dropdown-item" href="product-details.html">Chi tiết sản phẩm</a>
                        <a class="dropdown-item" href="cart.html">Giỏ hàng</a>
                        <a class="dropdown-item" href="checkout.html">Thanh toán</a>
                    </div>
                </li>
                <li class="nav-item"><a href="contact.html" class="nav-link">Liên hệ</a></li>
                <li class="nav-item active dropdown">
                    <a class="nav-link dropdown-toggle" href="shop.html" id="dropdown05" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false"><i class="icon-user"></i> Tài khoản</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown05">
                        <a class="dropdown-item" href="<%=UtilsPath.getPath("LoginController")%>">Đăng nhập</a>
<%--                        1: Chọn "Đăng ký"--%>
<%--                        2: Gọi đến DoRegister--%>
                        <a class="dropdown-item" href="<%=UtilsPath.getPath("DoRegister")%>">Đăng kí</a>
                        <a class="dropdown-item" href="IfoUser.html">Thông tin cá nhân</a>
                    </div>
                </li>

                <li class="nav-item cart"><a href="cart.html" class="nav-link"><span
                        class="icon icon-shopping_cart"></span><span
                        class="bag d-flex justify-content-center align-items-center"><small>1</small></span></a></li>
            </ul>
        </div>
    </div>
</nav>



<!-- The Modal Sign up-->
<div  id="myModal-signUp" style="margin-top: 120px" >
    <div class="modal-dialog">
        <div class="modal-content" style="height: 920px">

            <!-- Sign up Header -->
            <div class="modal-header">
                <h3 class="modal-title">ĐĂNG KÝ</h3>
                <button type="button" class="close text-danger" data-dismiss="modal"><i class="icon-close"></i>
                </button>
            </div>

            <!-- Sign up body -->
            <div class="modal-body">
                <!--form-->
<%--                3.1 Hiển thị form Đăng ký--%>
<%--                Xử lí những trường thông tin đăng kí nhập vào theo điều kiện ở doRegister--%>
                <form action="<%=UtilsPath.getPath("DoRegister")%>" method="POST">
                    <!--container-->
<%--                    4. Nhập vào những trường thông tin cần Đăng ký--%>
                    <div class="container">
                        <div class="form-group">
                            <label for="yourName">Họ tên:

                            </label>
                            <p style="color: red"><%=name_error%></p>
                            <input type="text" class="form-control" id="yourName" value="<%=name%>" name="ten"
                                   required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email:

                            </label>
                            <p style="color: red"><%=email_error%>
                            </p>
                            <input type="email" class="form-control" id="email" placeholder="Email" value="<%=email%>"
                                   name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="phone">Số điện thoại:
                                <p style="color: red"><%=phone_error%></p>
                            </label>
                            <input type="tel" name="phone" class="form-control" id="phone" maxlength="11" >
                        </div>
                        <div class="form-group">
                            <label for="address">Địa chỉ:
                                <p style="color: red"><%=address_error%></p>
                            </label>
                            <input type="text" class="form-control" id="address" name="address">
                        </div>
                        <div class="form-group">
                            <label >Mật khẩu:
                                <p style="color: red"><%=password_error%>
                                </p>

                            </label>
                                <input type="password" class="form-control" id="password"
                                       placeholder="Nhập mậu khẩu" name="password" required>

                        </div>
                        <div class="form-group">
                            <label >Nhập lại mật khẩu:
                                <p style="color: red"><%=repass_error%>
                                </p>
                            </label>
                                <input type="password" class="form-control" id="password_confirm"
                                       placeholder="Nhập lại mật khẩu" name="pwd1" required>

                        </div>
                        <button type="submit" class="btn btn-success w-100"><i class="icon-user-plus"></i> Đăng ký
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- END nav -->


<footer class="ftco-footer ftco-section img">
    <div class="overlay"></div>
    <div class="container">
        <div class="row mb-5">
            <div class="col-lg-4 col-md-6 mb-5 mb-md-5">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2">Giới thiệu</h2>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there
                        live the blind texts.</p>
                    <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                        <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                        <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                        <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-5 mb-md-5">
                <div class="ftco-footer-widget mb-4 ml-md-4">
                    <h2 class="ftco-heading-2">Thành viên</h2>
                    <ul class="list-unstyled">
                        <li><a href="https://www.facebook.com/jenny.vu.9803" class="py-2 d-block"><i class="icon-user"></i>&nbsp;&nbsp;Vũ Huỳnh Như Anh</a>
                        </li>
                        <li><a href="https://www.facebook.com/nguyenhuuhai1999" class="py-2 d-block"><i class="icon-user"></i>&nbsp;&nbsp;Nguyễn Hữu Hải</a>
                        <li><a href="https://www.facebook.com/vqhuy.8799" class="py-2 d-block"><i class="icon-user"></i>&nbsp;&nbsp;Vũ Quốc Huy</a></li>
                        </li>
                        <!--                        <li><a href="#" class="py-2 d-block">Mixed</a></li>-->
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-5 mb-md-5">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2">Thông tin cửa hàng</h2>
                    <div class="block-23 mb-3">
                        <ul>
                            <li><span class="icon icon-map-marker"></span><span class="text">Trường Đại học Nông Lâm Thành phố Hồ Chí Minh, Quận Thủ Đức, Phường Linh Trung.</span>
                            </li>
                            <li><a href="#"><span class="icon icon-phone"></span><span
                                    class="text">+ 1234 5678 90</span></a></li>
                            <li><a href="#"><span class="icon icon-envelope"></span><span class="text">coffeeBlendNlu@gmail.com</span></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 text-center">

                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                    Coffee Blend. All rights reserved.
                    <!--                    This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a-->
                    <!--                            href="https://colorlib.com" target="_blank">Colorlib</a>-->
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
            </div>
        </div>
    </div>
</footer>


<!-- loader -->
<div id="ftco-loader" class="show fullscreen">
    <svg class="circular" width="48px" height="48px">
        <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
        <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                stroke="#F96D00"/>
    </svg>
</div>

<script src="js/jquery.min.js"></script>
<script src="js/jquery-migrate-3.0.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/jquery.stellar.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/aos.js"></script>
<script src="js/jquery.animateNumber.min.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script src="js/jquery.timepicker.min.js"></script>
<script src="js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="js/google-map.js"></script>
<script src="js/main.js"></script>
<script src="js/user.js"></script>


</body>
</html>

