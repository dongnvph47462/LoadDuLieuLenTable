package com.example.demo.BanHang.repository;

import com.example.demo.BanHang.Model.MauSac;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MauSacRepository extends JpaRepository<MauSac, String> {
    List<MauSac> findByMa(String ma);
}
