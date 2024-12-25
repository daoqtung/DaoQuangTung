<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Công dụng</title>

    <style>
        body {
            background-color: #f8f9fa;
            color: #212529;
            font-family: 'Roboto', sans-serif;
        }
        .container {
            max-width: 600px; /* Tăng kích thước container */
            background-color: #ffffff;
            padding: 30px; /* Tăng padding */
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #dc3545;
            margin-bottom: 30px;
            font-weight: bold;
            text-transform: uppercase;
        }
        label {
            font-weight: 500;
            color: #495057;
            margin-bottom: 5px;
            display: block; /* Làm cho label chiếm hết chiều rộng */
            font-size: 16px; /* Tăng kích thước chữ cho label */
        }
        .form-control {
            border-radius: 5px;
            border: 1px solid #ced4da;
            padding: 10px;
            box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1);
            transition: border-color 0.2s;
            font-size: 16px; /* Tăng kích thước chữ trong input */
        }
        .form-control:focus {
            border-color: #80bdff;
            box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1), 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
            outline: 0;
        }
        .btn-success {
            background-color: #28a745;
            border: none;
            padding: 12px 20px;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s ease;
            cursor: pointer;
        }
        .btn-success:hover {
            background-color: #218838;
        }
        .text-danger {
            font-size: 14px;
            margin-top: 5px;
            color: #dc3545;
        }
        label {
            font-weight: 700; /* Hoặc sử dụng 'bold' */
            color: #495057;
            margin-bottom: 5px;
            display: block; /* Làm cho label chiếm hết chiều rộng */
            font-size: 16px; /* Tăng kích thước chữ cho label */
        }
        .radio-group {
            display: flex;
            align-items: center;
        }
        .form-check {
            margin-right: 20px; /* Khoảng cách giữa các radio */
        }
        /* Responsive cho màn hình nhỏ hơn */
        @media (max-width: 768px) {
            .container {
                max-width: 95%;
                padding: 20px; /* Điều chỉnh padding */
            }
        }
    </style>
</head>
<body>
<%@ include file="../templates/Admin/Layouts/GiayTheThao/_HeaderGiayTheThao.jsp" %>
<div class="container" style="margin-bottom: 15px">

    <h1 style="color: red; text-align: center;">Sửa Công Dụng Giày</h1>
    <br>
    <form:form action="/congDung/update/${id}" modelAttribute="congDung">
        <div class="form-group">
            <label>Tên công dụng</label>
            <form:input path="tenCongDung" class="form-control" />
            <span id="error-ten" class="text-danger"></span> <!-- Thêm phần tử để hiển thị lỗi -->
            <form:errors class="text-danger" element="span" path="tenCongDung"/>
        </div>

        <div class="form-group">
            <label>Ghi Chú</label>
            <form:input path="ghiChu" class="form-control" />
            <span id="error-GhiChu" class="text-danger"></span> <!-- Thêm phần tử để hiển thị lỗi -->
            <form:errors class="text-danger" element="span" path="ghiChu"/>
        </div>
        <div class="form-group">
            <label>Ngày tạo</label>
            <form:input type="date" path="ngayTao" class="form-control" readonly="true"/>
            <form:errors class="text-danger" element="span" path="ngayTao"/>
        </div>
        <div class="form-group">
            <label>Ngày sửa</label>
            <form:input type="date" path="ngaySua" class="form-control" readonly="true"/>
            <form:errors class="text-danger" element="span" path="ngaySua"/>
        </div>
        <div class="form-group">
            <label>Trạng thái</label>
            <div class="radio-group">
                <div class="form-check form-check-inline">
                    <form:radiobutton cssClass="form-check-input" path="trangThai" value="1" checked="true" />
                    <label class="form-check-label">Đang kích hoạt</label>
                </div>
                <div class="form-check form-check-inline">
                    <form:radiobutton cssClass="form-check-input" path="trangThai" value="0" />
                    <label class="form-check-label">Chưa kích hoạt</label>
                </div>
            </div>
        </div>

        <br>
        <button type="submit" class="btn btn-success w-100">
            <i class="fas fa-plus"></i>  Sửa Công Dụng
        </button>



    </form:form>

</div>
<%@ include file="../templates/Admin/Layouts/GiayTheThao/_FooterGiayTheThao.jsp" %>
<script>
    // Hàm để thiết lập ngày hiện tại cho ô nhập "Ngày sửa"
    function setCurrentDate() {
        const today = new Date().toISOString().split('T')[0]; // Lấy ngày hiện tại
        document.getElementById('ngaySua').value = today; // Thiết lập giá trị cho ô Ngày sửa
    }

    // Gọi hàm khi trang được tải
    window.onload = setCurrentDate;
</script>
</body>
</html>