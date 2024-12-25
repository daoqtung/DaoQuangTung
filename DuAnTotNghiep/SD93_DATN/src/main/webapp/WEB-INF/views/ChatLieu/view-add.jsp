<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLvj8jHFK62Hxh6lZHgAGvYl27hYjv6VjEA5hzGtUQQ" crossorigin="anonymous">
    <style>
        body {
            background-color: #f2f4f7;
            font-family: Arial, sans-serif;
        }

        .container {
            max-width: 600px;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0px 6px 15px rgba(0, 0, 0, 0.15);
        }

        h4 {
            font-weight: bold;
            color: #343a40;
            margin-bottom: 30px;
            text-transform: uppercase;
            text-align: center;
        }

        label {
            font-weight: bold;
            color: #495057;
        }

        .form-control {
            border-radius: 8px;
            border: 1px solid #ced4da;
        }

        .form-check-label {
            margin-left: 5px;
        }

        .btn-success {
            background-color: #28a745;
            border: none;
            padding: 12px 20px;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            transition: all 0.3s ease;
            width: 100%;
        }

        .btn-success:hover {
            background-color: #218838;
        }

        .text-danger {
            font-size: 14px;
            margin-top: 5px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-check {
            margin-bottom: 10px;
        }
    </style>
    <title>Chất liệu</title>
</head>
<body>
<%@ include file="../templates/Admin/Layouts/GiayTheThao/_HeaderGiayTheThao.jsp" %>

<div class="container">
    <h1 class="text-center" style="color: red;">Thêm Mới Chất Liệu</h1>
<br>
    <form:form action="/chatLieu/add" modelAttribute="chatLieu">
        <div class="form-group">
            <label for="tenChatLieu">Tên chất liệu</label>
            <form:input id="tenChatLieu" path="tenChatLieu" class="form-control" placeholder="Nhập tên chất liệu"/>
            <form:errors class="text-danger" element="span" path="tenChatLieu"/>
        </div>

        <div class="form-group">
            <label for="ghiChu">Ghi Chú</label>
            <form:input id="ghiChu" path="ghiChu" class="form-control" placeholder="Nhập ghi chú"/>
            <form:errors class="text-danger" element="span" path="ghiChu"/>
        </div>

        <div class="form-group">
            <label for="ngayTao">Ngày tạo</label>
            <form:input id="ngayTao" type="date" path="ngayTao" class="form-control" readonly="true"/>
            <form:errors class="text-danger" element="span" path="ngayTao"/>
        </div>

        <div class="form-group">
            <label for="ngaySua">Ngày sửa</label>
            <form:input id="ngaySua" type="date" path="ngaySua" class="form-control" readonly="true"/>
            <form:errors class="text-danger" element="span" path="ngaySua"/>
        </div>

        <div class="form-group">
            <label>Trạng thái</label>
            <div class="d-flex align-items-center"> <!-- Use d-flex to align items horizontally -->
                <div class="form-check me-3"> <!-- Add margin to the right for spacing -->
                    <form:radiobutton cssClass="form-check-input" path="trangThai" value="1" checked="true"/>
                    <label class="form-check-label">Đang kích hoạt</label>
                </div>
                <div class="form-check">
                    <form:radiobutton cssClass="form-check-input" path="trangThai" value="0"/>
                    <label class="form-check-label">Chưa kích hoạt</label>
                </div>
            </div>
        </div>
<br>
        <button class="btn btn-success">
            <i class="fa fa-plus"></i> Thêm Chất Liệu
        </button>
    </form:form>
</div>

<%@ include file="../templates/Admin/Layouts/GiayTheThao/_FooterGiayTheThao.jsp" %>

<script>
    // Hàm để thiết lập ngày hiện tại cho các ô nhập ngày
    function setCurrentDate() {
        const today = new Date().toISOString().split('T')[0]; // Lấy ngày hiện tại
        document.getElementById('ngayTao').value = today; // Thiết lập giá trị cho ô Ngày tạo
        document.getElementById('ngaySua').value = today; // Thiết lập giá trị cho ô Ngày sửa
    }

    // Gọi hàm khi trang được tải
    window.onload = setCurrentDate;
</script>

<script>
    function validateForm() {
        let isValid = true;
        const tenChatLieu = document.getElementById('tenChatLieu').value;
        const ghiChu = document.getElementById('ghiChu').value;
        const errorTenChatLieu = document.getElementById('error-tenChatLieu');
        const errorGhiChu = document.getElementById('error-ghiChu');

        // Reset error messages
        errorTenChatLieu.textContent = '';
        errorGhiChu.textContent = '';

        // Validate Tên chất liệu
        if (tenChatLieu.trim() === '') {
            errorTenChatLieu.textContent = 'Tên chất liệu không được để trống.';
            isValid = false;
        } else if (tenChatLieu.length > 50) {
            errorTenChatLieu.textContent = 'Tên chất liệu không được vượt quá 50 ký tự.';
            isValid = false;
        } else if (/[^a-zA-Z0-9\s]/.test(tenChatLieu)) {
            errorTenChatLieu.textContent = 'Tên chất liệu không được chứa ký tự đặc biệt.';
            isValid = false;
        }

        // Validate Ghi chú
        if (ghiChu.length > 100) {
            errorGhiChu.textContent = 'Ghi chú không được vượt quá 100 ký tự.';
            isValid = false;
        }

        return isValid; // Return true if all validations pass
    }
</script>
</body>
</html>