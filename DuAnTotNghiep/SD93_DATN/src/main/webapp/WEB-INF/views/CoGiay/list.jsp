<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <title>Quản Lý Cổ Giày</title>

    <style>
        body {
            background-color: #f8f9fa;
            color: #212529;
            font-family: Arial, sans-serif;
        }

        h1 {
            margin-bottom: 30px;
            color: #343a40;
        }

        .container {
            background: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .btn-custom {
            margin-right: 10px;
        }

        table {
            margin-top: 20px;
        }

        th, td {
            text-align: center;
            vertical-align: middle;
        }

        .pagination {
            margin: 20px 0;
        }

        .pagination .page-item .page-link {
            color: #343a40; /* Màu chữ mặc định */
            border-color: #dee2e6;
        }

        .pagination .page-item:hover .page-link,
        .pagination .page-item.active .page-link {
            color: #ffffff; /* Màu chữ khi hover hoặc active */
            background-color: #007bff; /* Màu nền khi hover hoặc active */
            border-color: #007bff; /* Viền khi hover hoặc active */
        }

        .text-danger {
            font-size: 11px; /* Giảm kích thước chữ */
            margin-top: 2px; /* Giảm khoảng cách */
        }
    </style>
</head>
<body>
<%@ include file="../templates/Admin/Layouts/GiayTheThao/_HeaderGiayTheThao.jsp" %>

<div class="container">
    <h1 class="text-center">Quản Lý Cổ Giày</h1>
    <br>
    <br>
    <div class="d-flex justify-content-between mb-3">
        <!-- Form Tìm kiếm -->
        <div class="search-form">
            <form action="/CoGiay/search" method="get" class="form-inline">
                <input type="text" class="form-control mr-2" name="tenCoGiay" placeholder="Tìm kiếm cổ giày" style="width: 300px;">
                <button type="submit" class="btn btn-info"><i class="fas fa-search"></i> Tìm kiếm</button>
            </form>
        </div>
    </div>


    <div class="text-left mb-3">
        <a href="${pageContext.request.contextPath}/CoGiay/view-create" class="btn btn-primary btn-custom">
            <i class="fas fa-plus"></i> Thêm Cổ Giày
        </a>
    </div>

    <div>
        <table class="table table-striped table-bordered">
            <thead class="thead-dark">
            <tr>
                <th>STT</th>
                <th>Tên cổ giày</th>
                <th>Ghi chú</th>
                <th>Trạng thái</th>
                <th>Chức Năng</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="cg" items="${listPage}" varStatus="i">
                <tr>
                    <th>${i.index + 1}</th>
                    <td>${cg.tenCoGiay}</td>
                    <td>${cg.ghiChu}</td>
                    <td>${cg.trangThai == 1 ? "✔" : "✖"}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/CoGiay/edit/${cg.id}" class="btn btn-info btn-custom-size">
                            <i class="fas fa-edit"></i> Sửa Cổ Giày
                        </a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

    <div class="d-flex justify-content-center">
        <nav aria-label="Page navigation example">
            <ul class="pagination">
                <!-- Nút "Trước" -->
                <li class="page-item">
                    <c:if test="${currentPage > 1}">
                        <a class="page-link" href="/CoGiay/list?pageNum=${currentPage - 1}&trangThai=${trangThai}">
                            <span aria-hidden="true">&laquo; Trước</span>
                        </a>
                    </c:if>
                </li>

                <!-- Các số trang -->
                <c:forEach var="pageNumber" items="${pageNumbers}">
                    <li class="page-item ${pageNumber == currentPage ? 'active' : ''}">
                        <a class="page-link" href="/CoGiay/list?pageNum=${pageNumber}&trangThai=${trangThai}">${pageNumber}</a>
                    </li>
                </c:forEach>

                <!-- Nút "Sau" -->
                <li class="page-item">
                    <c:if test="${currentPage < totalPage}">
                        <a class="page-link" href="/CoGiay/list?pageNum=${currentPage + 1}&trangThai=${trangThai}">
                            <span aria-hidden="true">Sau &raquo;</span>
                        </a>
                    </c:if>
                </li>
            </ul>
        </nav>
    </div>

</div>

<%@ include file="../templates/Admin/Layouts/GiayTheThao/_FooterGiayTheThao.jsp" %>
</body>
</html>