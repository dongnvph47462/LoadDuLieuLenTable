package com.example.demo.BanHang.repository;

import com.example.demo.BanHang.Model.KichThuoc;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface KichThuocRepository extends JpaRepository<KichThuoc, Integer> {
    List<KichThuoc> findByMa(String ma);
}
