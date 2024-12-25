<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Thương Hiệu</title>
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
        .search-container {
            text-align: center;
            margin-bottom: 20px;
        }
        #search-input {
            width: 400px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            padding: 10px;
        }
        #search-submit {
            border: none;
            background-color: #007bff;
            color: white;
            border-radius: 5px;
            padding: 10px 15px;
            margin-left: 10px;
        }
        #search-submit:hover {
            background-color: #0056b3;
        }
        .table th, .table td {
            vertical-align: middle;
        }

        th {
            width: 5%; /* Set width for STT */
        }

        th:nth-child(1) {
            width: 5%; /* Set width for STT */
        }

        th:nth-child(2) {
            width: 20%; /* Set width for Tên thương hiệu */
        }

        th:nth-child(3) {
            width: 20%; /* Set width for Ghi chú */
        }

        th:nth-child(4) {
            width: 15%; /* Set width for Ngày tạo */
        }

        th:nth-child(5) {
            width: 15%; /* Set width for Ngày sửa */
        }

        th:nth-child(6) {
            width: 5%; /* Set width for Trạng thái */
        }

        th:nth-child(7) {
            width: 20%; /* Set width for Chức năng */
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
        .btn-custom {
            margin-right: 10px;
        }
        .notes-column {
            max-width: 250px; /* Set a maximum width for the notes column */
            word-wrap: break-word; /* Allow long words to be broken and wrap onto the next line */
            white-space: normal; /* Allow text to wrap normally */
        }
    </style>
</head>
<body>
<%@ include file="../templates/Admin/Layouts/GiayTheThao/_HeaderGiayTheThao.jsp" %>

<div class="container">
    <h1 style="color: red;">Quản Lý Thương Hiệu</h1>
    <br>
    <br>
    <div class="search-form">
        <form action="${pageContext.request.contextPath}/thuongHieu/search" class="form-inline">
            <input type="text" class="form-control mr-2" placeholder="Nhập tên thương hiệu..." name="name" id="search-input" style="width: 300px;">
            <button type="submit" class="btn btn-info">
                <i class="fas fa-search"></i> Tìm kiếm
            </button>
        </form>
    </div>
    <br>
    <div class="text-left mb-3">
        <a href="${pageContext.request.contextPath}/thuongHieu/create" class="btn btn-primary btn-custom">
            <i class="fas fa-plus"></i> Thêm Mới Thương Hiệu
        </a>
    </div>

    <table class="table table-striped table-bordered">
        <thead class="thead-dark">
        <tr>
            <th scope="col">STT</th>
            <th scope="col">Tên</th>
            <th scope="col" class="notes-column">Ghi chú</th> <!-- Add class here -->
            <th scope="col">Ngày tạo</th>
            <th scope="col">Ngày sửa</th>
            <th scope="col">Trạng thái</th>
            <th scope="col">Chức năng</th>
        </tr>
        </thead>
        <tbody>
        <c:if test="${f:length(list.getContent())==0}">
            <tr>
                <td colspan="7">Không có dữ liệu</td>
            </tr>
        </c:if>
        <c:if test="${f:length(list.getContent())!=0}">
            <c:forEach items="${list.getContent()}" var="th" varStatus="status">
                <tr>
                    <td>${status.index+1}</td>
                    <td style="text-align: left">${th.tenThuongHieu}</td>
                    <td class="notes-column">${th.ghiChu}</td> <!-- Add class here -->
                    <td>${th.ngayTao}</td>
                    <td>${th.ngaySua}</td>
                    <td>${th.trangThai==1 ? "✔" : "✖"}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/thuongHieu/edit/${th.id}" class="btn btn-info btn-custom-size">
                            <i class="fas fa-edit"></i> Sửa Thương Hiệu
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </c:if>
        </tbody>
    </table>

    <c:if test="${list.getTotalPages()<=0}">
        <span></span>
    </c:if>
    <c:if test="${list.getTotalPages()>0}">
        <ul class="pagination" style="margin-left: 500px">
            <c:forEach begin="1" end="${list.getTotalPages()}" varStatus="status">
                <li class="page-item">
                    <a href="${pageContext.request.contextPath}/thuongHieu?page=${status.index}" class="page-link">${status.index}</a>
                </li>
            </c:forEach>
        </ul>
    </c:if>
</div>

<%@ include file="../templates/Admin/Layouts/GiayTheThao/_FooterGiayTheThao.jsp" %>
</body>
</html>