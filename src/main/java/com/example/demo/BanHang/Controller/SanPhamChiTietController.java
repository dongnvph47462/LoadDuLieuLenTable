package com.example.demo.BanHang.Controller;

import com.example.demo.BanHang.Model.SanPhamChiTiet;
import com.example.demo.BanHang.repository.SanPhamChiTietRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/sanphamchitiet")
public class SanPhamChiTietController {

    @Autowired
    private SanPhamChiTietRepository sanPhamChiTietRepository;

    @GetMapping("/hien-thi")
    public String hienThi(Model model) {
        List<SanPhamChiTiet> listSanPhamChiTiet = sanPhamChiTietRepository.findAll();
        model.addAttribute("listSanPhamChiTiet", listSanPhamChiTiet);
        return "sanphamchitiet/hien-thi"; // Đường dẫn JSP cho danh sách sản phẩm chi tiết
    }

    @GetMapping("/add")
    public String showAdd(Model model) {
        model.addAttribute("sanPhamChiTiet", new SanPhamChiTiet());
        return "sanphamchitiet/add"; // Đường dẫn JSP cho trang thêm sản phẩm chi tiết
    }

    @PostMapping("/add")
    public String add(@ModelAttribute SanPhamChiTiet sanPhamChiTiet) {
        sanPhamChiTietRepository.save(sanPhamChiTiet);
        return "redirect:/sanphamchitiet/hien-thi"; // Quay lại danh sách
    }

    @GetMapping("/update/{id}")
    public String showUpdate(@PathVariable Integer id, Model model) {
        Optional<SanPhamChiTiet> sanPhamChiTiet = sanPhamChiTietRepository.findById(id);
        model.addAttribute("sanPhamChiTiet", sanPhamChiTiet.orElse(new SanPhamChiTiet()));
        return "sanphamchitiet/update"; // Đường dẫn JSP cho trang cập nhật sản phẩm chi tiết
    }

    @PostMapping("/update")
    public String capNhat(@ModelAttribute SanPhamChiTiet sanPhamChiTiet) {
        sanPhamChiTietRepository.save(sanPhamChiTiet);
        return "redirect:/sanphamchitiet/hien-thi"; // Quay lại danh sách
    }

    @GetMapping("/delete")
    public String xoa(@RequestParam Integer id) {
        sanPhamChiTietRepository.deleteById(id);
        return "redirect:/sanphamchitiet/hien-thi"; // Quay lại danh sách
    }

    @GetMapping("/detail/{id}")
    public String chiTiet(@PathVariable Integer id, Model model) {
        Optional<SanPhamChiTiet> sanPhamChiTiet = sanPhamChiTietRepository.findById(id);
        model.addAttribute("sanPhamChiTiet", sanPhamChiTiet.orElse(new SanPhamChiTiet()));
        return "sanphamchitiet/detail"; // Đường dẫn JSP cho trang chi tiết sản phẩm chi tiết
    }

    @GetMapping("/search")
    public String timKiem(@RequestParam(required = false) String ma_spct, Model model) {
        List<SanPhamChiTiet> results;
        if (ma_spct != null && !ma_spct.isEmpty()) {
            results = sanPhamChiTietRepository.findByMaSpctContaining(ma_spct);
        } else {
            results = sanPhamChiTietRepository.findAll();
        }
        model.addAttribute("listSanPhamChiTiet", results);
        return "sanphamchitiet/hien-thi"; // Đường dẫn JSP
    }
}
