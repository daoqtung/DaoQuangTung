<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<!doctype html>
<html lang="en">
<head>
    <title>Đế giày</title>
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
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
            font-weight: 700; /* Đậm hơn */
            color: #495057;
            margin-bottom: 5px;
            display: block; /* Làm cho label chiếm hết chiều rộng */
            font-size: 16px; /* Tăng kích thước chữ cho label */
        }

        .form-control {
            border-radius: 5px;
            border: 1px solid #ced4da;
            padding: 10px; /* Tăng padding trong form control */
            box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1);
            font-size: 16px; /* Tăng kích thước chữ trong input */
            transition: border-color 0.2s, box-shadow 0.2s; /* Thêm hiệu ứng chuyển tiếp */
            width: 100%; /* Make form control full width */
        }

        .form-control:focus {
            border-color: #80bdff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5); /* Hiệu ứng khi focus */
            outline: none; /* Bỏ outline mặc định */
        }

        .btn-success {
            background-color: #28a745;
            border: none;
            padding: 12px 20px;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s ease;
            cursor: pointer;
            width: 100%; /* Đảm bảo nút chiếm toàn bộ chiều rộng */
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%@ include file="../templates/Admin/Layouts/GiayTheThao/_HeaderGiayTheThao.jsp" %>
<div class="container">
    <h1 style=" text-align: center; color: red">
        Đế giày
    </h1>
    <div>
        <sf:form
                modelAttribute="dg"
                action="${action}"
                method="POST"
                enctype="multipart/form-data"
        >
            <div class="form-group">
                <label class="label">Tên đế giày</label>
                <sf:input path="tenDeGiay" cssClass="form-control ten"/>
                <div>
                    <span id="error-ten" style="color: red; margin-top: 10px"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="label">Ghi chú </label>
                <sf:input path="ghiChu" cssClass="form-control ghiChu"/>
                <div>
                    <span id="error-GhiChu" style="color: red; margin-top: 10px"></span>
                </div>
            </div>

            <div class="form-group">
                <label class="label">Ngày tạo</label>
                <sf:input path="ngayTao" cssClass="form-control" readonly="true"/>
            </div>
            <div class="form-group">
                <label class="label">Ngày sửa</label>
                <sf:input path="ngaySua" cssClass="form-control"  readonly="true"/>
            </div>

            <div class="form-group">
                <label class="label">Trạng thái</label>
                <div style="margin-top: 8px">
                    <div class="form-check form-check-inline">
                        <sf:radiobutton class="form-check-input" path="trangThai" id="inlineRadio1" value="1"></sf:radiobutton>
                        <label class="form-check-label" for="inlineRadio1">Còn</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <sf:radiobutton class="form-check-input" path="trangThai" id="inlineRadio2" value="0"></sf:radiobutton>
                        <label class="form-check-label" for="inlineRadio2">Hết</label>
                    </div>
                </div>
            </div>
            <br>
            <p style="text-align: right">
                <button type="submit" class="btn btn-success update">
                    <i class="fas fa-save"></i> Cập nhật Đế Giày
                </button>
            </p>

        </sf:form>
    </div>
</div>
<%@ include file="../templates/Admin/Layouts/GiayTheThao/_FooterGiayTheThao.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script>
    var ghiChu = document.getElementsByClassName('ghiChu')[0];
    var ten = document.getElementsByClassName('ten')[0];
    function focusInput(){

        ghiChu.addEventListener("focus", function() {
            document.getElementById('error-GhiChu').innerHTML="";
        });
        ten.addEventListener("focus", function() {
            document.getElementById('error-ten').innerHTML="";
        });

    }
    focusInput();

    function validateInput() {
        var btnSua = document.getElementsByClassName('update')[0];
        btnSua.onclick = function (){
            var ten = document.getElementsByClassName('ten')[0].value.trim().length;
            var ghiChu = document.getElementsByClassName('ghiChu')[0].value.trim().length;

            var confirmUpdate = confirm('Bạn chắc chắn muốn sửa không?');

            if (!confirmUpdate) {
                console.log('ten: ', ten);
                console.log('ghi chu: ', ghiChu);

                return false;
            } else {
                if(ten<1&&ghiChu<1){
                    document.getElementById('error-GhiChu').innerHTML = "Không để trống";
                    document.getElementById('error-ten').innerHTML = "Không để trống";
                    return false;
                }
                if(ten<1){
                    document.getElementById('error-ten').innerHTML = "Không để trống";
                    return false;
                }
                if(ghiChu<1){
                    document.getElementById('error-GhiChu').innerHTML = "Không để trống";
                    return false;
                }
                return true;
            }
        }

    }
    validateInput();
</script>
</body>
</html>