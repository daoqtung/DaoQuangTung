<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib
        prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f"
           uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib
        uri="http://www.springframework.org/tags/form" prefix="sf" %>


<html>
<head>
    <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Bán hàng tại quầy</title>
        <link
                href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
                rel="stylesheet"
                integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
                crossorigin="anonymous"
        />


        <link
                rel="stylesheet"
                href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css"
                integrity="sha384-b6lVK+yci+bfDmaY1u0zE8YYJt0TZxLEAFyYSLHId4xoVvsrQu3INevFKo+Xir8e"
                crossorigin="anonymous"
        />
        <style>
            .info {
                margin: 0 auto;
                height: auto;
                width: 1200px;
                border: 1px solid rgb(173, 172, 172);
                padding: 5px;
            }


            #listSP {
                margin-top: 20px;
                margin-bottom: 20px;
                height: auto;
                overflow: auto;


            }


            ::-webkit-scrollbar {
                width: 2px;
            }


            ::-webkit-scrollbar-thumb {
                background: #888;
            }


            #saleInvoice {
                width: 80%;
                margin: 0 auto;
            }

            .invoice-header {
                text-align: center;
                margin-bottom: 20px;
            }
            .invoice-details,
            .customer-details,
            .items-table,
            .totalstb {
                width: 100%;
                margin-bottom: 10px;
                text-align: right;
            }.invoice-details table,
             .customer-details table,
             .items-table table,
             .totalstb table {
                 width: 100%;
                 border-collapse: collapse;
             }
            .invoice-details td,
            .customer-details td,
            .items-table th,
            .items-table td{
                border: 1px solid #000;
                padding: 8px;
                text-align: left;
            }
            totalstb td{
                text-align: right;
                padding: 8px;
            }
            .signature {
                display: flex;
                justify-content: space-between;
                margin-top: 40px;
                margin-right: 30px;
                margin-left: 30px;
            }
            .signature div {
                text-align: center;
            }
            .items-table th {
                background-color: #d09999;
            }
        </style>
    </head>
<body>
<header class="p-3 mb-3 border-bottom">
    <div class="container">
        <div
                class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start"
        >
            <div class="image-container" style="flex-shrink: 0;">
                <img src="../../../../../../resources/img/banner/banner-img-admin.png" alt="Shoe Image" style="width: 70px">
            </div>
            <a
                    href="http://localhost:8080/BanHangTaiQuay"
                    class="d-flex align-items-center mb-2 mb-lg-0 text-dark text-decoration-none"
                    id="banner"
            >
                Easy-Shop
            </a>


            <div
                    class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0"
            >


            </div>


            <div class="dropdown text-end">
                <a
                        href="#"
                        class="d-block link-dark text-decoration-none dropdown-toggle"
                        id="dropdownUser1"
                        data-bs-toggle="dropdown"
                        aria-expanded="false"
                >
                    <img
                            src="https://github.com/mdo.png"
                            alt="mdo"
                            width="32"
                            height="32"
                            class="rounded-circle"
                    />
                </a>
                <ul
                        class="dropdown-menu text-small"
                        aria-labelledby="dropdownUser1"
                >
                    <li><a class="dropdown-item" href="#">Cài đặt</a></li>
                    <li><a class="dropdown-item" href="#">Hồ Sơ</a></li>
                    <li>
                        <hr class="dropdown-divider"/>
                    </li>
                    <li><a class="dropdown-item" href="#">Đăng xuất</a></li>
                </ul>
            </div>
        </div>
    </div>
</header>


<section>
    <div class="info">
        <div id="listSP">
            <div class="invoice-header">
                <img alt="Company Logo" height="100"
                     src="../../../../../../resources/img/banner/banner-img-admin.png"
                     width="100px" style="margin-bottom: 20px"/>
                <h1 style="color: red">
                    HÓA ĐƠN GIÁ TRỊ GIA TĂNG
                </h1>
                <h2>
                    VAT INVOICE
                </h2>
                <p style="text-align: right;margin-right: 50px">
                    Hà Nội, ngày 30 tháng 11 năm 2024
                </p>
            </div>
<br>
            <div class="invoice-details">
                <table class="table-hover">
                    <tr>
                        <td>
                            Cửa Hàng EASY SHOP
                        </td>
                        <td>
                            Mẫu số: 01GTKT0/001
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Mã số thuế: 0101243150
                        </td>
                        <td>
                            Ký hiệu: TS/20E
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Địa chỉ: Số 1, Phố Trịnh Văn Bô, Phường Phương Canh, Quận Nam Từ Liêm, Thành phố Hà Nội, Việt
                            Nam
                        </td>
                        <td>
                            Mã Hóa Đơn: ${hd.MaHD}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Điện thoại: ${userLog.soDienThoai}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Số tài khoản: 0398525912 tại Ngân hàng MB Bank, Hà Nội
                        </td>
                    </tr>
                </table>
            </div>
            <br>
            <div class="items-table">
                <table class="table table-hover table-bordered" style="text-align: center;">
                    <thead>
                    <tr>
                        <th scope="col">STT</th>
                        <th scope="col">Tên</th>
                        <th scope="col">Size</th>
                        <th scope="col">Màu sắc</th>
                        <th scope="col">Số lượng</th>
                        <th scope="col">Đơn giá</th>
                        <th scope="col">Tổng</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:if test="${f:length(list)!=0}">
                        <c:forEach items="${list}" var="hdct" varStatus="status">
                            <tr>
                                <td>${status.index+1}</td>
                                <td>${hdct.giayTheThaoChiTiet.giayTheThao.tenGiayTheThao}</td>
                                <td>${hdct.giayTheThaoChiTiet.size.size}</td>
                                <td>${hdct.giayTheThaoChiTiet.mauSac.tenMauSac}</td>
                                <td>${hdct.soLuong}</td>
                                <td>${hdct.donGia}</td>
                                <td>${hdct.soLuong*hdct.donGia}</td>
                            </tr>
                        </c:forEach>
                        <div class="totalstb">
                            <table>
                                <tr>
                                    <td style="text-align: right">
                                        Cộng tiền hàng:
                                    </td>
                                    <td id="total" style="text-align: right">${tt}</td>
                                </tr>
                                <tr>
                                    <td style="text-align: right">
                                        Phần trăm giảm:
                                    </td>
                                    <td id="ptg" style="text-align: right">0%</td>
                                </tr>
                                <tr>
                                    <td style="text-align: right">
                                        Số tiền giảm:
                                    </td>
                                    <td id="stg" style="text-align: right">0</td>
                                </tr>
                                <tr>
                                    <td style="text-align: right">Tiền thanh toán</td>
                                    <td id="ttt" style="text-align: right">${tt}</td>
                                </tr>
                            </table>
                        </div>
                    </c:if>
                    </tbody>
                </table>
                <div class="signature">
                    <div>
                        <p>
                            Người mua hàng
                        </p>
                        <p>
                            (Ký, ghi rõ họ tên)
                        </p>
                    </div>
                    <div>
                        <p>
                            Người bán hàng
                        </p>
                        <p>
                            (Ký, ghi rõ họ tên)
                        </p>
                        <p>
                            ${userLog.tenUser}
                        </p>
                    </div>
                </div>
            </div>



        </div>
        <div id="saleInvoice" style="margin-top: 20px">
            <div class="mb-3 row">
                <label class="col-sm-2 col-form-label">Chương trình giảm giá </label>
                <div class="col-sm-10">
                    <select class="form-select form-select" aria-label=".form-select example" id="ctggSelect"
                            onchange="showAlert()">
                        <option selected>Chương trình giảm giá</option>
                        <c:if test="${f:length(listCtgg)!=0}">
                            <c:forEach items="${listCtgg}" var="ctgg" varStatus="status">
                                <option value="${ctgg.id}">${ctgg.tenChuongTrinh}</option>
                            </c:forEach>


                        </c:if>
                    </select>
                </div>
            </div>


        </div>
        <form>
            <div style="margin: 0 auto; width: 80%;">
                <button class="btn btn-success" style="width:100%;" id="pay">Thanh toán</button>
            </div>
        </form>
        <div style="margin: 0 auto; width: 80%;">
            <a href="${pageContext.request.contextPath}/BanHangTaiQuay" class="btn btn-success" style="width:100%;">Quay
                lại</a>
        </div>
    </div>


</section>


<div class="container-fluid">
    <footer
            class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top"
    >
        <div class="col-md-4 d-flex align-items-center">
            <a
                    href="/"
                    class="mb-3 me-2 mb-md-0 text-body-secondary text-decoration-none lh-1"
            >
                <svg class="bi" width="30" height="24">
                    <use xlink:href="#bootstrap"></use>
                </svg>
            </a>
            <span class="mb-3 mb-md-0 text-body-secondary"
            >© 2023 Company, Inc</span
            >
        </div>


        <ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
            <li class="ms-3">
                <a class="text-body-secondary" href="#"
                ><i class="bi bi-twitter" width="24" height="24"></i
                ></a>
            </li>
            <li class="ms-3">
                <a class="text-body-secondary" href="#"
                ><i class="bi bi-instagram" width="24" height="24"></i
                ></a>
            </li>
            <li class="ms-3">
                <a class="text-body-secondary" href="#"
                ><i class="bi bi-facebook" width="24" height="24"></i
                ></a>
            </li>
        </ul>
    </footer>
</div>


<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"
></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.3.0/jspdf.umd.min.js"></script>
<!-- Js PDF Auto Table -->
<script src="https://cdn.jsdelivr.net/npm/jspdf-autotable@3/dist/jspdf.plugin.autotable.min.js"></script>
<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.6/dist/sweetalert2.all.min.js"></script>
<script>
    var totals = document.getElementById('total').innerText;
    var totalSale = totals;
    var idCTGGCTHD = '';
    var url = new URL(window.location.href);
    var pathName = url.pathname;
    var idHD = pathName.split('/').pop();


    function showAlert() {
        var selectedValue = document.getElementById("ctggSelect").value;


        var totalElement = document.getElementById('total');
        var total = parseInt(totalElement.innerText);


        var stgElement = document.getElementById('stg');


        var tttElement = document.getElementById('ttt');


        var ptgElement = document.getElementById('ptg');
        if (selectedValue != 'Chương trình giảm giá') {
            getCtggById(selectedValue, (data) => {
                idCTGGCTHD = data.id;
                var phanTramGiam = parseInt(data.phanTramGiam);
                var salePrice = totals - totals * phanTramGiam / 100;
                tttElement.innerText = salePrice;
                stgElement.innerText = parseInt(totals) - salePrice;
                ptgElement.innerText = "-" + phanTramGiam + "%";
                totalSale = salePrice;
                totalElement.innerText = salePrice;
            });
        } else {
            tttElement.innerText = 0 + "%";
            tttElement.innerText = totals;
            stgElement.innerText = 0;
            totalSale = totals;
            totalElement.innerText = totals;
        }


    }


    function getCtggById(id, callback) {
        fetch("http://localhost:8080/api/ctgg/" + id)
            .then(response => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                return response.json();
            })
            .then(callback)
            .catch(error => {
                console.error("Error: ", error);
            })
    }


    document.getElementById('pay').addEventListener('click', (event) => {
        event.preventDefault();
        pay(idHD)
    });


    function pay(id) {
        console.log('b');
        console.log(totalSale);
        if ((totalSale < totals)) {
            console.log('a');
            createCtggctHD(id, idCTGGCTHD, totals);
        }
        fetch("http://localhost:8080/api/hd/pay/" + id, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify([totalSale]),
        })
            .then(response => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                return response.text();
            })
            .then((datas) => {




                if (datas == "Thanh toán thành công") {


                    printInvoice();
                    // window.location.href = "${pageContext.request.contextPath}/BanHangTaiQuay";
                    Swal.fire({


                        icon: 'success',
                        title: '<span style="font-size: 24px;">Thanh toán thành công !</span>',
                        showConfirmButton: false, // Ẩn nút OK
                        timer: 1500, // Thời gian hiển thị thông báo (miligiây)


                    }).then(() => {




                        window.location.href = '${pageContext.request.contextPath}/BanHangTaiQuay';


                    });


                } else {
                    alert(datas);
                }


            })
            .catch(error => {
                console.error('Error during POST request:', error);
            });


    }






    function createCtggctHD(id, idctgg, tt) {


        fetch("http://localhost:8080/api/ctgg/create/" + id, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify([idCTGGCTHD, tt]),
        })
            .then(response => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                return response.text();
            })
            .then(data => console.log('c'))
            .catch(error => {
                console.error('Error during POST request:', error);
            });
    }


    //
    // function printInvoice() {
    //     var element = document.getElementById('listSP');
    //
    //     // Sử dụng html2canvas để chuyển đổi phần tử HTML thành ảnh
    //     html2canvas(element, {
    //         scale: 2, // Tăng chất lượng ảnh để nội dung rõ nét hơn
    //     }).then(function (canvas) {
    //         // Khởi tạo jsPDF
    //         var pdf = new jspdf.jsPDF('p', 'mm', 'a4');
    //
    //         // Lấy chiều rộng và chiều cao của PDF (A4: 210mm x 297mm)
    //         var pdfWidth = 210;
    //         var pdfHeight = 297;
    //
    //         // Lấy chiều rộng và chiều cao của canvas
    //         var canvasWidth = canvas.width;
    //         var canvasHeight = canvas.height;
    //
    //         // Tính tỷ lệ để căn giữa nội dung trong PDF theo chiều ngang
    //         var aspectRatio = canvasWidth / canvasHeight;
    //         var imgWidth = pdfWidth - 20; // Cách lề trái/phải 10mm
    //         var imgHeight = imgWidth / aspectRatio;
    //
    //         // Tính toán vị trí ngang và đặt nội dung lên đầu trang
    //         var xOffset = (pdfWidth - imgWidth) / 2; // Căn giữa theo chiều ngang
    //         var yOffset = 10; // Cách lề trên 10mm
    //
    //         // Chuyển đổi canvas thành ảnh và thêm vào PDF
    //         var imgData = canvas.toDataURL('image/png');
    //         pdf.addImage(imgData, 'PNG', xOffset, yOffset, imgWidth, imgHeight);
    //
    //
    //
    //         // Thiết lập màu chữ mờ và kích thước chữ
    //         pdf.setTextColor(150, 150, 150); // Màu xám (mờ)
    //         pdf.setFont("times", "normal"); // Chọn font chữ và kiểu chữ
    //         pdf.setFontSize(10); // Kích thước chữ 10
    //
    //         // Thêm văn bản vào PDF
    //         pdf.text(footerText, footerX, footerY);
    //
    //
    //         // Lưu file PDF
    //         pdf.save('HoaDon_EasyShop.pdf');
    //     });
    //  }
    function printInvoice() {
        var element = document.getElementById('listSP');


        // Sử dụng html2canvas để chuyển đổi phần tử HTML thành ảnh
        html2canvas(element, {
            scale: 2, // Tăng chất lượng ảnh để nội dung rõ nét hơn
        }).then(function (canvas) {
            // Khởi tạo jsPDF
            var pdf = new jspdf.jsPDF('p', 'mm', 'a4');


            // Lấy chiều rộng và chiều cao của PDF (A4: 210mm x 297mm)
            var pdfWidth = 210;
            var pdfHeight = 297;


            // Lấy chiều rộng và chiều cao của canvas
            var canvasWidth = canvas.width;
            var canvasHeight = canvas.height;


            // Tính tỷ lệ để căn giữa nội dung trong PDF theo chiều ngang
            var aspectRatio = canvasWidth / canvasHeight;
            var imgWidth = pdfWidth - 20; // Cách lề trái/phải 10mm
            var imgHeight = imgWidth / aspectRatio;


            // Tính toán vị trí ngang và đặt nội dung lên đầu trang
            var xOffset = (pdfWidth - imgWidth) / 2; // Căn giữa theo chiều ngang
            var yOffset = 10; // Cách lề trên 10mm


            // Chuyển đổi canvas thành ảnh và thêm vào PDF
            var imgData = canvas.toDataURL('image/png');
            pdf.addImage(imgData, 'PNG', xOffset, yOffset, imgWidth, imgHeight);


            // Xác định vị trí chữ "EasyShop"
            var easyShopX = pdfWidth - 60; // Đặt tọa độ x gần lề phải (cách lề phải 10mm)
            var easyShopY = yOffset + imgHeight + 10; // Tọa độ y (cách dưới bảng 10mm)


            // Thêm dòng chữ "EasyShop" mờ
            pdf.setTextColor(150, 150, 150); // Màu xám mờ
            pdf.setFont("times", "italic"); // Font chữ nghiêng
            pdf.setFontSize(10); // Cỡ chữ 10
            pdf.text('EasyShop', easyShopX, easyShopY);


            // Lưu file PDF
            pdf.save('HoaDon_EasyShop.pdf');
        });
    }




</script>
</body>
</html>
