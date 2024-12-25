<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Quản Lý Đế Giày</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
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
        .search-container {
            margin-bottom: 20px;
        }
        #search-input {
            width: 300px;
            margin-right: 10px;
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

        th:nth-child(3){
            width: 300px; /* Set width for Ghi Chú */
        }

        th:nth-child(4) {
            width: 12%; /* Set width for Trạng thái */
        }

        th:nth-child(5) {
            width: 12%; /* Set width for Chức Năng */
        }
        th:nth-child(6) {
            width: 5%; /* Set width for Trạng thái */
        }

        th:nth-child(7) {
            width: 15%; /* Set width for Chức Năng */
        }
        .pagination {
            margin: 20px 0;
        }
        .pagination .page-item .page-link {
            color: #343a40;
            border-color: #dee2e6;
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
    <h1>Quản Lý Đế Giày</h1>
<br>
<br>
    <div class="d-flex justify-content-between mb-3">

        <div class="search-form">
            <form action="${pageContext.request.contextPath}/deGiay/search" method="get" class="form-inline">
                <input type="text" placeholder="Nhập tên đế giày. . ." name="name" id="search-input" class="form-control" />
                <button type="submit" class="btn btn-info"><i class="fa fa-search"></i> Tìm kiếm</button>
            </form>
        </div>
    </div>

    <div class="text-left">
        <a href="${pageContext.request.contextPath}/deGiay/create" class="btn btn-primary btn-custom">
            <i class="fa fa-plus"></i> Thêm Mới Đế Giày
        </a>
    </div>

    <table class="table table-striped table-bordered">
        <thead class="thead-dark">
        <tr>
            <th scope="col">STT</th>
            <th scope="col">Tên</th>
            <th scope="col">Ghi chú</th>
            <th scope="col">Ngày tạo</th>
            <th scope="col">Ngày sửa</th>
            <th scope="col">Trạng thái</th>
            <th scope="col">Chức năng</th>
        </tr>
        </thead>
        <tbody>
        <c:if test="${f:length(list.getContent())==0}">
            <tr><td colspan="7">Không có dữ liệu</td></tr>
        </c:if>
        <c:if test="${f:length(list.getContent())!=0}">
            <c:forEach items="${list.getContent()}" var="dg" varStatus="status">
                <tr>
                    <td>${status.index + 1}</td>
                    <td style="text-align: left">${dg.tenDeGiay}</td>
                    <td>${dg .ghiChu}</td>
                    <td>${dg.ngayTao}</td>
                    <td>${dg.ngaySua}</td>
                    <td>${dg.trangThai == 1 ? "✔" : "✖"}</td>
                    <td>
                        <a href="deGiay/edit/${dg.id}" class="btn btn-info">
                            <i class="fas fa-edit"></i> Sửa Đế Giày
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </c:if>
        </tbody>
    </table>

    <ul class="pagination justify-content-center">
        <li class="page-item ${list.getNumber() == 0 ? 'disabled' : ''}">
            <a class="page-link" href="${pageContext.request.contextPath}/deGiay?page=${list.getNumber()}" aria-label="Trước">
                <span aria-hidden="true">&laquo; Trước</span>
            </a>
        </li>
        <c:forEach begin="1" end="${list.getTotalPages()}" var="i">
            <li class="page-item ${i == list.getNumber() + 1 ? 'active' : ''}">
                <a href="${pageContext.request.contextPath}/deGiay?page=${i}" class="page-link">${i}</a>
            </li>
        </c:forEach>
        <li class="page-item ${list.getNumber() + 1 >= list.getTotalPages() ? 'disabled' : ''}">
            <a class="page-link" href="${pageContext.request.contextPath}/deGiay?page=${list.getNumber() + 2}" aria-label="Sau">
                <span aria-hidden="true">Sau &raquo;</span>
            </a>
        </li>
    </ul>
</div>

<%@ include file="../templates/Admin/Layouts/GiayTheThao/_FooterGiayTheThao.jsp" %>
</body>
</html>