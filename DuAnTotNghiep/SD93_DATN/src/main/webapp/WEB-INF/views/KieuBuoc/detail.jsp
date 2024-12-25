<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Update Form</title>
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }

        .container {
            max-width: 400px;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
            margin: 50px auto;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
            font-size: 20px;
            font-weight: bold;
        }

        label {
            font-weight: bold;
            color: #495057;
        }

        .form-control {
            border-radius: 5px;
            border: 1px solid #ced4da;
        }

        .form-check-label {
            margin-left: 5px;
            font-size: 14px;
        }

        .btn-success {
            background-color: #007bff;
            border: none;
            padding: 10px;
            font-size: 14px;
            font-weight: bold;
            width: 100%;
            margin-top: 10px;
        }

        .btn-success:hover {
            background-color: #0056b3;
        }

        .text-danger {
            font-size: 12px;
        }
    </style>
</head>
<body>
<%@ include file="../templates/Admin/Layouts/GiayTheThao/_HeaderGiayTheThao.jsp" %>
<div class="container">
    <h1 style="color: red">  Cập Nhật Kiểu Buộc Giày</h1>
    <br>
    <form:form action="/kieuBuoc/update/${id}" modelAttribute="kieuBuoc">

        <div class="form-group">
            <label for="tenKieuBuoc">Tên Kiểu Buộc</label>
            <form:input path="tenKieuBuoc" id="tenKieuBuoc" class="form-control"/>
            <form:errors class="text-danger" element="span" path="tenKieuBuoc"/>
        </div>

        <div class="form-group">
            <label for="ghiChu">Ghi Chú</label>
            <form:input path="ghiChu" id="ghiChu" class="form-control"/>
            <form:errors class="text-danger" element="span" path="ghiChu"/>
        </div>

        <div class="form-group">
            <label for="ngayTao">Ngày Tạo</label>
            <form:input type="date" path="ngayTao" id="ngayTao" class="form-control" readonly="true"/>
            <form:errors class="text-danger" element="span" path="ngayTao"/>
        </div>

        <div class="form-group">
            <label for="ngaySua">Ngày Sửa</label>
            <form:input type="date" path="ngaySua" id="ngaySua" class="form-control" readonly="true"/>
            <form:errors class="text-danger" element="span" path="ngaySua"/>
        </div>

        <div class="form-group">
            <label>Trạng Thái</label>
            <div class="d-flex">
                <div class="form-check mr-3">
                    <form:radiobutton cssClass="form-check-input" path="trangThai" value="1"/>
                    <label class="form-check-label">Kích Hoạt</label>
                </div>
                <div class="form-check">
                    <form:radiobutton cssClass="form-check-input" path="trangThai" value="0"/>
                    <label class="form-check-label">Chưa Kích Hoạt</label>
                </div>
            </div>
        </div>

        <button type="submit" class="btn btn-success">Cập Nhật</button>

    </form:form>
</div>
<%@ include file="../templates/Admin/Layouts/GiayTheThao/_FooterGiayTheThao.jsp" %>
<script>
    window.onload = function () {
        const today = new Date().toISOString().split('T')[0];
        document.getElementById('ngaySua').value = today;
    };
</script>
</body>
</html>
