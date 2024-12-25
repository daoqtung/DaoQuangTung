<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Đế Giày</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }

        .container {
            max-width: 400px; /* Giảm chiều rộng thêm */
            background-color: #ffffff;
            padding: 8px; /* Giảm padding thêm */
            border-radius: 6px; /* Giảm border-radius thêm */
            box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.15); /* Giảm shadow */
        }

        h4 {
            font-weight: bold;
            color: #343a40;
            margin-bottom: 18px; /* Giảm khoảng cách dưới */
            text-transform: uppercase;
            font-size: 15px; /* Giảm kích thước chữ thêm */
        }

        label {
            font-weight: bold;
            color: #495057;
            font-size: 14px; /* Tăng kích thước chữ cho label */
        }

        .form-control {
            border-radius: 3px; /* Giảm border-radius */
            border: 1px solid #ced4da;
            padding: 6px; /* Giảm padding trong form control */
            box-shadow: inset 0px 1px 2px rgba(0, 0, 0, 0.1);
            font-size: 14px; /* Tăng kích thước chữ trong input */
        }

        .form-check-label {
            margin-left: 3px; /* Giảm khoảng cách */
            font-size: 14px; /* Tăng kích thước chữ cho checkbox */
        }

        .btn-success {
            background-color: #28a745;
            border: none;
            padding: 6px 12px; /* Giảm padding */
            border-radius: 3px; /* Giảm border-radius */
            font-size: 12px; /* Giảm kích thước chữ */
            transition: background-color 0.3s ease;
        }

        .btn-success:hover {
            background-color: #218838;
        }

        .text-danger {
            font-size: 11px; /* Giảm kích thước chữ */
            margin-top: 2px; /* Giảm khoảng cách */
        }

        #addFormContainer {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.6);
            z-index: 9999;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #addForm {
            background-color: #fff;
            padding: 16px; /* Giảm padding */
            border-radius: 5px; /* Giảm border-radius */
            box-shadow: 0 3px 6px rgba(0, 0, 0, 0.15); /* Giảm shadow */
            max-width: 400px; /* Giảm chiều rộng form */
            width: 100%;
        }

        #addForm button[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 6px 10px; /* Giảm padding */
            border-radius: 3px; /* Giảm border-radius */
            font-size: 12px; /* Giảm kích thước chữ */
            cursor: pointer;
        }

        #addForm button[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<%@ include file="../templates/Admin/Layouts/GiayTheThao/_HeaderGiayTheThao.jsp" %>
<div class="container">
    <h1 style="text-align: center; color: red;">Thêm Đế Giày</h1>
    <br>
    <div>
        <form:form action="/deGiay/create" modelAttribute="dg" enctype="multipart/form-data">
            <div class="form-group">
                <label>Tên Đế Giày</label>
                <form:input path="tenDeGiay" class="form-control" />
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
                <label>Trạng thái</label>
                <div class="d-flex">
                    <div class="form-check mr-3"> <!-- Thêm class mr-3 để có khoảng cách giữa các radio buttons -->
                        <form:radiobutton cssClass="form-check-input" path="trangThai" value="1" checked="true" />
                        <label class="form-check-label">Còn</label>
                    </div>
                    <div class="form-check">
                        <form:radiobutton cssClass="form-check-input" path="trangThai" value="0" />
                        <label class="form-check-label">Hết</label>
                    </div>
                </div>
            </div>

            <br>
            <button type="submit" class="btn btn-success w-100">
                <i class="fas fa-plus"></i>  Thêm Đế Giày
        </form:form>
    </div>
</div>
<%@ include file="../templates/Admin/Layouts/GiayTheThao/_FooterGiayTheThao.jsp" %>

<script>
    // Hàm để thiết lập ngày hiện tại cho các ô nhập ngày
    function setCurrentDate() {
        const today = new Date().toISOString().split('T')[0]; // Lấy ngày hiện tại
        document.querySelector('input[name="ngayTao"]').value = today; // Thiết lập giá trị cho ô Ngày tạo
        document.querySelector('input[name="ngaySua"]').value = today; // Thiết lập giá trị cho ô Ngày sửa
    }

    // Gọi hàm khi trang được tải
    window.onload = setCurrentDate;

    function validateInput() {
        const tenInput = document.querySelector('input[name="tenDeGiay"]'); // Lấy input "Tên Đế Giày"
        const ghiChuInput = document.querySelector('input[name="ghiChu"]'); // Lấy input "Ghi Chú"
        const errorTen = document.getElementById('error-ten'); // Lấy thẻ hiển thị lỗi "Tên"
        const errorGhiChu = document.getElementById('error-GhiChu'); // Lấy thẻ hiển thị lỗi "Ghi Chú"

        document.querySelector('button[type="submit"]').addEventListener('click', function (event) {
            let isValid = true; // Biến kiểm tra tính hợp lệ của form

            const tenValue = tenInput.value.trim(); // Lấy giá trị đã loại bỏ khoảng trắng
            const ghiChuValue = ghiChuInput.value.trim();

            // Reset lỗi
            errorTen.innerHTML = "";
            errorGhiChu.innerHTML = "";

            // Kiểm tra "Tên Đế Giày"
            if (tenValue.length < 1) {
                errorTen.innerHTML = "Tên Đế Giày không được để trống.";
                isValid = false;
            } else if (tenValue.length < 3 || tenValue.length > 50) {
                errorTen.innerHTML = "Tên Đế Giày phải có độ dài từ 3 đến 50 ký tự.";
                isValid = false;
            }

            // Kiểm tra "Ghi Chú"
            if (ghiChuValue.length < 1) {
                errorGhiChu.innerHTML = "Ghi Chú không được để trống.";
                isValid = false;
            } else if (ghiChuValue.length > 100) {
                errorGhiChu.innerHTML = "Ghi Chú không được dài quá 100 ký tự.";
                isValid = false;
            }

            // Ngăn gửi form nếu không hợp lệ
            if (!isValid) {
                event.preventDefault();
            }
        });
    }

    // Gọi hàm validate khi trang được tải
    validateInput();
</script>
</body>
</html>