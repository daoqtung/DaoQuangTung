package com.example.sd_93.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import jakarta.validation.constraints.NotNull;
import lombok.*;

import java.util.UUID;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
@Entity
@Table(name = "KieuBuoc")
public class KieuBuoc {

    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(name = "Id_KieuBuoc")
    private UUID id;

    @NotBlank(message = "Tên kiểu buộc không được để trống")
    @Size(max = 50, message = "Tên kiểu buộc không được vượt quá 50 ký tự")
    @Column(name = "tenKieuBuoc")
    private String tenKieuBuoc;

    @NotBlank(message = "Ghi chú không được để trống")
    @Size(max = 100, message = "Ghi chú không được vượt quá 100 ký tự")
    @Column(name = "ghiChu")
    private String ghiChu;

    @NotBlank(message = "Ngày tạo không được để trống")
    @Column(name = "ngayTao")
    private String ngayTao;

    @NotBlank(message = "Ngày sửa không được để trống")
    @Column(name = "ngaySua")
    private String ngaySua;

    @NotNull(message = "Trạng thái không được để trống")
    @Column(name = "trangThai")
    private Integer trangThai; // Sử dụng Integer thay vì int để có thể kiểm tra null
}