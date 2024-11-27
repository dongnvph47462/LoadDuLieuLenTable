package com.example.demo.BanHang.repository;

import com.example.demo.BanHang.Model.SanPhamChiTiet;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SanPhamChiTietRepository extends JpaRepository<SanPhamChiTiet, Integer> {
    List<SanPhamChiTiet> findByMaSpctContaining(String maSpct); // Tìm kiếm theo mã sản phẩm chi tiết

    // Tìm kiếm sản phẩm chi tiết theo trạng thái
    List<SanPhamChiTiet> findByTrangThai(Boolean trangThai);

    // Tìm sản phẩm chi tiết theo ID sản phẩm
    List<SanPhamChiTiet> findByIdSanPham(Integer idSanPham);
}
