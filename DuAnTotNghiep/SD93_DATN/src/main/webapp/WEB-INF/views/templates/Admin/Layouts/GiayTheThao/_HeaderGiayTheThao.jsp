<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%--    <link rel="icon" href="img/background_title.jpg" type="image/x-icon">--%>
    <title>Sneaker Easy_Shop</title>
    <!-- Custom fonts for this template-->
    <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <!-- Custom styles for this template-->
    <link href="/css/css.css" rel="stylesheet">
    <link href="/css/css1.css" rel="stylesheet">
    <%-- Link css by index--%>
    <link href="/css/index.css" rel="stylesheet">
    <link href="/css/home.css" rel="stylesheet">
    <link href="/css/productList.css" rel="stylesheet">
    <style>
        .cart-icon {
            position: relative;
            display: inline-block;
        }

        .cart-icon img {
            top: 30px;
            margin-top: 5px;
            width: 35px;
            height: 30px;
            vertical-align: middle;
        }

        .cart-count {
            position: absolute;
            top: 0;
            left: 25px;
            background-color: red;
            color: #fff;
            border-radius: 50%;
            width: 20px;
            height: 20px;
            text-align: center;
            line-height: 20px;
        }
    </style>
    <script>
        // script.js
        const cartCountElement = document.querySelector(".cart-count");
        const addToCartButtons = document.querySelectorAll(".add-to-cart");

        let cartCount = 0;

        addToCartButtons.forEach(button => {
            button.addEventListener("click", () => {
                cartCount++;
                cartCountElement.textContent = cartCount;
            });
        });

    </script>


</head>
<body id="page-top">
<!-- Page Wrapper -->
<div id="wrapper">
    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar" style="width: 1000px">

        <a class="sidebar-brand d-flex flex-column align-items-center" href="/TrangChu/Admin/home" style="width: 100%; text-align: center;">
            <div class="image-container" style="flex-shrink: 0;">
                <img src="../../../../../../resources/img/banner/banner-img-admin.png" alt="Shoe Image" style="width: 80px;">
            </div>
            <div class="text-container" style="font-size: 18px; flex-shrink: 0; margin-top: 5px;">
                Easy-Shop
            </div>
        </a>

        <br>
        <br>
        <br>



        <li class="nav-item">
            <a class="nav-link" href="/BanHangTaiQuay">
                <i class="fas fa-fw fa-table"></i>
                <span>Bán hàng tại quầy</span></a>
        </li>
        <hr class="sidebar-divider">
        <!-- Divider -->
        <%--        <hr class="sidebar-divider">--%>
        <li class="nav-item">
            <a class="nav-link" href="/GiayTheThao/listGiayTheThao">
                <i class="fas fa-fw fa-chart-area"></i>
                <span>Quản Lý Sản Phẩm</span></a>
        </li>
        <hr class="sidebar-divider">

        <!-- How to code  Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
               aria-expanded="true" aria-controls="collapsePages">
                <i class="fas fa-fw fa-folder"></i>
                <span>Quản lý thuộc tính</span>

            </a>
            <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header" style="color: black; font-size: 13px; font-weight: bold;">Thuộc tính sản phẩm:</h6>
                    <a class="collapse-item" href="/thuongHieu">Thương hiệu giày</a>
                    <a class="collapse-item" href="/form/hien-thi">Kiểu dáng giày</a>
                    <a class="collapse-item" href="/congDung/hien-thi">Công dụng</a>
                    <a class="collapse-item" href="/MauSac/list">Màu sắc giày</a>
                    <a class="collapse-item" href="/Size/hien-thi">Kích cỡ giày</a>
                    <a class="collapse-item" href="/chatLieu/hien-thi">Chất liệu giày</a>
                    <a class="collapse-item" href="/trongLuong/hien-thi">Trọng lượng giày</a>
                    <a class="collapse-item" href="/deGiay">Đế giày</a>
                    <a class="collapse-item" href="/CoGiay/list">Cổ giày</a>
                    <a class="collapse-item" href="/dayGiay/hien-thi">Dây giày</a>
                    <a class="collapse-item" href="/kieuBuoc/hien-thi">Kiểu buộc</a>
                    <a class="collapse-item" href="/dinhTanGiay/hien-thi">Đinh tán giày</a>
                    <a class="collapse-item" href="/LotGiay/list">Lót giày</a>
                    <div class="collapse-divider"></div>
                    <%--                    <h4 class="collapse-header" style="color: black; font-weight: bold; font-size: 15px">Other pages:</h4>--%>



                    <%--                    <a class="collapse-item" href="/chatLieu/hien-thi">Chất liệu</a>--%>
                    <a class="collapse-item" href="/HuongDanBaoQuan/list">Hướng dẫn bảo quản</a>

                    <%--                    <a class="collapse-item" href="/GiayTheThao/create">Đăng sản phẩm</a>--%>

                </div>
            </div>

        </li>
        <hr class="sidebar-divider">
        <!-- Nav Item - User Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
               aria-expanded="true" aria-controls="collapseUtilities">
                <i class="fas fa-fw fa-wrench"></i>
                <span>Quản lý tài khoản</span>
            </a>
            <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                 data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header" style="color: black; font-size: 15px; font-weight: bold;" >Tài Khoản:</h6>
                    <a class="collapse-item" href="/user/hien-thi">Tài khoản: Nhân viên</a>

                    <a class="collapse-item" href="/KhachHang/list">Tài khoản: Khách hàng</a>


                    <%--                    <a class="collapse-item" href="/authentication/enregistrer">Register</a>--%>
                    <%--                    <div class="collapse-divider"></div>--%>
                    <%--                    <h6 class="collapse-header">Other User:</h6>--%>
                    <%--                    <a class="collapse-item" href="/GiayTheThao/listGiayTheThao">Giầy thể thao</a>--%>

                    <%--                    <a class="collapse-item" href="/chuongTrinhGiamGia/sanPham">Khuyến mại</a>--%>



                    <%--                    <a class="collapse-item" href="/404">Login</a>--%>
                </div>
            </div>
        </li>
        <hr class="sidebar-divider">
        <li class="nav-item">
            <a class="nav-link" href="/chuongTrinhGiamGia/sanPham">
                <i class="fas fa-fw fa-chart-area"></i>
                <span>Quản Lý Khuyến Mại</span></a>
        </li>
        <hr class="sidebar-divider">
        <li class="nav-item">
            <a class="nav-link" href="/Admin/xacNhanDonHangKhachHangAll">
                <i class="fas fa-fw fa-chart-area"></i>
                <span>Quản Lý Hóa Đơn</span></a>
        </li>
        <hr class="sidebar-divider">

        <li class="nav-item">
            <a class="nav-link" href="/thongKeChuanData">
                <i class="fas fa-fw fa-chart-area"></i>
                <span>Thống kê</span></a>
        </li>
        <hr class="sidebar-divider">

        <li class="nav-item">
            <a class="nav-link" href="/GiayTheThao/create">
                <i class="fas fa-fw fa-table"></i>
                <span>Đăng Sản Phẩm</span></a>
        </li>
        <hr class="sidebar-divider">

    </ul>
    <!-- The end code nav -->
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">
        <!-- Main Content -->
        <div id="content">
            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!-- Sidebar Toggle (Topbar) -->
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>

                <!-- Topbar Search -->
                <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                    <div class="input-group">
                        <%--                        <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."--%>
                        <%--                               aria-label="Search" aria-describedby="basic-addon2">--%>
                        <%--                        <div class="input-group-append">--%>
                        <%--                            <button class="btn btn-primary" type="button">--%>
                        <%--                                <i class="fas fa-search fa-sm"></i>--%>
                        <%--                            </button>--%>
                        <%--                        </div>--%>


                    </div>

                </form>

                <div class="hello" style="margin-left: 450px;margin-top: 10px">
                    <a style="color: red; font-size: 18px; flex-shrink:0;font-family: Courier">Xin Chào: ${userLog.tenUser}</a>
                </div>

                <%--                <div class="cart-icon" style="text-align: center; margin-left: 200px">--%>
                <%--                    <a href="${pageContext.request.contextPath}/gioHang/gioHangView">--%>
                <%--                        <img src="/images/cart-fill-frame.jpg" alt="Cart">--%>
                <%--                        <span style="" class="cart-count">0</span>--%>
                <%--                    </a>--%>
                <%--                </div>--%>

                <!-- Topbar Navbar -->
                <ul class="navbar-nav ml-auto">
                    <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                    <li class="nav-item dropdown no-arrow d-sm-none">
                        <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-search fa-fw"></i>
                        </a>
                        <!-- Dropdown - Messages -->
                        <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                             aria-labelledby="searchDropdown">
                            <form class="form-inline mr-auto w-100 navbar-search">
                                <div class="input-group">
                                    <input type="text" class="form-control bg-light border-0 small"
                                           placeholder="Search for..." aria-label="Search"
                                           aria-describedby="basic-addon2">
                                    <div class="input-group-append">
                                        <button class="btn btn-primary" type="button">
                                            <i class="fas fa-search fa-sm"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </li>

                    <!-- Nav Item - User Information -->
                    <li class="dropdown no-arrow" style="margin-top: 10px; margin-right: 70px;width: 50px">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">
                                <%--                                Hello: ${userLog.tenUser} ( ${userLog.role} )--%>
                            </span>
                            <img class="img-profile rounded-circle" src="/img/undraw_profile.svg" style="margin-top: 0px; border: 1px solid red">
                        </a>
                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="userDropdown">
                            <a class="dropdown-item" href="/TrangChu/ThongTinCaNhan/Admin">
                                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                Hồ sơ
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="/UserLog/logout" >
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                Đăng xuất
                            </a>

                        </div>
                    </li>

                </ul>
            </nav>

