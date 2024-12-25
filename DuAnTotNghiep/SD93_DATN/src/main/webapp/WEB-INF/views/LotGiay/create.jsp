<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Thêm Lót Giày</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        body {
            background-color: #e9ecef;
            font-family: 'Roboto', sans-serif;
        }

        .container {
            max-width: 480px;
            margin-top: 20px;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
        }

        h1 {
            font-size: 20px;
            font-weight: 700;
            color: #dc3545;
            text-align: center;
            text-transform: uppercase;
            margin-bottom: 20px;
        }

        label {
            font-weight: 600;
            font-size: 14px;
            color: #495057;
        }

        .form-control {
            font-size: 14px;
            border-radius: 4px;
            padding: 10px;
        }

        .btn-success {
            font-size: 14px;
            font-weight: bold;
            padding: 10px;
            border-radius: 5px;
            text-transform: uppercase;
        }

        .btn-success i {
            margin-right: 5px;
        }

        .btn-success:hover {
            background-color: #218838;
            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.2);
        }

        .text-danger {
            font-size: 12px;
            margin-top: 5px;
        }
    </style>

</head>
<body>
<%@ include file="../templates/Admin/Layouts/GiayTheThao/_HeaderGiayTheThao.jsp" %>
<div class="container">
    <h1 style=" text-align: center; color: red">Thêm Lót Giày</h1>
<br>
    <frm:form action="${pageContext.request.contextPath}/LotGiay/create" modelAttribute="lotGiay" method="POST" enctype="multipart/form-data">
        <div class="form-group">
            <label>Tên lót giày</label>
            <frm:input path="tenLotGiay" class="form-control"/>
            <frm:errors class="text-danger" element="span" path="tenLotGiay"/>
        </div>

        <div class="form-group">
            <label>Ghi Chú</label>
            <frm:input path="ghiChu" class="form-control"/>
            <frm:errors class="text-danger" element="span" path="ghiChu"/>
        </div>

        <div class="form-group">
            <label>Ngày tạo</label>
            <frm:input type="date" path="ngayTao" class="form-control" readonly ="true"/>
            <frm:errors class="text-danger" element="span" path="ngayTao"/>
        </div>

        <div class="form-group">
            <label>Ngày sửa</label>
            <frm:input type="date" path="ngaySua" class="form-control" readonly="true"/>
            <frm:errors class="text-danger" element="span" path="ngaySua"/>
        </div>

        <div class="form-group">
            <label>Trạng thái</label>
            <div class="radio-group">
                <div class="form-check">
                    <frm:radiobutton cssClass="form-check-input" path="trangThai" value="1" id="trangThai1" checked="true"/>
                    <label class="form-check-label" for="trangThai1">Còn</label>
                </div>
                <div class="form-check">
                    <frm:radiobutton cssClass="form-check-input" path="trangThai" value="0" id="trangThai0"/>
                    <label class="form-check-label" for="trangThai0">Hết</label>
                </div>
            </div>
        </div>

        <button type="submit" class="btn btn-success w-100" onclick="if (!confirm('Bạn chắc chắn muốn thêm không ?')){return false;}else{return true;}">
            <i class="fas fa-plus"></i> Thêm Lót Giày
        </button>
    </frm:form>
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
</script>
</body>
</html>