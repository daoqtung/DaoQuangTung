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
@Table(name = "Form")
public class Form{

    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(name = "Id_Form")
    private UUID id;

    @NotBlank(message = "Tên kiểu dáng không được để trống")
    @Size(min = 3, max = 50, message = "Tên kiểu dáng phải từ 3 đến 50 ký tự")
    private String tenForm;

    @NotBlank(message = "Ghi chú không được để trống")
    @Size(max = 255, message = "Ghi chú không được vượt quá 255 ký tự")
    private String ghiChu;

    @NotBlank(message = "Không được để trống")
    @Column(name = "ngayTao")
    private String ngayTao;

    @NotBlank(message = "Không được để trống")
    @Column(name = "ngaySua")
    private String ngaySua;

    @Column(name = "trangThai")
    private int trangThai;

}
