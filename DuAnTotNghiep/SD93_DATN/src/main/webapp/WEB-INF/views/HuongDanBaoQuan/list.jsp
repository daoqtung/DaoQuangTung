<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Quản Lý Hướng Dẫn Bảo Quản</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <style>
        body {
            background-color: #f8f9fa;
            color: #212529;
            font-family: Arial, sans-serif;
        }
        h3 {
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
        .btn-custom-size {
            font-size: 0.875rem; /* Kích thước chữ */
            padding: 0.5rem 1rem; /* Padding */
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
            width: 350px; /* Set width for Ghi Chú */
        }

        th:nth-child(4) {
            width: 11%; /* Set width for Trạng thái */
        }

        th:nth-child(5) {
            width: 11%; /* Set width for Chức Năng */
        }
        th:nth-child(6) {
            width: 5%; /* Set width for Trạng thái */
        }

        th:nth-child(7) {
            width: 17%; /* Set width for Chức Năng */
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
    </style>
</head>
<body>
<%@ include file="../templates/Admin/Layouts/GiayTheThao/_HeaderGiayTheThao.jsp" %>

<div class="container">
    <h3>Danh Sách Hướng Dẫn Bảo Quản</h3>

    <br>
    <br>
        <div class="text-left mb-3">
            <a href="${pageContext.request.contextPath}/HuongDanBaoQuan/create" class="btn btn-primary">
                <i class="fas fa-plus"></i> Thêm Hướng Dẫn
            </a>
        </div>


    <table class="table table-striped table-bordered">
        <thead class="thead-dark">
        <tr>
            <th scope="col">STT</th>
            <th scope="col">Tên Hướng Dẫn</th>
            <th scope="col">Ghi Chú</th>
            <th scope="col">Ngày Tạo</th>
            <th scope="col">Ngày Sửa</th>
            <th scope="col">Trạng Thái</th>
            <th scope="col">Chức Năng</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="hdbq" items="${listPage}" varStatus="i">
            <tr>
                <th scope="row">${i.index + 1}</th>
                <td>${hdbq.tenHuongDanBaoQuan}</td>
                <td>${hdbq.ghiChu}</td>
                <td>${hdbq.ngayTao}</td>
                <td>${hdbq.ngaySua}</td>
                <td>${hdbq.trangThai == 1 ? "✔" : "✖"}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/HuongDanBaoQuan/edit/${hdbq.id}" class="btn btn-info btn-custom-size">
                        <i class="fas fa-edit"></i> Sửa Hướng Dẫn
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div id="noResults" class="alert alert-warning" style="display: none;margin-top: 10px">
        <h5 style="text-align: center;height: 60px;margin-top: 40px">Không có dữ liệu phù hợp với bộ lọc hiện tại!</h5>
    </div>

    <div class="d-flex justify-content-center">
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <li class="page-item ${currentPage == 1 ? 'disabled' : ''}">
                    <a class="page-link" href="${pageContext.request.contextPath}/HuongDanBaoQuan/list?pageNum=${currentPage - 1}" aria-label="Previous">
                        <span aria-hidden="true">&laquo; Trước</span>
                    </a>
                </li>
                <c:forEach begin="1" end="${totalPage}" var="i">
                    <li class="page-item ${i == currentPage ? 'active' : ''}">
                        <a class="page-link" href="${pageContext.request.contextPath}/HuongDanBaoQuan/list?pageNum=${i}">${i}</a>
                    </li>
                </c:forEach>
                <li class="page-item ${currentPage == totalPage ? 'disabled' : ''}">
                    <a class="page-link" href="${pageContext.request.contextPath}/HuongDanBaoQuan/list?pageNum=${currentPage + 1}" aria-label="Next">
                        <span aria-hidden="true">Sau &raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</div>

<%@ include file="../templates/Admin/Layouts/GiayTheThao/_FooterGiayTheThao.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>
</html>