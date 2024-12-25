<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Quản Lý Thương Hiệu</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
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
<div class="container">
    <h1 style="color: red;">Thêm Thương Hiệu Giày</h1>
    <div>
        <form:form action="/thuongHieu/create" modelAttribute="th" enctype="multipart/form-data">
            <div class="form-group">
                <label>Tên Thương Hiệu</label>
                <form:input path="tenThuongHieu" class="form-control" />
                <span id="error-ten" class="text-danger"></span>
            </div>

            <div class="form-group">
                <label>Ghi Chú</label>
                <form:input path="ghiChu" class="form-control" />
                <span id="error-GhiChu" class="text-danger"></span>
            </div>

            <div class="form-group">
                <label>Ngày Tạo</label>
                <form:input type="date" path="ngayTao" class="form-control" readonly="true" />
            </div>

            <div class="form-group">
                <label>Ngày Sửa</label>
                <form:input type="date" path="ngaySua" class="form-control" readonly="true" />
            </div>

            <div class="form-group">
                <label>Trạng Thái</label>
                <div class="radio-group">
                    <div class="form-check">
                        <form:radiobutton class="form-check-input" path="trangThai" value="1" id="trangThai1" />
                        <label class="form-check-label" for="trangThai1">Đang Hợp Tác</label>
                    </div>
                    <div class="form-check">
                        <form:radiobutton class="form-check-input" path="trangThai" value="0" id="trangThai2" />
                        <label class="form-check-label" for="trangThai2">Ngừng Hợp Tác</label>
                    </div>
                </div>
            </div>
<br>
            <button type="submit" class="btn btn-success w-100">
                <i class="fas fa-plus"></i> Thêm Thương Hiệu
            </button>
        </form:form>
    </div>
</div>
<%@ include file="../templates/Admin/Layouts/GiayTheThao/_FooterGiayTheThao.jsp" %>
<script>
    function setCurrentDate() {
        const today = new Date().toISOString().split('T')[0];
        document.querySelector('input[name="ngayTao"]').value = today;
        document.querySelector('input[name="ngaySua"]').value = today;
    }

    window.onload = setCurrentDate;

    function validateInput() {
        const tenInput = document.querySelector('input[name="tenThuongHieu"]');
        const ghiChuInput = document.querySelector('input[name="ghiChu"]');
        const errorTen = document.getElementById('error-ten');
        const errorGhiChu = document.getElementById('error-GhiChu');

        document.querySelector('button[type="submit"]').addEventListener('click', function (event) {
            let isValid = true;

            const tenValue = tenInput.value.trim();
            const ghiChuValue = ghiChuInput.value.trim();

            errorTen.innerHTML = "";
            errorGhiChu.innerHTML = "";

            if (tenValue.length < 1) {
                errorTen.innerHTML = "Tên thương hiệu không được để trống.";
                isValid = false;
            } else if (tenValue.length < 3 || tenValue.length > 50) {
                errorTen.innerHTML = "Tên thương hiệu phải có độ dài từ 3 đến 50 ký tự.";
                isValid = false;
            } else if (!/^[a-zA-Z0-9\s]+$/.test(tenValue)) {
                errorTen.innerHTML = "Tên thương hiệu không được chứa ký tự đặc biệt.";
                isValid = false;
            }

            if (ghiChuValue.length < 1) {
                errorGhiChu.innerHTML = "Ghi chú không được để trống.";
                isValid = false;
            } else if (ghiChuValue.length > 100) {
                errorGhiChu.innerHTML = "Ghi chú không được dài quá 100 ký tự.";
                isValid = false;
            }

            if (!isValid) {
                event.preventDefault();
            }
        });
    }

    validateInput();
</script>
</body>
</html>