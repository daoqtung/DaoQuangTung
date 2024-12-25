<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Danh Sách Màu Sắc</title>
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
            width: 5%; /* Set width for Tên đinh tán giày */
        }

        th:nth-child(2) {
            width: 10%; /* Set width for Tên đinh tán giày */
        }

        th:nth-child(3){
            width: 300px; /* Set width for Ghi Chú */
        }

        th:nth-child(4) {
            width: 7%; /* Set width for Trạng thái */
        }

        th:nth-child(5) {
            width: 20px; /* Set width for Chức Năng */
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
    <h3>Danh Sách Màu Sắc</h3>
    <br>
<br>

    <div class="text-left mb-3">
        <a href="${pageContext.request.contextPath}/MauSac/view-create" class="btn btn-primary btn-custom">
            <i class="fas fa-plus "></i> Thêm màu sắc
        </a>
    </div>

    <table class="table table-striped table-bordered">
        <thead class="thead-dark">
        <tr>
            <th scope="col">STT</th>
            <th scope="col">Tên màu sắc</th>
            <th scope="col">Ghi chú</th>
            <th scope="col">Trạng thái</th>
            <th scope="col">Chức năng</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="ms" items="${listPage}" varStatus="i">
            <tr class="product-item" data-tenMauSac="${ms.tenMauSac}" data-trangThai="${ms.trangThai}">
                <th scope="row">${i.index + 1}</th>
                <td>${ms.tenMauSac}</td>
                <td>${ms.ghiChu}</td>
                <td>${ms.trangThai == 0 ? "✖" : "✔"}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/MauSac/edit/${ms.id}">
                        <button class="btn btn-info">
                        <i class="fas fa-edit"></i> Sửa Màu Sắc
                        </button>
                    </a>
                </td>

            </tr>
        </c:forEach>
        </tbody>
    </table>

    <div id="noResults" class="alert alert-warning" style="display: none;">
        <h5 style="text-align: center;">Không có dữ liệu phù hợp với bộ lọc hiện tại!</h5>
    </div>

    <div class="row">
        <div class="col-12">
            <ul class="pagination justify-content-center">
                <c:choose>
                    <c:when test="${currentPage > 1}">
                        <li class="page-item">

                            <a href="/MauSac/list?pageNum=${currentPage - 1}" class="page-link">
                                <span aria-hidden="true">&laquo; Trước</span>
                            </a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="page-item disabled">
                            <span class="page-link" aria-hidden="true">&laquo; Trước</span>

                        </li>
                    </c:otherwise>
                </c:choose>

                <c:forEach var="pageNumber" items="${pageNumbers}">
                    <li class="page-item ${pageNumber == currentPage ? 'active' : ''}">
                        <a href="/MauSac/list?pageNum=${pageNumber}" class="page-link">${pageNumber}</a>
                    </li>
                </c:forEach>

                <c:if test="${currentPage < totalPage}">
                    <li class="page-item">
                        <a href="/MauSac/list?pageNum=${currentPage + 1}" class="page-link">
                            <span aria-hidden="true">Sau &raquo;</span>
                        </a>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</div>

<%@ include file="../templates/Admin/Layouts/GiayTheThao/_FooterGiayTheThao.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    function filterProducts() {
        var tenMauSac = document.getElementById('tenMauSac').value.toLowerCase();
        var trangThai = document.getElementById('trangThai').value;
        var products = document.getElementsByClassName('product-item');
        var anyResults = false;

        for (var i = 0; i < products.length; i++) {
            var product = products[i];
            var productTenMauSac = product.getAttribute('data-tenMauSac').toLowerCase();
            var productTrangThai = product.getAttribute('data-trangThai');

            if ((trangThai === '' || productTrangThai === trangThai) && productTenMauSac.includes(tenMauSac)) {
                product.classList .remove('hide-row');
                anyResults = true;
            } else {
                product.classList.add('hide-row');
            }
        }

        var noResultsMessage = document.getElementById('noResults');
        if (anyResults) {
            noResultsMessage.style.display = 'none';
        } else {
            noResultsMessage.style.display = 'block';
        }
    }

    document.getElementById('tenMauSac').addEventListener('input', filterProducts);
    document.getElementById('trangThai').addEventListener('change', filterProducts);
    filterProducts();
</script>
</body>
</html>