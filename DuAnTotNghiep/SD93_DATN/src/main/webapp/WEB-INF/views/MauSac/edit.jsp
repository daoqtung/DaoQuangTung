<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Chỉnh Sửa Màu Sắc Giày</title>
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
            margin-top: 50px; /* Canh giữa và tạo khoảng cách trên */
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
        .radio-group {
            display: flex;
            align-items: center;
        }

        label {
            font-weight: bold;
            color: #495057;
            font-size: 16px; /* Tăng kích thước chữ cho label */
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
    <h1 style="color: red;">Chỉnh Sửa Màu Sắc Giày</h1>
    <br>
    <div>
        <form:form action="${pageContext.request.contextPath}/MauSac/update" modelAttribute="mauSac" enctype="multipart/form-data">
            <div class="form-group">
                <frm:hidden path="id" value="${mauSac.id}"/>
            </div>
            <div class="form-group">
                <label>Tên Màu Sắc</label>
                <form:input path="tenMauSac" class="form-control" />
                <span id="error-tenMauSac" class="text-danger"></span> <!-- Error message for Tên Màu Sắc -->
                <form:errors class="text-danger" element="span" path="tenMauSac"/>
            </div>

            <div class="form-group">
                <label>Ghi Chú</label>
                <form:input path="ghiChu" class="form-control" />
                <span id="error-GhiChu" class="text-danger"></span> <!-- Error message for Ghi Chú -->
                <form:errors class="text-danger" element="span" path="ghiChu"/>
            </div>

            <div class="form-group">
                <label>Trạng Thái</label>
                <div class="radio-group">
                    <div class="form-check">
                        <form:radiobutton path="trangThai" value="1" class="form-check-input" id="active" checked="true"/>
                        <label class="form-check-label" for="active">Đã Kích Hoạt</label>
                    </div>
                    <div class="form-check">
                        <form:radiobutton path="trangThai" value="0" class="form-check-input" id="inactive"/>
                        <label class="form-check-label" for="inactive">Chưa Kích Hoạt</label>
                    </div>
                </div>
            </div>
            <br>
            <button type="submit" class="btn btn-success w-100" onclick="return confirm('Bạn chắc chắn muốn chỉnh sửa không?');">
                <i class="fas fa-edit"></i> Cập Nhật Màu Sắc
            </button>
            <label class="text-danger">${message}</label>
        </form:form>
    </div>
</div>
<%@ include file="../templates/Admin/Layouts/GiayTheThao/_FooterGiayTheThao.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
<script>
    function validateInput() {
        const tenMauSacInput = document.querySelector('input[name="tenMauSac"]');
        const ghiChuInput = document.querySelector('input[name="ghiChu"]');
        const errorTenMauSac = document.getElementById('error-tenMauSac');
        const errorGhiChu = document.getElementById('error-GhiChu');

        document.querySelector('button[type="submit"]').addEventListener('click', function (event) {
            let isValid = true;

            const tenMauSacValue = tenMauSacInput.value.trim();
            const ghiChuValue = ghiChuInput.value.trim();

            errorTenMauSac.innerHTML = "";
            errorGhiChu.innerHTML = "";

            // Validate Tên Màu Sắc
            if (tenMauSacValue.length < 1) {
                errorTenMauSac.innerHTML = "Tên màu sắc không được để trống.";
                isValid = false;
            } else if (tenMauSacValue.length < 3 || tenMauSacValue.length > 50) {
                errorTenMauSac.innerHTML = "Tên màu sắc phải có độ dài từ 3 đến 50 ký tự.";
                isValid = false;
            }

            // Validate Ghi Chú
            if (ghiChuValue.length < 1) {
                errorGhiChu.innerHTML = "Ghi chú không được để trống.";
                isValid = false;
            } else if (ghiChuValue.length > 100) {
                errorGhiChu.innerHTML = "Ghi chú không được dài quá 100 ký tự.";
                isValid = false;
            }

            if (!isValid) {
                event.preventDefault(); // Prevent form submission if validation fails
            }
        });
    }

    window.onload = validateInput; // Call validateInput when the page loads
</script>

</body>
</html>