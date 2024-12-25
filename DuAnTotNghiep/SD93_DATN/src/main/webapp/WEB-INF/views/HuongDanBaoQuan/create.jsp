<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hướng dẫn bảo quản</title>
    <style>
        body {
            background-color: #f4f4f4;
            font-family: 'Roboto', sans-serif;
            color: #333;
            line-height: 1.6;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        }

        h3 {
            text-align: center;
            margin-bottom: 30px;
            font-size: 24px;
            font-weight: 700;
            color: #0056b3;
        }

        h1 {
            text-align: center;
            color: #444;
            margin: 30px 0;
            font-size: 20px;
        }

        label {
            font-weight: 600;
            margin-bottom: 8px;
            display: block;
            color: #555;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
            margin-bottom: 20px;
        }

        .form-check {
            margin-bottom: 10px;
        }

        .form-check-label {
            font-size: 14px;
            margin-left: 5px;
            color: #555;
        }

        .btn-primary {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            text-transform: uppercase;
            font-weight: 600;
            transition: background-color 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .text-danger {
            font-size: 12px;
            color: #e74c3c;
        }

        .radio-group {
            display: flex;
            gap: 20px;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<%@ include file="../templates/Admin/Layouts/GiayTheThao/_HeaderGiayTheThao.jsp" %>
<div class="container">
    <h1>Thêm hướng dẫn bảo quản</h1>
    <frm:form
            modelAttribute="huongDanBaoQuan"
            action="${pageContext.request.contextPath}/HuongDanBaoQuan/create"
            method="POST"
            enctype="multipart/form-data">
        <div class="mb-3">
            <label for="tenHuongDanBaoQuan">Tên hướng dẫn bảo quản:</label>
            <frm:input path="tenHuongDanBaoQuan" cssClass="form-control" placeholder="Nhập tên"/>
            <frm:errors path="tenHuongDanBaoQuan" cssClass="text-danger"/>
            <small class="text-danger">${checkHuongDanBaoQuanNotNull}</small>
            <small class="text-danger">${checkHuongDanBaoQuanHopLe}</small>
        </div>
        <div class="mb-3">
            <label for="ghiChu">Ghi chú:</label>
            <frm:input path="ghiChu" cssClass="form-control" placeholder="Nhập ghi chú"/>
        </div>
        <div class="mb-3">
            <label for="ngayTao">Ngày tạo:</label>
            <frm:input path="ngayTao" cssClass="form-control" type="date" readonly="true"/>
        </div>
        <div class="mb-3">
            <label for="ngaySua">Ngày sửa:</label>
            <frm:input path="ngaySua" cssClass="form-control" type="date" readonly="true"/>
        </div>
        <div class="mb-3">
            <label for="trangThai">Trạng thái:</label>
            <div class="radio-group">
                <div class="form-check">
                    <frm:radiobutton path="trangThai" value="1" id="trangThai1" cssClass="form-check-input"/>
                    <label class="form-check-label" for="trangThai1">Đã Kích Hoạt</label>
                </div>
                <div class="form-check">
                    <frm:radiobutton path="trangThai" value="0" id="trangThai0" cssClass="form-check-input"/>
                    <label class="form-check-label" for="trangThai0">Chưa Kích Hoạt</label>
                </div>
            </div>
        </div>

        <button type="submit" class="btn btn-success w-100">
            <i class="fas fa-plus"></i>  Thêm Hướng Dẫn Bảo Quản
        </button>
<%--        <button type="submit" onclick="return confirm('Bạn chắc chắn muốn thêm không?')" class="btn btn-primary">Thêm Hướng Dẫn Bảo Quản</button>--%>
<%--        <small class="text-success d-block mt-3">${message}</small>--%>
    </frm:form>
</div>
<%@ include file="../templates/Admin/Layouts/GiayTheThao/_FooterGiayTheThao.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
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

</body>
</html>
