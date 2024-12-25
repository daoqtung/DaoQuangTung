<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <title>Quản Lý Cổ Giày</title>

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
            font-size: 16px; /* Tăng kích thước chữ cho label */
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
    <h1 class="text-center" style="color: red;">Thêm Cổ Giày</h1>
<br>
    <form:form modelAttribute="coGiay" action="${pageContext.request.contextPath}/CoGiay/create" method="POST" enctype="multipart/form-data" id="form-co-giay">
        <div class="form-group">
            <label for="tenCoGiay">Tên Cổ Giày:</label>
            <form:input id="tenCoGiay" path="tenCoGiay" class="form-control" placeholder="Nhập tên cổ giày" />
            <span id="error-tenCoGiay" class="text-danger"></span>
        </div>

        <div class="form-group">
            <label for="ghiChu">Ghi Chú:</label>
            <form:input id="ghiChu" path="ghiChu" class="form-control" placeholder="Nhập ghi chú" />
            <span id="error-ghiChu" class="text-danger"></span>
        </div>

        <div class="form-group">
            <label>Trạng Thái:</label>
            <div class="d-flex align-items-center"> <!-- Use d-flex to align items horizontally -->
                <div class="form-check me-3"> <!-- Add margin to the right for spacing -->
                    <form:radiobutton id="trangThai1" path="trangThai" value="1" cssClass="form-check-input" />
                    <label class="form-check-label" for="trangThai1">Đã kích hoạt</label>
                </div>
                <div class="form-check">
                    <form:radiobutton id="trangThai0" path="trangThai" value="0" cssClass="form-check-input" />
                    <label class="form-check-label" for="trangThai0">Chưa kích hoạt</label>
                </div>
            </div>
        </div>
<br>
        <button type="submit" class="btn btn-success w-100">
            <i class="fa fa-plus"></i> Thêm Cổ Giày
        </button>

        <label>${message}</label>
    </form:form>
</div>

<%@ include file="../templates/Admin/Layouts/GiayTheThao/_FooterGiayTheThao.jsp" %>
<script>
    document.getElementById('form-co-giay').addEventListener('submit', function (event) {
        const tenCoGiayInput = document.getElementById('tenCoGiay');
        const ghiChuInput = document.getElementById('ghiChu');
        const errorTenCoGiay = document.getElementById('error-tenCoGiay');
        const errorGhiChu = document.getElementById('error-ghiChu');

        let isValid = true;

        // Reset error messages
        errorTenCoGiay.textContent = "";
        errorGhiChu.textContent = "";

        // Validate Tên Cổ Giày
        const tenCoGiayValue = tenCoGiayInput.value.trim();
        if (tenCoGiayValue.length < 1) {
            errorTenCoGiay.textContent = "Tên Cổ Giày không được để trống.";
            isValid = false;
        } else if (tenCoGiayValue.length < 3 || tenCoGiayValue.length > 50) {
            errorTenCoGiay.textContent = "Tên Cổ Giày phải có độ dài từ 3 đến 50 ký tự.";
            isValid = false;
        } else if (!/^[a-zA-Z0-9\s]+$/.test(tenCoGiayValue)) {
            errorTenCoGiay.textContent = "Tên Cổ Giày không được chứa ký tự đặc biệt.";
            isValid = false;
        }

        // Validate Ghi Chú
        const ghiChuValue = ghiChuInput.value.trim();
        if (ghiChuValue.length < 1) {
            errorGhiChu.textContent = "Ghi Chú không được để trống.";
            isValid = false;
        } else if (ghiChuValue.length > 100) {
            errorGhiChu.textContent = "Ghi Chú không được dài quá 100 ký tự.";
            isValid = false;
        }

        // Prevent form submission if validation fails
        if (!isValid) {
            event.preventDefault();
        }
    });
</script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
</body>
</html>
