<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Lót Giày</title>
    <%--    <link rel="icon" href="img/background_title.jpg" type="image/x-icon">--%>
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<%@ include file="../templates/Admin/Layouts/GiayTheThao/_HeaderGiayTheThao.jsp" %>
<div class="container">
    <h3 style="text-align: center;">Edit lót giày</h3>
    <div>
        <h1 style="text-align: center; color: black; margin-top: 30px; margin-bottom: 60px">Edit dữ liệu bảng lót giày</h1>
        <frm:form
                modelAttribute="lotGiay"
                action="${pageContext.request.contextPath}/LotGiay/create"
                method="POST"
                enctype="multipart/form-data">
            <div class="form-group">
                <frm:hidden path="id" value="${lotGiay.id}"/>
            </div>
            <div class="row">
                <div class="col-6">
                    <label style="margin-left: 30px">Tên lót giày: </label>
                    <frm:input path="tenLotGiay" cssStyle="width: 300px;" placeholder="text" value=""/>
                    <frm:errors path="tenLotGiay"></frm:errors>
                    <label class="">${checkLotGiayNotNull}</label>
                    <label>${checkLotGiayHopLe}</label>
                </div>
                <div class="col-6">
                    <label style="margin-left: 150px; margin-right: 30px; margin-bottom: 30px">Ghi chú: </label>
                    <frm:input path="ghiChu" cssStyle="width: 200px;"  value=""/>
                </div>
                <div class="col-6">
                    <label style="margin-left: 150px; margin-right: 66px; margin-bottom: 30px">Ngày tạo: </label>
                    <frm:input path="ngayTao" cssStyle="width: 200px;" type="date" value=""/>
                </div>
                <div class="col-6">
                    <label style="margin-left: 150px; margin-right: 66px; margin-bottom: 30px">Ngày sửa: </label>
                    <frm:input path="ngaySua" cssStyle="width: 200px;" type="date" value=""/>
                </div>
                <div class="col-6">
                    <label style="margin-left: 27px; margin-right: 25px; margin-bottom: 50px">Trạng thái</label>
                    <frm:select path="trangThai" cssStyle="width: 200px;">
                        <option value="1">
                            Còn
                        </option>
                        <option value="0">
                            Hết
                        </option>
                    </frm:select>
                </div>
            </div>
            <button type="submit" onclick="if (!confirm('Bạn chắc chắn muốn edit không ?')){return false;}else{return true;}" style="margin-left: 400px; margin-bottom: 190px" class="btn btn-primary">Cập Nhật</button>
            <label>${message}</label>
        </frm:form>
    </div>
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