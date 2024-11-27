package com.example.demo.BanHang.Model;

import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "mau_sac") // Tên bảng trong cơ sở dữ liệu
public class MauSac {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String id; // Nếu sử dụng String, hãy đảm bảo nó có kiểu dữ liệu tương ứng trong CSDL

    @Column(name = "ma")
    private String ma;

    @Column(name = "ten")
    private String ten;

    @Column(name = "trang_thai")
    private Boolean trangThai;
}
