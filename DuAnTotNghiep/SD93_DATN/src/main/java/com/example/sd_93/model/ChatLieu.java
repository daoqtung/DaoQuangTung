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
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
@Entity
@Table(name = "ChatLieu")
public class ChatLieu {

    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(name = "Id_ChatLieu")
    private UUID id;

    @NotBlank(message = "Tên chất liệu không được để trống")
    @Size(max = 50, message = "Tên chất liệu không được vượt quá 50 ký tự")
    @Column(name = "tenChatLieu")
    private String tenChatLieu;

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