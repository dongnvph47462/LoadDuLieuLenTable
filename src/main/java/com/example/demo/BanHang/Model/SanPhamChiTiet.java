package com.example.demo.BanHang.Model;

import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "san_pham_chi_tiet") // Tên bảng trong cơ sở dữ liệu
public class SanPhamChiTiet {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id; // ID tự động tăng

    @Column(name = "ma_spct", nullable = false)
    private String maSpct; // Mã sản phẩm chi tiết

    @Column(name = "id_kich_thuoc", nullable = false)
    private Integer idKichThuoc; // ID kích thước

    @Column(name = "id_mau_sac", nullable = false)
    private Integer idMauSac; // ID màu sắc

    @Column(name = "id_san_pham", nullable = false)
    private Integer idSanPham; // ID sản phẩm

    @Column(name = "so_luong", nullable = false)
    private Integer soLuong; // Số lượng

    @Column(name = "don_gia", nullable = false)
    private Double donGia; // Đơn giá

    @Column(name = "trang_thai", nullable = false)
    private Boolean trangThai; // Trạng thái của sản phẩm chi tiết
}
