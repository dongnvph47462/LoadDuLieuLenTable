package com.example.demo.BanHang.repository;

import com.example.demo.BanHang.Model.HoaDonChiTiet;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface HoaDonChiTietRepository extends JpaRepository<HoaDonChiTiet, Integer> {
    List<HoaDonChiTiet> findByIdHoaDon(Integer idHoaDon); // Tìm kiếm theo ID hóa đơn
}
