package com.example.sd_93.service.GioHang;

import com.example.sd_93.model.GioHangChiTiet;

import java.util.UUID;

public interface GioHangChiTietImpl {

    void add(GioHangChiTiet gioHangChiTiet);

    GioHangChiTiet findById(UUID id);

    void update(UUID id, GioHangChiTiet update);

}
