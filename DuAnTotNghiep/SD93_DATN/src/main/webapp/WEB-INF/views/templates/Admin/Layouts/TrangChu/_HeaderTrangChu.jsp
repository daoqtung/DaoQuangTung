<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%--    <link rel="icon" href="img/background_title.jpg" type="image/x-icon">--%>
    <title>Easy-Shop</title>
    <!-- Phông chữ tùy chỉnh cho mẫu này-->
    <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <!-- Các kiểu tùy chỉnh cho mẫu này-->
    <link href="/css/css.css" rel="stylesheet">
    <link href="/css/css1.css" rel="stylesheet">
    <%-- Liên kết CSS theo index --%>
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
<!-- Khung trang -->
<div id="wrapper">
    <!-- Sidebar -->

    <div id="content-wrapper" class="d-flex flex-column">
        <!-- Nội dung chính -->
        <div id="content">
            <!-- Thanh điều hướng -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!-- Công cụ chuyển đổi Sidebar (Thanh điều hướng) -->
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>

                <!-- Tìm kiếm trên thanh điều hướng -->
                <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                    <div class="input-group">
                        <input type="text" class="form-control bg-light border-0 small" placeholder="Tìm kiếm..."
                               aria-label="Search" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button">
                                <i class="fas fa-search fa-sm"></i>
                            </button>
                        </div>

                    </div>

                </form>

                <div class="hello" style="margin-left: 100px">
                    <a style="color: red">Xin Chào: ${userLog.tenUser}/a>
                </div>

                <ul class="navbar-nav ml-auto">
                    <!-- Mục điều hướng - Tìm kiếm (Chỉ hiển thị trên XS) -->
                    <li class="nav-item dropdown no-arrow d-sm-none">
                        <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-search fa-fw"></i>
                        </a>
                        <!-- Dropdown - Thông báo -->
                        <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                             aria-labelledby="searchDropdown">
                            <form class="form-inline mr-auto w-100 navbar-search">
                                <div class="input-group">
                                    <input type="text" class="form-control bg-light border-0 small"
                                           placeholder="Tìm kiếm..." aria-label="Search"
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

                    <!-- Mục điều hướng - Thông báo -->
                    <li class="nav-item dropdown no-arrow mx-1">
                        <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-bell fa-fw"></i>
                            <!-- Bộ đếm - Thông báo -->
                            <span class="badge badge-danger badge-counter">3+</span>
                        </a>
                        <!-- Dropdown - Thông báo -->
                        <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="alertsDropdown">
                            <h6 class="dropdown-header">
                                Trung tâm Thông báo
                            </h6>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <div class="mr-3">
                                    <div class="icon-circle bg-primary">
                                        <i class="fas fa-file-alt text-white"></i>
                                    </div>
                                </div>
                                <div>
                                    <div class="small text-gray-500">Ngày 12 tháng 12, 2019</div>
                                    <span class="font-weight-bold">Báo cáo hàng tháng mới đã sẵn sàng để tải xuống!</span>
                                </div>
                            </a>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <div class="mr-3">
                                    <div class="icon-circle bg-success">
                                        <i class="fas fa-donate text-white"></i>
                                    </div>
                                </div>
                                <div>
                                    <div class="small text-gray-500">Ngày 7 tháng 12, 2019</div>
                                    $290.29 đã được chuyển vào tài khoản của bạn!
                                </div>
                            </a>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <div class="mr-3">
                                    <div class="icon-circle bg-warning">
                                        <i class="fas fa-exclamation-triangle text-white"></i>
                                    </div>
                                </div>
                                <div>
                                    <div class="small text-gray-500">Cảnh báo Chi tiêu: Chúng tôi nhận thấy chi tiêu không bình thường trên tài khoản của bạn.
                                    </div>
                                </div>
                            </a>
                            <a class="dropdown-item text-center small text-gray-500" href="#">Xem tất cả thông báo</a>
                        </div>
                    </li>

                    <!-- Mục điều hướng - Tin nhắn -->
                    <li class="nav-item dropdown no-arrow mx-1">
                        <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-envelope fa-fw"></i>
                            <!-- Bộ đếm - Tin nhắn -->
                            <span class="badge badge-danger badge-counter">7</span>
                        </a>
                        <!-- Dropdown - Tin nhắn -->
                        <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="messagesDropdown">
                            <h6 class="dropdown-header">
                                Trung tâm Tin nhắn
                            </h6>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <div class="dropdown-list-image mr-3">
                                    <img class="rounded-circle" src="img/undraw_profile_1.svg" alt="...">
                                    <div class="status-indicator bg-success"></div>
                                </div>
                                <div class="font-weight-bold">
                                    <div class="text-truncate">Chào bạn! Tôi đang thắc mắc liệu bạn có thể giúp tôi với vấn đề tôi gặp phải không.
                                    </div>
                                    <div class="small text-gray-500">Emily Fowler · 58m</div>
                                </div>
                            </a>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <div class="dropdown-list-image mr-3">
                                    <img class="rounded-circle" src="img/undraw_profile_2.svg" alt="...">
                                    <div class="status-indicator"></div>
                                </div>
                                <div>
                                    <div class="text-truncate">Bản báo cáo tháng này đã hoàn thành!</div>
                                    <div class="small text-gray-500">Jae Chun · 1 ngày trước</div>
                                </div>
                            </a>
                            <a class="dropdown-item text-center small text-gray-500" href="#">Xem tất cả tin nhắn</a>
                        </div>
                    </li>

                    <!-- Mục điều hướng - Tài khoản người dùng -->
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">Đào Quang Tùng</span>
                            <img class="img-profile rounded-circle" src="img/undraw_profile.svg">
                        </a>
                        <!-- Dropdown - Tài khoản người dùng -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                            <a class="dropdown-item" href="#">
                                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                Hồ sơ
                            </a>
                            <a class="dropdown-item" href="#">
                                <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                Cài đặt
                            </a>
                            <a class="dropdown-item" href="#">
                                <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                Hoạt động
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                Đăng xuất
                            </a>
                        </div>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</div>
</body>
</html>
