package com.example.demo.BanHang.Model;

import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "hoa_don_chi_tiet") // Tên bảng trong cơ sở dữ liệu
public class HoaDonChiTiet {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id; // ID tự động tăng

    @Column(name = "id_hoa_don", nullable = false)
    private Integer idHoaDon; // ID hóa đơn

    @Column(name = "id_spct", nullable = false)
    private Integer idSpct; // ID sản phẩm chi tiết

    @Column(name = "so_luong", nullable = false)
    private Integer soLuong; // Số lượng sản phẩm

    @Column(name = "don_gia", nullable = false)
    private Double donGia; // Đơn giá của sản phẩm

    @Column(name = "trang_thai", nullable = false)
    private Boolean trangThai; // Trạng thái của chi tiết hóa đơn
}
