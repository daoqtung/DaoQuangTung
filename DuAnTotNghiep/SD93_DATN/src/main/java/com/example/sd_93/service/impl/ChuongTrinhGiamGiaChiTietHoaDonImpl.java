package com.example.sd_93.service.impl;

import com.example.sd_93.model.ChuongTrinhGiamGiaChiTietHoaDon;
import com.example.sd_93.model.ChuongTrinhGiamGiaHoaDon;

import java.util.List;

public interface ChuongTrinhGiamGiaChiTietHoaDonImpl {

    public List<ChuongTrinhGiamGiaChiTietHoaDon> getById(ChuongTrinhGiamGiaHoaDon ctggHD);
    public List<ChuongTrinhGiamGiaChiTietHoaDon> getAllByTrangThaiHD();

}
