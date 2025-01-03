package com.example.sd_93.repository.SanPham.AllGiayTheThao;

import com.example.sd_93.model.ThuongHieu;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface ThuongHieuRepository extends JpaRepository<ThuongHieu, UUID> {

    Page<ThuongHieu> findByTenThuongHieuContaining(String ten, Pageable pageable);

}
