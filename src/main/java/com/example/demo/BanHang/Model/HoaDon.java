package com.example.demo.BanHang.Model;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;
import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "hoa_don") // Tên bảng trong cơ sở dữ liệu
public class HoaDon {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id; // Sử dụng Integer cho ID

    @Column(name = "id_nv")
    private Integer idNv; // ID nhân viên

    @Column(name = "id_kh")
    private Integer idKh; // ID khách hàng

    @Column(name = "ngay_mua_hang")
    private LocalDate ngayMuaHang; // Ngày mua hàng

    @Column(name = "trang_thai")
    private Boolean trangThai; // Trạng thái hóa đơn
}
