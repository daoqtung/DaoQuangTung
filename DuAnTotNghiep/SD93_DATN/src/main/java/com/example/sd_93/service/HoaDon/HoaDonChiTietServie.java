package com.example.sd_93.service.HoaDon;

import com.example.sd_93.model.GiayTheThaoChiTiet;
import com.example.sd_93.model.HoaDon;
import com.example.sd_93.model.HoaDonChiTiet;
import com.example.sd_93.repository.HoaDon.HoaDonChiTietRepository;
import com.example.sd_93.repository.HoaDon.HoaDonRepository;
import com.example.sd_93.repository.SanPham.GiayTheThao.GiayTheThaoChiTietRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

@Service
public class HoaDonChiTietServie {

    @Autowired
    private HoaDonChiTietRepository repo;

    @Autowired
    private HoaDonRepository hdRepo;

    @Autowired
    private GiayTheThaoChiTietRepository giayTheThaoChiTietRepository;


    //Todo code bán hàng tại quầy
    public List<HoaDonChiTiet> getListByID(UUID id) {
        HoaDon hd = hdRepo.findById(id).get();
        return repo.findAllByHoaDon(hd);
    }

    public HoaDonChiTiet updateHDCT(int soLuong, UUID id){
        HoaDonChiTiet newHDCT = this.repo.findById(id).get();
        GiayTheThaoChiTiet gttct = giayTheThaoChiTietRepository.findById(newHDCT.getGiayTheThaoChiTiet().getId()).get();
        int sl = Integer.parseInt(gttct.getSoLuong());
        if((sl-soLuong)<0){
            HoaDonChiTiet newHDCT2 = new HoaDonChiTiet();
            newHDCT2.setSoLuong(""+sl);
            return newHDCT2;
        }
        newHDCT.setSoLuong(String.valueOf(soLuong));
        newHDCT.setTrangThai(2);
        this.repo.save(newHDCT);
        return newHDCT;
    }

    public boolean checkSoLuongGTTCT(UUID id, int soLuong){
        HoaDonChiTiet newHDCT = this.repo.findById(id).get();
        GiayTheThaoChiTiet gttct = giayTheThaoChiTietRepository.findById(newHDCT.getGiayTheThaoChiTiet().getId()).get();
        int sl = Integer.parseInt(gttct.getSoLuong());
        return (sl-soLuong)<0;
    }

    public void removeHDCTByID(UUID id){
        HoaDonChiTiet newHDCT = this.repo.findById(id).get();
        this.repo.delete(newHDCT);
    }

    public HoaDonChiTiet addHDCT(HoaDonChiTiet hdct){

        HoaDon hd = hdRepo.findById(hdct.getHoaDon().getId()).get();
        hdct.setHoaDon(hd);
        GiayTheThaoChiTiet gttct = giayTheThaoChiTietRepository.findById(hdct.getGiayTheThaoChiTiet().getId()).get();
        hdct.setGiayTheThaoChiTiet(gttct);
        int sl = Integer.parseInt(gttct.getSoLuong());
        int check = repo.countByHoaDonAndGiayTheThaoChiTiet(hd, gttct);
        System.out.println("Số lượng của sản phẩm: "+sl);

        if(check!=0) {
            HoaDonChiTiet newHDCT = repo.findByHoaDonAndGiayTheThaoChiTiet(hd, gttct);
            int soLuong = Integer.parseInt(newHDCT.getSoLuong())+Integer.parseInt(hdct.getSoLuong());
            if((sl-soLuong)<0){
                System.out.println("Số lượng sau khi trừ: "+(soLuong-sl));
                return null;
            }
            newHDCT.setSoLuong(String.valueOf(soLuong));
            newHDCT.setTrangThai(2);
            this.repo.save(newHDCT);
            return newHDCT;
        }

        if((sl-Integer.parseInt(hdct.getSoLuong()))<0){
            System.out.println("Số lượng: " + (1-sl));
            return null;

        }
        System.out.println("Số lượng: "+hdct.getSoLuong());
        hdct.setSoLuong(hdct.getSoLuong());
        hdct.setGhiChu("N/A");
        hdct.setNgayTao(LocalDateTime.now());
        hdct.setNgaySua(LocalDateTime.now());
        hdct.setTrangThai(1);
        this.repo.save(hdct);
        return hdct;
    }



}
