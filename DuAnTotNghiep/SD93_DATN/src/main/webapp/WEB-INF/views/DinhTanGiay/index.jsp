<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Quản Lý Đinh Tán Giày</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    <style>
        body {
            background-color: #f8f9fa;
            color: #212529;
            font-family: Arial, sans-serif;
        }

        h1 {
            margin-bottom: 30px;
            color: #343a40;
            text-align: center;
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

        th {
            width: 5%; /* Set width for STT */
        }

        th:nth-child(1) {
            width: 4%; /* Set width for Tên đinh tán giày */
        }

        th:nth-child(2) {
            width: 13%; /* Set width for Tên đinh tán giày */
        }

        th:nth-child(3) {
            width: 10%; /* Set width for Ghi Chú */
        }

        th:nth-child(4) {
            width: 10%; /* Set width for Trạng thái */
        }

        th:nth-child(5) {
            width: 300px; /* Set width for Chức Năng */
        }

        th:nth-child(6) {
            width: 5%; /* Set width for Trạng thái */
        }

        th:nth-child(7) {
            width: 15%; /* Set width for Chức Năng */
            height: 15%;
        }

        td:nth-child(5) { /* Target the "Ghi chú" column */
            max-width: 150px; /* Set a maximum width */
            overflow: hidden; /* Hide overflow */
            text-overflow: ellipsis; /* Add ellipsis for overflow text */
            white-space: normal; /* Allow text wrapping */
        }

        .pagination {
            margin: 20px 0;
        }

        .pagination .page-item .page-link {
            color: #343a40; /* Default text color */
            border-color: #dee2e6;
        }

        .pagination .page-item:hover .page-link,
        .pagination .page-item.active .page-link {
            color: #ffffff; /* Text color on hover or active */
            background-color: #007bff; /* Background color on hover or active */
            border-color: #007bff; /* Border color on hover or active */
        }
    </style>
</head>
<body>
<%@ include file="../templates/Admin/Layouts/GiayTheThao/_HeaderGiayTheThao.jsp" %>

<div class="container">
    <h1 class="text-center">Quản Lý Đinh Tán Giày</h1>
    <br>
    <br>
    <div class="d-flex justify-content-between mb-3">

        <div class="search-form">
            <form action="${pageContext.request.contextPath}/dinhTanGiay/search" method="get" class="form-inline">
                <input type="text" class="form-control mr-2" name="tenDinhTanGiay" placeholder="Tìm kiếm đinh tán giày"
                       style="width: 300px;">
                <button type="submit" class="btn btn-info"><i class="fas fa-search"></i> Tìm kiếm</button>
            </form>
        </div>
        <div class="filter-form mb-3">
            <form action="${pageContext.request.contextPath}/dinhTanGiay/filter" method="get" class="form-inline">
                <select id="trangThai" name="trangThai" class="form-control mr-2">
                    <option value="2">Tất cả trạng thái</option>
                    <option value="1">Đã kích hoạt</option>
                    <option value="0">Chưa kích hoạt</option>
                </select>
                <button class="btn btn-success"><i class="fas fa-filter"></i> Lọc</button>
            </form>
        </div>

    </div>


    <div class="text-left">
        <a href="${pageContext.request.contextPath}/dinhTanGiay/view-add" class="btn btn-primary btn-custom">
            <i class="fas fa-plus"></i> Thêm Mới Đinh Tán Giày
        </a>
    </div>

    <div>
        <table class="table table-striped table-bordered">
            <thead class="thead-dark">
            <tr>
                <th>STT</th>
                <th>Tên đinh tán giày</th>
                <th>Ngày tạo</th>
                <th>Ngày sửa</th>
                <th>Ghi Chú</th>
                <th>Trạng thái</th>
                <th>Chức Năng</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${list}" var="d" varStatus="i">
                <tr>
                    <th>${i.index + 1}</th>
                    <td>${d.tenDinhTanGiay}</td>
                    <td>${d.ngayTao}</td>
                    <td>${d.ngaySua}</td>
                    <td>${d.ghiChu}</td>
                    <td>${d.trangThai == 1 ? "✔" : "✖"}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/dinhTanGiay/detail/${d.id}"
                           class="btn btn-info btn-custom">
                            <i class="fas fa-edit"></i> Sửa Đinh Tán Giày
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
                <li class="page-item ${next == 0 ? 'disabled' : ''}">
                    <c:if test="${next > 0}">
                        <a class="page-link"
                           href="${pageContext.request.contextPath}/dinhTanGiay/hien-thi?num=${next - 1}"
                           aria-label="Previous">
                            <span aria-hidden="true">&laquo; Trước</span>
                        </a>
                    </c:if>
                </li>
                <c:forEach begin="1" end="${totalPages}" varStatus="loop">
                    <li class="page-item ${loop.index == next + 1 ? 'active' : ''}">
                        <a class="page-link"
                           href="${pageContext.request.contextPath}/dinhTanGiay/hien-thi?num=${loop.index - 1}">${loop.index}</a>
                    </li>
                </c:forEach>
                <li class="page-item ${next >= totalPages - 1 ? 'disabled' : ''}">
                    <c:if test="${!dtgPage.last && next < totalPages - 1}">
                        <a class="page-link"
                           href="${pageContext.request.contextPath}/dinhTanGiay/hien-thi?num=${next + 1}"
                           aria-label="Next">
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