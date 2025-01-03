package com.example.sd_93.service.admin;

import com.example.sd_93.model.HuongDanBaoQuan;
import com.example.sd_93.repository.SanPham.AllGiayTheThao.HuongDanBaoQuanRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HuongDanBaoQuanService {

    @Autowired
    private HuongDanBaoQuanRepository huongDanBaoQuanRepository;

    public List<HuongDanBaoQuan> findHuongDanBaoQuan(String tenHuongDanBaoQuan) {
        if (tenHuongDanBaoQuan != null) {
            return huongDanBaoQuanRepository.findByTenHuongDanBaoQuanContaining(tenHuongDanBaoQuan);
        } else {
            return huongDanBaoQuanRepository.findAll();
        }
    }

}
