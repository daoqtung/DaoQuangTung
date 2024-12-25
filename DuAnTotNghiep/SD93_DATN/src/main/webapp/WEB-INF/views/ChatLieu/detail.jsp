<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }

        .container {
            max-width: 600px;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
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
            border-radius: 5px;
            border: 1px solid #ced4da;
            box-shadow: inset 0px 1px 2px rgba(0, 0, 0, 0.1);
        }

        .form-check-label {
            margin-left: 5px;
        }

        .btn-success {
            background-color: #28a745;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s ease;
            width: 100%;
        }

        .btn-success:hover {
            background-color: #218838;
        }

        .text-danger {
            font-size: 14px;
            margin-top: 5px;
        }

        .form-check {
            margin-top: 10px;
        }
    </style>
    <title>Chỉnh sửa chất liệu</title>
</head>
<body>
<%@ include file="../templates/Admin/Layouts/GiayTheThao/_HeaderGiayTheThao.jsp" %>

<div class="container">

    <h1 class="text-center" style="color: red;">Cập Nhật Chất Liệu Giày</h1>
<br>
    <form:form action="/chatLieu/update/${id}" modelAttribute="chatLieu">
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
            <i class="fas fa-save"></i> Cập nhật Chất Liệu
        </button>

    </form:form>

</div>

<%@ include file="../templates/Admin/Layouts/GiayTheThao/_FooterGiayTheThao.jsp" %>


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
        if (ghiChu.trim() === '') {
            errorGhiChu.textContent = 'Ghi chú không được để trống.';
            isValid = false;
        } else if (ghiChu.length > 100) {
            errorGhiChu.textContent = 'Ghi chú không được vượt quá 100 ký tự.';
            isValid = false;
        }

        return isValid; // Return true if all validations pass
    }
</script>


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
