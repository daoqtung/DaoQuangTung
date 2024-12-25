package com.example.sd_93.repository.SanPham.AllGiayTheThao;

import com.example.sd_93.model.CongDung;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface CongDungRepository extends JpaRepository<CongDung, UUID> {

    List<CongDung> findByTenCongDungContainingOrderById(String tenCongDung);

    List<CongDung> findByTenCongDungContainingAndTrangThaiOrderById(String tenCongDung, Integer trangThai);

}

