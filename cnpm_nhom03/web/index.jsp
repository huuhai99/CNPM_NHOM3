<%@ page import="util.UtilsPath" %>
<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <title>Trang chủ - Coffee Blend</title>
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

    <style>
        .product-description-1 {
            min-height: 130px !important;
        }

        .product-description-2 {
            min-height: 190px !important;
        }

        .product-description-3 {
            min-height: 290px !important;
        }
    </style>

</head>
<body>
<!--Header-->
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">Coffee<small>Blend</small></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>
        <div class="collapse navbar-collapse" id="ftco-nav" class="menu">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a href="index.jsp" class="nav-link">Trang chủ</a></li>
                <li class="nav-item"><a href="menu.html" class="nav-link">Thực đơn</a></li>
                <!--                <li class="nav-item"><a href="services.html" class="nav-link">Dịch vụ</a></li>-->
                <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
                <!--                <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>-->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">Cửa hàng</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown04">
                        <a class="dropdown-item" href="about.html">Về chúng tôi</a>
                        <a class="dropdown-item" href="shop.html">Cửa hàng</a>
                        <a class="dropdown-item" href="services.html">Dịch vụ</a>
                        <a class="dropdown-item" href="product-details.html">Chi tiết sản phẩm</a>
                        <a class="dropdown-item" href="cart.html">Giỏ hàng</a>
                        <a class="dropdown-item" href="checkout.html">Thanh toán</a>
                    </div>
                </li>
                <li class="nav-item"><a href="contact.html" class="nav-link">Liên hệ</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="shop.html" id="dropdown05" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false"><i class="icon-user"></i> Tài khoản</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown05">
                        <%
                            if (session.getAttribute("account") == null && session.getAttribute("userFB") == null && session.getAttribute("userGG")==null) {

                        %>
                        <a class="dropdown-item" href="login.jsp" >Đăng nhập</a>
                        <a class="dropdown-item" href="<%=UtilsPath.fullPath("DoRegister")%>">Đăng ký</a>
                        <%
                            }else {

                        %>
                        <a class="dropdown-item" href="<%=UtilsPath.fullPath("LoginController")%>" class="dropdown-item">Đăng
                            xuất</a>
                       <%
                           }
                       %>

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

<!--Content-->
<section class="home-slider owl-carousel">
    <div class="slider-item" style="background-image: url(images/bg_1.jpg);">
        <div class="overlay"></div>
        <div class="container">
            <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

                <div class="col-md-8 col-sm-12 text-center ftco-animate">
                    <span class="subheading">Welcome</span>
                    <h1 class="mb-4">The Best Coffee Testing Experience</h1>
                    <p class="mb-4 mb-md-5">A small river named Duden flows by their place and supplies it with the
                        necessary regelialia.</p>
                    <p><a href="shop.html" class="btn btn-primary p-3 px-xl-4 py-xl-3">Đặt mua</a> <a href="menu.html"
                                                                                                      class="btn btn-white btn-outline-white p-3 px-xl-4 py-xl-3">
                        Thực đơn</a></p>
                </div>

            </div>
        </div>
    </div>

    <div class="slider-item" style="background-image: url(images/bg_2.jpg);">
        <div class="overlay"></div>
        <div class="container">
            <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

                <div class="col-md-8 col-sm-12 text-center ftco-animate">
                    <span class="subheading">Welcome</span>
                    <h1 class="mb-4">Amazing Taste &amp; Beautiful Place</h1>
                    <p class="mb-4 mb-md-5">A small river named Duden flows by their place and supplies it with the
                        necessary regelialia.</p>
                    <p><a href="#" class="btn btn-primary p-3 px-xl-4 py-xl-3">Đặt mua</a> <a href="#"
                                                                                              class="btn btn-white btn-outline-white p-3 px-xl-4 py-xl-3">
                        Thực đơn</a></p>
                </div>

            </div>
        </div>
    </div>

    <div class="slider-item" style="background-image: url(images/bg_3.jpg);">
        <div class="overlay"></div>
        <div class="container">
            <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

                <div class="col-md-8 col-sm-12 text-center ftco-animate">
                    <span class="subheading">Welcome</span>
                    <h1 class="mb-4">Creamy Hot and Ready to Serve</h1>
                    <p class="mb-4 mb-md-5">A small river named Duden flows by their place and supplies it with the
                        necessary regelialia.</p>
                    <p><a href="#" class="btn btn-primary p-3 px-xl-4 py-xl-3">Đặt mua</a> <a href="#"
                                                                                              class="btn btn-white btn-outline-white p-3 px-xl-4 py-xl-3">
                        Thực đơn</a></p>
                </div>

            </div>
        </div>
    </div>
</section>

<section class="ftco-about d-md-flex">
    <div class="one-half img" style="background-image: url(images/about.jpg);"></div>
    <div class="one-half ftco-animate">
        <div class="overlap">
            <div class="heading-section ftco-animate ">
                <span class="subheading">Khám phá</span><br>
                <h2 class="mb-4">Câu chuyện<br>thương hiệu</h2>
            </div>
            <div>
                <p>On her way she met a copy. The copy warned the Little Blind Text, that where it came from it would
                    have been rewritten a thousand times and everything that was left from its origin would be the word
                    "and" and the Little Blind Text should turn around and return to its own, safe country. But nothing
                    the copy said could convince her and so it didn’t take long until a few insidious Copy Writers
                    ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they
                    abused her for their.</p>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section ftco-services">
    <div class="container">
        <div class="row">
            <div class="col-md-4 ftco-animate">
                <div class="media d-block text-center block-6 services">
                    <div class="icon d-flex justify-content-center align-items-center mb-5">
                        <span class="flaticon-choices"></span>
                    </div>
                    <div class="media-body">
                        <h3 class="heading">Đặt mua dễ dàng</h3>
                        <p>Even the all-powerful Pointing has no control about the blind texts it is an almost
                            unorthographic.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 ftco-animate">
                <div class="media d-block text-center block-6 services">
                    <div class="icon d-flex justify-content-center align-items-center mb-5">
                        <span class="flaticon-delivery-truck"></span>
                    </div>
                    <div class="media-body">
                        <h3 class="heading">Giao hàng nhanh</h3>
                        <p>Even the all-powerful Pointing has no control about the blind texts it is an almost
                            unorthographic.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 ftco-animate">
                <div class="media d-block text-center block-6 services">
                    <div class="icon d-flex justify-content-center align-items-center mb-5">
                        <span class="flaticon-coffee-bean"></span></div>
                    <div class="media-body">
                        <h3 class="heading">Chất lượng cà phê</h3>
                        <p>Even the all-powerful Pointing has no control about the blind texts it is an almost
                            unorthographic.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-6 pr-md-5">
                <div class="heading-section text-md-right ftco-animate">
                    <span class="subheading">Khám phá</span><br>
                    <h2 class="mb-4">Thực đơn<br>của chúng tôi</h2>
                    <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and
                        Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the
                        coast of the Semantics, a large language ocean.</p>
                    <p><a href="menu.html" class="btn btn-primary btn-outline-primary px-4 py-3">Xem toàn bộ thực
                        đơn</a></p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-6">
                        <div class="menu-entry">
                            <a href="#" class="img" style="background-image: url(images/ca_phe_may/americano.jpg);"></a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="menu-entry mt-lg-4">
                            <a href="#" class="img"
                               style="background-image: url(images/ca_phe_may/cappuccino.jpg);"></a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="menu-entry">
                            <a href="#" class="img"
                               style="background-image: url(images/ca_phe_may/espressonong.jpg);"></a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="menu-entry mt-lg-4">
                            <a href="#" class="img" style="background-image: url(images/ca_phe_may/latte.jpg);"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-counter ftco-bg-dark img" id="section-counter" style="background-image: url(images/bg_2.jpg);"
         data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10">
                <div class="row">
                    <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                        <div class="block-18 text-center">
                            <div class="text">
                                <div class="icon"><span class="flaticon-coffee-cup"></span></div>
                                <strong class="number" data-number="3">0</strong>
                                <span>Chi nhánh</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                        <div class="block-18 text-center">
                            <div class="text">
                                <div class="icon"><span class="flaticon-coffee-cup"></span></div>
                                <strong class="number" data-number="5">0</strong>
                                <span>Giải thưởng</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                        <div class="block-18 text-center">
                            <div class="text">
                                <div class="icon"><span class="flaticon-coffee-cup"></span></div>
                                <strong class="number" data-number="999">0</strong>
                                <span>Khách hàng hài lòng</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                        <div class="block-18 text-center">
                            <div class="text">
                                <div class="icon"><span class="flaticon-coffee-cup"></span></div>
                                <strong class="number" data-number="3">0</strong>
                                <span>Nhân viên</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
            <div class="col-md-7 heading-section ftco-animate text-center">
                <span class="subheading">Khám phá</span><br>
                <h2 class="mb-4">Sản phẩm bán chạy nhất</h2>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live
                    the blind texts.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <div class="menu-entry">
                    <a href="#" class="img" style="background-image: url(images/ca_phe_may/latte.jpg);"></a>
                    <div class="text text-center pt-4">
                        <h3><a href="#">Latte</a></h3>
                        <p>A small river named Duden flows by their place and supplies</p>
                        <p class="price"><span>$5.90</span></p>
                        <p><a href="#" class="btn btn-primary btn-outline-primary">Thêm vào giỏ hàng</a></p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="menu-entry">
                    <a href="#" class="img" style="background-image: url(images/ca_phe_may/cappuccino.jpg);"></a>
                    <div class="text text-center pt-4">
                        <h3><a href="#">Cappuccino</a></h3>
                        <p>A small river named Duden flows by their place and supplies</p>
                        <p class="price"><span>$5.90</span></p>
                        <p><a href="#" class="btn btn-primary btn-outline-primary">Thêm vào giỏ hàng</a></p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="menu-entry">
                    <a href="#" class="img" style="background-image: url(images/ca_phe_may/mocha.jpg);"></a>
                    <div class="text text-center pt-4">
                        <h3><a href="#">Mocha</a></h3>
                        <p>A small river named Duden flows by their place and supplies</p>
                        <p class="price"><span>$5.90</span></p>
                        <p><a href="#" class="btn btn-primary btn-outline-primary">Thêm vào giỏ hàng</a></p>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="menu-entry">
                    <a href="#" class="img" style="background-image: url(images/tra_sua_macchiato/tra_den_macchiato.jpg);"></a>
                    <div class="text text-center pt-4">
                        <h3><a href="#">Trà Đen Macchiato</a></h3>
                        <p>A small river named Duden flows by their place and supplies</p>
                        <p class="price"><span>$5.90</span></p>
                        <p><a href="#" class="btn btn-primary btn-outline-primary">Thêm vào giỏ hàng</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-menu">
    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-7 heading-section text-center ftco-animate">
                <span class="subheading">Khám phá</span><br>
                <h2 class="mb-4">Sản phẩm của chúng tôi</h2>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live
                    the blind texts.</p>
            </div>
        </div>
        <div class="row d-md-flex">
            <div class="col-lg-12 ftco-animate p-md-5">
                <div class="row">
                    <div class="col-md-12 nav-link-wrap mb-5">
                        <div class="nav ftco-animate nav-pills justify-content-center" id="v-pills-tab" role="tablist"
                             aria-orientation="vertical">
                            <a class="nav-link active" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1"
                               role="tab" aria-controls="v-pills-1" aria-selected="true">CÀ PHÊ MÁY</a>

                            <a class="nav-link" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab"
                               aria-controls="v-pills-2" aria-selected="false">COLD BREW</a>

                            <a class="nav-link" id="v-pills-3-tab" data-toggle="pill" href="#v-pills-3" role="tab"
                               aria-controls="v-pills-3" aria-selected="false">MATCHA - SOCOLA</a>

                            <a class="nav-link" id="v-pills-4-tab" data-toggle="pill" href="#v-pills-4" role="tab"
                               aria-controls="v-pills-4" aria-selected="false">THỨC UỐNG TRÁI CÂY</a>

                            <a class="nav-link" id="v-pills-5-tab" data-toggle="pill" href="#v-pills-5" role="tab"
                               aria-controls="v-pills-5" aria-selected="false">TRÀ SỮA MACCHIATO</a>
                        </div>
                    </div>
                    <div class="col-md-12 d-flex align-items-center">

                        <div class="tab-content ftco-animate" id="v-pills-tabContent">

                            <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel"
                                 aria-labelledby="v-pills-1-tab">
                                <div class="row">
                                    <div class="col-md-4 text-center">
                                        <div class="menu-wrap">
                                            <a href="#" class="menu-img img mb-4"
                                               style="background-image: url(images/ca_phe_may/cappuccino.jpg);"></a>
                                            <div class="text">
                                                <h3><a href="#">Cappuccino</a></h3>
                                                <p class="product-description-1">Cappuccino được gọi vui là thức uống
                                                    "một-phần-ba" - 1/3 Espresso,
                                                    1/3 Sữa nóng, 1/3 Foam.
                                                </p>
                                                <div class="custom-1">
                                                    <p class="price"><span>$2.90</span></p>
                                                    <p><a href="#" class="btn btn-primary btn-outline-primary">Thêm vào
                                                        giỏ hàng</a></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 text-center">
                                        <div class="menu-wrap">
                                            <a href="#" class="menu-img img mb-4"
                                               style="background-image: url(images/ca_phe_may/latte.jpg);"></a>
                                            <div class="text">
                                                <h3><a href="#">Latte</a></h3>
                                                <p class="product-description-1">Khi chuẩn bị Latte, cà phê Espresso và
                                                    sữa nóng được trộn lẫn vào
                                                    nhau, bên trên vẫn là lớp foam nhưng mỏng và nhẹ hơn Cappucinno.
                                                </p>
                                                <p class="price"><span>$2.90</span></p>
                                                <p><a href="#" class="btn btn-primary btn-outline-primary">Thêm vào giỏ
                                                    hàng</a></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 text-center">
                                        <div class="menu-wrap">
                                            <a href="#" class="menu-img img mb-4"
                                               style="background-image: url(images/ca_phe_may/mocha.jpg);"></a>
                                            <div class="text">
                                                <h3><a href="#">Mocha</a></h3>
                                                <p class="product-description-1">Cà phê Mocha được ví von đơn giản là
                                                    Sốt Sô cô la được pha cùng một
                                                    tách Espresso.
                                                </p>
                                                <p class="price"><span>$2.90</span></p>
                                                <p><a href="#" class="btn btn-primary btn-outline-primary">Thêm vào giỏ
                                                    hàng</a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-2-tab">
                                <div class="row">
                                    <div class="col-md-4 text-center">
                                        <div class="menu-wrap">
                                            <a href="#" class="menu-img img mb-4"
                                               style="background-image: url(images/cold_brew/coldbrew_phucbontu.jpg);"></a>
                                            <div class="text">
                                                <h3><a href="#">Cold Brew Phúc bồn tử</a></h3>
                                                <p class="product-description-3">Một sự kết hợp đầy thuyết phục cho
                                                    những người thích cà phê nhưng lại
                                                    muốn thay đổi vị.
                                                    Vị chua ngọt của trái phúc bồn tử, làm dậy lên hương vị trái cây tự
                                                    nhiên vốn sẵn có trong hạt cà phê,
                                                    hòa quyện thêm vị đăng đắng, ngọt dịu nhẹ nhàng của Cold Brew để
                                                    mang đến một cách thưởng thức cà phê hoàn toàn mới,
                                                    vừa thơm lừng hương cà phê quen thuộc, vừa nhẹ nhàng và thanh mát
                                                    bởi hương trái cây đầy thú vị.</p>
                                                <p class="price"><span>$2.90</span></p>
                                                <p><a href="#" class="btn btn-primary btn-outline-primary">Thêm vào giỏ
                                                    hàng</a></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 text-center">
                                        <div class="menu-wrap">
                                            <a href="#" class="menu-img img mb-4"
                                               style="background-image: url(images/cold_brew/coldbrew_suatuoimacchiato.jpg);"></a>
                                            <div class="text">
                                                <h3><a href="#">Cold Brew Sữa tươi Macchiato</a></h3>
                                                <p class="product-description-3">Cold Brew Sữa Tươi Macchiato - hương vị
                                                    cà phê vừa quen vừa lạ. Quen
                                                    bởi vị đăng đắng và ngọt dịu của Cold Brew, thức uống "Signature"
                                                    của Nhà. Lạ bởi phong vị ngọt ngào của lớp sữa tươi và lớp foam
                                                    macchiato beo béo được đánh lên sánh mịn.</p>
                                                <p class="price"><span>$2.90</span></p>
                                                <p><a href="#" class="btn btn-primary btn-outline-primary">Thêm vào giỏ
                                                    hàng</a></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 text-center">
                                        <div class="menu-wrap">
                                            <a href="#" class="menu-img img mb-4"
                                               style="background-image: url(images/cold_brew/coldbrew_camvang.jpg);"></a>
                                            <div class="text">
                                                <h3><a href="#">Cold brew cam vàng</a></h3>
                                                <p class="product-description-3">Sự kết hợp vừa quen vừa lạ giữa cà phê
                                                    ngâm lạnh (100% Arabica Cầu
                                                    Đất) với nước ép cam tươi và sả ngâm cho vị cân bằng,
                                                    tươi mát quyện trong hương vị cà phê tròn đầy. Cam sả - cái tên quen
                                                    thuộc đưa bạn đến gần với Nhà ngày nào,
                                                    giờ được khoác lên mình dáng vẻ mới lạ cùng Cold Brew, 1 hương vị
                                                    bạn khó lòng bỏ qua khi ghé Nhà trong mùa hè này.</p>
                                                <p class="price"><span>$2.90</span></p>
                                                <p><a href="#" class="btn btn-primary btn-outline-primary">Thêm vào giỏ
                                                    hàng</a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="tab-pane fade" id="v-pills-3" role="tabpanel" aria-labelledby="v-pills-3-tab">
                                <div class="row">
                                    <div class="col-md-4 text-center">
                                        <div class="menu-wrap">
                                            <a href="#" class="menu-img img mb-4"
                                               style="background-image: url(images/matcha_socola/socola_daxay.jpg   );"></a>
                                            <div class="text">
                                                <h3><a href="#">Sô-cô-la đá xay</a></h3>
                                                <p class="product-description-1">Vị đắng của cà phê kết hợp cùng vị
                                                    cacao ngọt ngào của sô-cô-la, vị
                                                    sữa tươi ngọt béo, đem đến trải nghiệm vị giác cực kỳ thú vị.</p>
                                                <p class="price"><span>$2.90</span></p>
                                                <p><a href="#" class="btn btn-primary btn-outline-primary">Thêm vào giỏ
                                                    hàng</a></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 text-center">
                                        <div class="menu-wrap">
                                            <a href="#" class="menu-img img mb-4"
                                               style="background-image: url(images/matcha_socola/matcha_latte.jpg);"></a>
                                            <div class="text">
                                                <h3><a href="#">Matcha latte</a></h3>
                                                <p class="product-description-1">Với màu xanh mát mắt của bột trà
                                                    Matcha, vị ngọt nhẹ nhàng, pha trộn
                                                    cùng sữa tươi và lớp foam mềm mịn, Matcha Latte là thức uống yêu
                                                    thích của tất cả mọi người.</p>
                                                <p class="price"><span>$2.90</span></p>
                                                <p><a href="#" class="btn btn-primary btn-outline-primary">Thêm vào giỏ
                                                    hàng</a></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 text-center">
                                        <div class="menu-wrap">
                                            <a href="#" class="menu-img img mb-4"
                                               style="background-image: url(images/matcha_socola/matcha_daxay.jpg);"></a>
                                            <div class="text">
                                                <h3><a href="#">Matcha đá xay</a></h3>
                                                <p class="product-description-1">Matcha thanh, nhẫn, và đắng nhẹ được
                                                    nhân đôi sảng khoái khi uống
                                                    lạnh. Nhấn nhá thêm những nét bùi béo của kem và sữa. Gây thương nhớ
                                                    vô cùng!</p>
                                                <p class="price"><span>$2.90</span></p>
                                                <p><a href="#" class="btn btn-primary btn-outline-primary">Thêm vào giỏ
                                                    hàng</a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="tab-pane fade" id="v-pills-4" role="tabpanel" aria-labelledby="v-pills-4-tab">
                                <div class="row">
                                    <div class="col-md-4 text-center">
                                        <div class="menu-wrap">
                                            <a href="#" class="menu-img img mb-4"
                                               style="background-image: url(images/thuc_uong_trai_cay/pbt_cam_daxay.jpg);"></a>
                                            <div class="text">
                                                <h3><a href="#">Phúc bồn tử cam đá xay</a></h3>
                                                <p class="product-description-2">Tê tái ngay đầu lưỡi bởi sự mát lạnh
                                                    của đá xay.
                                                    Hòa quyện thêm hương vị chua chua, ngọt ngọt từ trái cam tươi và
                                                    trái phúc bồn tử 100% tự nhiên, để cho ra một hương vị thanh mát,
                                                    kích thích vị giác đầy thú vị ngay từ lần đầu thưởng thức.</p>
                                                <p class="price"><span>$2.90</span></p>
                                                <p><a href="#" class="btn btn-primary btn-outline-primary">Thêm vào giỏ
                                                    hàng</a></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 text-center">
                                        <div class="menu-wrap">
                                            <a href="#" class="menu-img img mb-4"
                                               style="background-image: url(images/thuc_uong_trai_cay/chanh_sa_daxay.jpg);"></a>
                                            <div class="text">
                                                <h3><a href="#">Chanh sả đá xay</a></h3>
                                                <p class="product-description-2">Sự kết hợp hài hoà giữa những nguyên
                                                    liệu mộc mạc rất đỗi quen thuộc
                                                    đối với người Việt cho một thức uống thanh mát, giải nhiệt lại tốt
                                                    cho sức khoẻ.</p>
                                                <p class="price"><span>$2.90</span></p>
                                                <p><a href="#" class="btn btn-primary btn-outline-primary">Thêm vào giỏ
                                                    hàng</a></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 text-center">
                                        <div class="menu-wrap">
                                            <a href="#" class="menu-img img mb-4"
                                               style="background-image: url(images/thuc_uong_trai_cay/sinhto_vietquat.jpg);"></a>
                                            <div class="text">
                                                <h3><a href="#">Sinh tố việt quất</a></h3>
                                                <p class="product-description-2">Mứt Việt Quất chua thanh, ngòn ngọt,
                                                    phối hợp nhịp nhàng với dòng sữa
                                                    chua bổ dưỡng. Là món sinh tố thơm ngon mà cả đầu lưỡi và làn da đều
                                                    thích.</p>
                                                <p class="price"><span>$2.90</span></p>
                                                <p><a href="#" class="btn btn-primary btn-outline-primary">Thêm vào giỏ
                                                    hàng</a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="tab-pane fade" id="v-pills-5" role="tabpanel" aria-labelledby="v-pills-5-tab">
                                <div class="row">
                                    <div class="col-md-4 text-center">
                                        <div class="menu-wrap">
                                            <a href="#" class="menu-img img mb-4"
                                               style="background-image: url(images/tra_sua_macchiato/cherry_macchiato.jpg);"></a>
                                            <div class="text">
                                                <h3><a href="#">Trà cherry macchiato</a></h3>
                                                <p class="product-description-2">Khoác lên mình một ngoại hình tràn đầy
                                                    năng lượng với sắc đỏ rực rỡ
                                                    của Cherry chín mọng, kết hợp với nền trà oolong hảo hạng và lớp
                                                    foam sánh mịn, để mang đến cho bạn một thức uống khoan khoái và dậy
                                                    lên từng phong vị chua, béo, ngọt đầy ấn tượng.</p>
                                                <p class="price"><span>$2.90</span></p>
                                                <p><a href="#" class="btn btn-primary btn-outline-primary">Thêm vào giỏ
                                                    hàng</a></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 text-center">
                                        <div class="menu-wrap">
                                            <a href="#" class="menu-img img mb-4"
                                               style="background-image: url(images/tra_sua_macchiato/matcha_macchiato.jpg);"></a>
                                            <div class="text">
                                                <h3><a href="#">Trà matcha macchiato</a></h3>
                                                <p class="product-description-2">Bột trà xanh Matcha thơm lừng hảo hạng
                                                    cùng lớp Macchiato béo ngậy là
                                                    một sự kết hợp tuyệt vời.</p>
                                                <p class="price"><span>$2.90</span></p>
                                                <p><a href="#" class="btn btn-primary btn-outline-primary">Thêm vào giỏ
                                                    hàng</a></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 text-center">
                                        <div class="menu-wrap">
                                            <a href="#" class="menu-img img mb-4"
                                               style="background-image: url(images/tra_sua_macchiato/tra_den_macchiato.jpg);"></a>
                                            <div class="text">
                                                <h3><a href="#">Trà đen macchiato</a></h3>
                                                <p class="product-description-2">Trà đen được ủ mới mỗi ngày, giữ nguyên
                                                    được vị chát mạnh mẽ đặc
                                                    trưng của lá trà, phủ bên trên là lớp Macchiato "homemade" bồng bềnh
                                                    quyến rũ vị phô mai mặn mặn mà béo béo.</p>
                                                <p class="price"><span>$2.90</span></p>
                                                <p><a href="#" class="btn btn-primary btn-outline-primary">Thêm vào giỏ
                                                    hàng</a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
            <div class="col-md-7 heading-section ftco-animate text-center">
                <h2 class="mb-4">Bài viết mới</h2>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live
                    the blind texts.</p>
            </div>
        </div>
        <div class="row d-flex">
            <div class="col-md-4 d-flex ftco-animate">
                <div class="blog-entry align-self-stretch">
                    <a href="blog-single.html" class="block-20" style="background-image: url('images/image_1.jpg');">
                    </a>
                    <div class="text py-4 d-block">
                        <div class="meta">
                            <div><a href="#">Sept 10, 2018</a></div>
                            <div><a href="#">Admin</a></div>
                            <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                        </div>
                        <h3 class="heading mt-2"><a href="#">The Delicious Pizza</a></h3>
                        <p>A small river named Duden flows by their place and supplies it with the necessary
                            regelialia.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 d-flex ftco-animate">
                <div class="blog-entry align-self-stretch">
                    <a href="blog-single.html" class="block-20" style="background-image: url('images/image_2.jpg');">
                    </a>
                    <div class="text py-4 d-block">
                        <div class="meta">
                            <div><a href="#">Sept 10, 2018</a></div>
                            <div><a href="#">Admin</a></div>
                            <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                        </div>
                        <h3 class="heading mt-2"><a href="#">The Delicious Pizza</a></h3>
                        <p>A small river named Duden flows by their place and supplies it with the necessary
                            regelialia.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 d-flex ftco-animate">
                <div class="blog-entry align-self-stretch">
                    <a href="blog-single.html" class="block-20" style="background-image: url('images/image_3.jpg');">
                    </a>
                    <div class="text py-4 d-block">
                        <div class="meta">
                            <div><a href="#">Sept 10, 2018</a></div>
                            <div><a href="#">Admin</a></div>
                            <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
                        </div>
                        <h3 class="heading mt-2"><a href="#">The Delicious Pizza</a></h3>
                        <p>A small river named Duden flows by their place and supplies it with the necessary
                            regelialia.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!--Footer-->
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
                        <li><a href="#" class="py-2 d-block"><i class="icon-user"></i>&nbsp;&nbsp;Vũ Huỳnh Như Anh</a>
                        </li>
                        <li><a href="#" class="py-2 d-block"><i class="icon-user"></i>&nbsp;&nbsp;Nguyễn Hữu Hải</a>
                        <li><a href="#" class="py-2 d-block"><i class="icon-user"></i>&nbsp;&nbsp;Vũ Quốc Huy</a></li>
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
