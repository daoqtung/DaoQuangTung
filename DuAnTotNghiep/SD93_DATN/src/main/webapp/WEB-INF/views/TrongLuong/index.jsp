<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Trọng Lượng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <style>
        body {
            background-color: #f8f9fa;
            color: #212529;
            font-family: Arial, sans-serif;
        }
        h1 {
            margin-bottom: 30px;
            color: #dc3545;
            text-align: center;
        }
        .container {
            background: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .form-inline {
            margin-bottom: 20px;
        }
        .btn-custom {
            margin-right: 10px;
        }
        .table th, .table td {
            vertical-align: middle;
        }

        th {
            width: 5%; /* Set width for STT */
        }

        th:nth-child(1) {
            width: 4%; /* Set width for Tên đinh tán giày */
        }

        th:nth-child(2) {
            width: 150px; /* Set width for Tên đinh tán giày */
        }

        th:nth-child(3){
            width: 13%; /* Set width for Ghi Chú */
        }

        th:nth-child(4) {
            width: 13%; /* Set width for Trạng thái */
        }

        th:nth-child(5) {
            width: 350px; /* Set width for Chức Năng */

        }th:nth-child(6) {
            width: 5%; /* Set width for Chức Năng */

        }th:nth-child(7) {
            width: 20%; /* Set width for Chức Năng */
        }

        .btn-custom {
            margin-right: 10px;
            padding: 10px 15px; /* Đảm bảo kích thước nút đồng nhất */
            font-size: 1rem; /* Kích thước chữ */
        }
        .pagination {
            margin: 20px 0;
        }
        .pagination .page-item .page-link {
            color: #007bff;
            border: 1px solid #dee2e6;
        }
        .pagination .page-item:hover .page-link,
        .pagination .page-item.active .page-link {
            color: #ffffff;
            background-color: #007bff;
            border-color: #007bff;
        }
    </style>
</head>
<body>
<%@ include file="../templates/Admin/Layouts/GiayTheThao/_HeaderGiayTheThao.jsp" %>

<div class="container">
    <h1>Quản Lý Trọng Lượng</h1>
<br>
<br>
    <div class="d-flex justify-content-between mb-3">

        <div class="form-inline mb-3">
            <form action="/trongLuong/search" method="get" class="form-inline">
                <input type="text" class="form-control mr-2" name="tenTrongLuong" placeholder="Tìm kiếm trọng lượng" style="width: 300px;">
                <button type="submit" class="btn btn-info"><i class="fas fa-search"></i> Tìm kiếm</button>
            </form>
        </div>
    <div class="form-inline">
        <form action="/trongLuong/filter" class="form-inline">
            <select id="trangThai" name="trangThai" class="form-control mr-2" style="width: 200px;">
                <option value="2">Tất cả trạng thái</option>
                <option value="1">Đã kích hoạt</option>
                <option value="0">Chưa kích hoạt</option>
            </select>
            <button class="btn btn-success">Lọc</button>
        </form>
    </div>
    </div>

    <div class="text-left mb-3">
        <a href="/trongLuong/view-add" class="btn btn-primary btn-custom">
            <i class="fas fa-plus"></i> Thêm Mới Trọng Lượng
        </a>
    </div>

    <table class="table table-striped table-bordered">
        <thead class="thead-dark">
        <tr>
            <th>STT</th>
            <th>Tên Trọng Lượng</th>
            <th>Ngày Tạo</th>
            <th>Ngày Sửa</th>
            <th>Ghi Chú</th>
            <th>Trạng Thái</th>
            <th>Chức Năng</th>
        </tr>
        </thead>
        <tbody>
        <c:if test="${f:length(list)==0}">
            <tr>
                <td colspan="7" class="text-center">Không có dữ liệu</td>
            </tr>
        </c:if>
        <c:if test="${f:length(list)!=0}">
            <c:forEach items="${list}" var="d" varStatus="i">
                <tr>
                    <th>${i.index + 1}</th>
                    <td>${d.tenTrongLuong}</td>
                    <td>${d.ngayTao}</td>
                    <td>${d.ngaySua}</td>
                    <td>${d.ghiChu}</td>
                    <td>${d.trangThai == 1 ? "✔" : "✖"}</td>
                    <td>
                        <a href="/trongLuong/detail/${d.id}" class="btn btn-info btn-custom-size">
                            <i class="fas fa-edit"></i> Sửa Trọng Lượng
                        </a>
                    </td>

                </tr>
            </c:forEach>
        </c:if>
        </tbody>
    </table>
</div>

<div class="d-flex justify-content-center">
    <nav aria-label="Page navigation example">
        <ul class="pagination">
            <li class="page-item">
                <c:if test="${next > 0}">
                    <a class="page-link" href="/trongLuong/hien-thi?num=${next - 1}">
                        <span aria-hidden="true">&laquo; Trước</span>
                    </a>
                </c:if>
            </li>
            <c:forEach begin="1" end="${totalPages}" varStatus="loop">
                <li class="page-item ${loop.index == next + 1 ? 'active' : ''}">
                    <a class="page-link" href="/trongLuong/hien-thi?num=${loop.index - 1}">${loop.index}</a>
                </li>
            </c:forEach>
            <li class="page-item">
                <c:if test="${!trongLuongPage.last && next < totalPages - 1}">
                    <a class="page-link" href="/trongLuong/hien-thi?num=${next + 1}">
                        <span aria-hidden="true">Sau &raquo;</span>
                    </a>
                </c:if>
            </li>
        </ul>
    </nav>
</div>

<%@ include file="../templates/Admin/Layouts/GiayTheThao/_FooterGiayTheThao.jsp" %>
</body>
</html>