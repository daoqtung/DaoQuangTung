package com.example.sd_93.config;

import com.example.sd_93.filter.LogGinInterceptor;
import com.example.sd_93.filter.adminInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


@Configuration
public class WebMVCConfig implements WebMvcConfigurer {

    //Cấu hình cho file ảnh
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry
                .addResourceHandler("/resources/**")
                .addResourceLocations("/resources/");
        registry
                .addResourceHandler("/upload/**")
                .addResourceLocations("/upload/");
    }


    //Todo code quên mật khẩu khách hàng



    //Todo code phân quyền cho bên Admin

    @Autowired
    LogGinInterceptor logGinInterceptor;

    @Autowired
    adminInterceptor adminInterceptor;

    public void addInterceptors(InterceptorRegistry registry){

        // Đối với tất cả người dùng (Member và Admin)
        registry.addInterceptor(logGinInterceptor)
                .addPathPatterns(
                        "/TrangChu/Admin/home",
                        "/BanHangTaiQuay", // Cho phép cả Member và Admin
                        "/GiayTheThao/listGiayTheThao",
                        "/KhachHang/list",
                        "/PhieuGiaoHang/listPhieuGiaoHang",
                        "/Admin/xacNhanDonHangKhachHangAll",
                        "/Admin/xacNhanDonHangKhachHang",
                        "/Admin/XacNhanHoaDonDangDongGoi",
                        "/Admin/HoaDon/XacNhanHoaDonKhachHangDangGiao",
                        "/Admin/HoaDon/XacNhanHoaDonGiaoHangThanhCongHoanThanh",
                        "/TrangChu/ThongTinCaNhan/Admin"
                );

        // Các trang dành riêng cho Admin
        registry.addInterceptor(adminInterceptor)
                .addPathPatterns(
                        "/GiayTheThao/create",
                        "/GiayTheThao/update/{id}",
                        "/GiayTheThao/exportPDF",
                        "/GiayTheThao/exportExcal",
                        "/user/view-add",
                        "/user/hien-thi",
                        "/user/detail/{id}",
                        "/MauSac/list",
                        "/MauSac/view-create",
                        "/MauSac/edit/{id}",
                        "/MauSac/search",
                        "/MauSac/delete/{id}",
                        "/Size/hien-thi",
                        "/Size/view-add",
                        "/Size/delete/{id}",
                        "/Size/detail/{id}",
                        "/chuongTrinhGiamGia/sanPham",
                        "/chuongTrinhGiamGia/sanPham/createForm",
                        "/chuongTrinhGiamGia/hoaDon",
                        "/chuongTrinhGiamGia/hoaDon/createForm",
                        "/chuongTrinhGiamGia/hoaDon/history",
                        "/thongKeChuanData",
                        "/CoGiay/list",
                        "/CoGiay/view-create",
                        "/CoGiay/edit/{id}",
                        "/CoGiay/search",
                        "/CoGiay/delete/{id}",
                        "/kieuBuoc/hien-thi",
                        "/kieuBuoc/view-add",
                        "/kieuBuoc/search",
                        "/kieuBuoc/detail/{id}",
                        "/chatLieu/hien-thi",
                        "/chatLieu/view-add",
                        "/chatLieu/detail/{id}",
                        "/congDung/hien-thi",
                        "/congDung/view-add",
                        "/congDung/detail/{id}",
                        "/dayGiay/hien-thi",
                        "/dayGiay/view-add",
                        "/dayGiay/detail/{id}",
                        "/deGiay",
                        "/deGiay/create",
                        "/deGiay/edit/{id}",
                        "/dinhTanGiay/hien-thi",
                        "/dinhTanGiay/view-add",
                        "/dinhTanGiay/detail/{id}",
                        "/thuongHieu",
                        "/thuongHieu/create",
                        "/thuongHieu/edit/{id}",
                        "/trongLuong/hien-thi",
                        "/trongLuong/view-add",
                        "/trongLuong/detail/{id}",
                        "/form/hien-thi",
                        "/form/view-add",
                        "/form/detail/{id}",
                        "/HuongDanBaoQuan/list",
                        "/HuongDanBaoQuan/edit/{id}",
                        "/HuongDanBaoQuan/delete/{id}",
                        "/LotGiay/list",
                        "/LotGiay/create",
                        "/LotGiay/edit/{id}",
                        "/LotGiay/delete/{id}",
                        "/Admin/HoaDon/DonHangBiHuy"
                );

        // Không cần thiết phải thêm interceptor cho Member nữa, vì Admin cũng có quyền truy cập trang /BanHangTaiQuay.
        // Tất cả người dùng đã được kiểm tra trong logGinInterceptor
    }




}
