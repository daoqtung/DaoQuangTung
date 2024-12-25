package com.example.sd_93.service.ViTien.Impl;

import com.example.sd_93.model.ViTien;

import java.util.UUID;

public interface viTienServiceImpl {

    void add(ViTien viTien);

    void update(UUID id, ViTien updateViTien);

    ViTien findByIdKhachHang(UUID id);

}
