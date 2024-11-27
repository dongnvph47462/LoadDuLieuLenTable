package com.example.demo.BanHang.Controller;

import com.example.demo.BanHang.Model.KhachHang;
import com.example.demo.BanHang.repository.KhachHangRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/khachhang")
public class KhachHangController {

    @Autowired
    private KhachHangRepository khachHangRepository;

    @GetMapping("/hien-thi")
    public String hienThi(Model model) {
        model.addAttribute("listKhachHang", khachHangRepository.findAll());
        return "khachhang/hien-thi"; // Đường dẫn JSP
    }

    @GetMapping("/add")
    public String showAdd(Model model) {
        model.addAttribute("khachHang", new KhachHang());
        return "khachhang/add"; // Đường dẫn JSP cho trang thêm khách hàng
    }

    @PostMapping("/add")
    public String them(@ModelAttribute KhachHang khachHang) {
        khachHangRepository.save(khachHang);
        return "redirect:/khachhang/hien-thi";
    }

    @GetMapping("/update/{id}")
    public String showUpdate(@PathVariable("id") Integer id, Model model) {
        Optional<KhachHang> optionalKhachHang = khachHangRepository.findById(id);
        if (optionalKhachHang.isPresent()) {
            model.addAttribute("khachHang", optionalKhachHang.get());
        } else {
            model.addAttribute("errorMessage", "Khách hàng không tồn tại!");
            return "error"; // Chuyển đến trang hiển thị lỗi
        }
        return "khachhang/update";
    }

    @PostMapping("/update")
    public String sua(@ModelAttribute KhachHang khachHang) {
        khachHangRepository.save(khachHang);
        return "redirect:/khachhang/hien-thi";
    }

    @GetMapping("/delete")
    public String xoa(@RequestParam("id") Integer id) {
        khachHangRepository.deleteById(id);
        return "redirect:/khachhang/hien-thi";
    }

    @GetMapping("/search")
    public String timKiem(@RequestParam("ma_kh") String maKh, Model model) {
        List<KhachHang> khachHangList = khachHangRepository.findByMaKh(maKh);
        model.addAttribute("listKhachHang", khachHangList);
        return "khachhang/hien-thi"; // Chuyển đến trang hiển thị danh sách khách hàng
    }

    @GetMapping("/detail/{id}")
    public String detail(@PathVariable("id") Integer id, Model model) {
        Optional<KhachHang> optionalKhachHang = khachHangRepository.findById(id);
        if (optionalKhachHang.isPresent()) {
            model.addAttribute("khachHang", optionalKhachHang.get());
            return "khachhang/detail"; // Đường dẫn JSP cho trang chi tiết khách hàng
        } else {
            model.addAttribute("errorMessage", "Khách hàng không tồn tại!");
            return "error"; // Chuyển đến trang hiển thị lỗi
        }
    }
}
