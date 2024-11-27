package com.example.demo.BanHang.Model;

import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "khach_hang") // Tên bảng trong cơ sở dữ liệu
public class KhachHang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id; // Sử dụng Integer cho ID

    @Column(name = "ten")
    private String ten;

    @Column(name = "sdt")
    private String sdt;

    @Column(name = "ma_kh")
    private String maKh;

    @Column(name = "trang_thai")
    private Boolean trangThai;
}
