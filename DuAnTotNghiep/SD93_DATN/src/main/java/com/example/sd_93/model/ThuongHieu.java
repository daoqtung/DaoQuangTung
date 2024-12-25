package com.example.sd_93.model;


import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.*;

import java.util.UUID;

@AllArgsConstructor
@NoArgsConstructor
@Builder
@Getter
@Setter
@Entity
@Table(name = "ThuongHieu")
public class ThuongHieu {

    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(name = "Id_ThuongHieu")
    private UUID id;

    @Column(name = "tenThuongHieu")
    @NotBlank(message = "Tên thương hiệu không được để trống")
    @Size (max = 100, message = "Tên thương hiệu không được vượt quá 100 ký tự")
    private String tenThuongHieu;

    @Column(name = "ghiChu")
    @NotBlank(message = "Tên thương hiệu không được để trống")
    @Size (max = 255, message = "Ghi chú không được vượt quá 255 ký tự")
    private String ghiChu;

    @Column(name = "ngayTao")
    private String ngayTao;

    @Column(name = "ngaySua")
    private String ngaySua;

    @Column(name = "trangThai")
    private int trangThai;

}
