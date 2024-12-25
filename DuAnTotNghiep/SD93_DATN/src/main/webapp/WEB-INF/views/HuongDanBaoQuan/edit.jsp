<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hướng Dẫn Bảo Quản</title>
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }

        .container {
            max-width: 600px; /* Tăng chiều rộng của container */
            background-color: #ffffff;
            padding: 16px; /* Tăng padding */
            border-radius: 6px;
            box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.15);
        }

        h1 {
            text-align: center;
            color: #343a40;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 16px;
        }

        .form-control {
            width: 100%; /* Đảm bảo ô input kéo dài hết chiều rộng */
            border-radius: 4px;
            border: 1px solid #ced4da;
            padding: 10px;
            font-size: 14px;
            box-sizing: border-box; /* Đảm bảo padding không làm thay đổi chiều rộng */
        }

        .btn-primary {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 14px;
            border-radius: 4px;
            width: 100%;
            cursor: pointer;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        label {
            font-weight: bold;
            color: #495057;
            margin-bottom: 6px;
            font-size: 14px;
        }

        .text-danger {
            font-size: 12px;
            color: red;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<%@ include file="../templates/Admin/Layouts/GiayTheThao/_HeaderGiayTheThao.jsp" %>
<div class="container">
    <h1 style=" text-align: center; color: red">Cập Nhật Hướng Dẫn Bảo Quản</h1>
    <br>
    <frm:form modelAttribute="huongDanBaoQuan" action="${pageContext.request.contextPath}/HuongDanBaoQuan/create" method="POST" enctype="multipart/form-data">
        <div class="form-group">
            <frm:hidden path="id" value="${huongDanBaoQuan.id}"/>
        </div>

        <div class="form-group">
            <label for="tenHuongDanBaoQuan">Tên Hướng Dẫn Bảo Quản:</label>
            <frm:input path="tenHuongDanBaoQuan" cssClass="form-control" placeholder="Nhập tên hướng dẫn" value=""/>
            <frm:errors path="tenHuongDanBaoQuan" cssClass="text-danger"/>
        </div>

        <div class="form-group">
            <label for="ghiChu">Ghi Chú:</label>
            <frm:input path="ghiChu" cssClass="form-control" placeholder="Nhập ghi chú" value=""/>
        </div>

        <div class="form-group">
            <label for="ngayTao">Ngày Tạo:</label>
            <frm:input path="ngayTao" cssClass="form-control" type="date" value="" readonly="true"/>
        </div>

        <div class="form-group">
            <label for="ngaySua">Ngày Sửa:</label>
            <frm:input path="ngaySua" cssClass="form-control" type="date" value="" readonly="true"/>
        </div>

        <div class="form-group">
            <label for="trangThai">Trạng Thái:</label>
            <frm:select path="trangThai" cssClass="form-control">
                <option value="1">Đã Kích Hoạt</option>
                <option value="0">Chưa Kích Hoạt</option>
            </frm:select>
        </div>

        <br>
        <button type="submit" class="btn btn-success w-100">
            <i class="fas fa-save"></i> Cập Nhật Hướng Dẫn Bảo Quản
        </button>        <label>${message}</label>
    </frm:form>
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
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
