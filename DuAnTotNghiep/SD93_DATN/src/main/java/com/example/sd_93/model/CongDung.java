package com.example.sd_93.model;

import java.util.UUID;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Builder
@Getter
@Setter
@Entity
@Table(name = "CongDung")
public class CongDung {

    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(name = "Id_CongDung")
    private UUID id;

    @NotBlank(message = "Tên công dụng không được để trống")
    @Size(max = 50, message = "Tên công dụng không được vượt quá 50 ký tự")
    @Column(name = "tenCongDung")
    private String tenCongDung;

    @NotBlank(message = "Ghi chú không được để trống")
    @Size(max = 100, message = "Ghi chú không được vượt quá 100 ký tự")
    @Column(name = "ghiChu")
    private String ghiChu;

    @NotBlank(message = "Ngày tạo không được để trống")
    @Pattern(regexp = "^\\d{4}-\\d{2}-\\d{2}$", message = "Ngày tạo phải có định dạng yyyy-MM-dd")
    @Column(name = "ngayTao")
    private String ngayTao; // Giữ nguyên kiểu String

    @NotBlank(message = "Ngày sửa không được để trống")
    @Pattern(regexp = "^\\d{4}-\\d{2}-\\d{2}$", message = "Ngày sửa phải có định dạng yyyy-MM-dd")
    @Column(name = "ngaySua")
    private String ngaySua; // Giữ nguyên kiểu String

    @NotNull(message = "Trạng thái không được để trống")
    @Column(name = "trangThai")
    private Integer trangThai; // Sử dụng Integer thay vì int để có thể kiểm tra null
}