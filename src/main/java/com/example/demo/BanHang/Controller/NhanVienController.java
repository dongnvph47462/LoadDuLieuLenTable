package com.example.demo.BanHang.Controller;

import com.example.demo.BanHang.Model.NhanVien;
import com.example.demo.BanHang.repository.NhanVienRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/nhanvien")
public class NhanVienController {

    @Autowired
    private NhanVienRepository nhanVienRepository;

    @GetMapping("/hien-thi")
    public String hienThi(Model model) {
        model.addAttribute("listNhanVien", nhanVienRepository.findAll());
        return "nhanvien/hien-thi"; // Đường dẫn JSP
    }

    @GetMapping("/add")
    public String showAdd(Model model) {
        model.addAttribute("nhanVien", new NhanVien());
        return "nhanvien/add"; // Đường dẫn JSP cho trang thêm nhân viên
    }

    @PostMapping("/add")
    public String them(@ModelAttribute NhanVien nhanVien) {
        nhanVienRepository.save(nhanVien);
        return "redirect:/nhanvien/hien-thi";
    }

    @GetMapping("/update/{id}")
    public String showUpdate(@PathVariable("id") Integer id, Model model) {
        Optional<NhanVien> optionalNhanVien = nhanVienRepository.findById(id);
        if (optionalNhanVien.isPresent()) {
            model.addAttribute("nhanVien", optionalNhanVien.get());
        } else {
            model.addAttribute("errorMessage", "Nhân viên không tồn tại!");
            return "error"; // Chuyển đến trang hiển thị lỗi
        }
        return "nhanvien/update";
    }

    @PostMapping("/update")
    public String sua(@ModelAttribute NhanVien nhanVien) {
        nhanVienRepository.save(nhanVien);
        return "redirect:/nhanvien/hien-thi";
    }

    @GetMapping("/delete")
    public String xoa(@RequestParam("id") Integer id) {
        nhanVienRepository.deleteById(id);
        return "redirect:/nhanvien/hien-thi";
    }

    @GetMapping("/search")
    public String timKiem(@RequestParam("ma_nv") String maNv, Model model) {
        List<NhanVien> nhanVienList = nhanVienRepository.findByMaNv(maNv);
        model.addAttribute("listNhanVien", nhanVienList);
        return "nhanvien/hien-thi"; // Chuyển đến trang hiển thị danh sách nhân viên
    }

    @GetMapping("/detail/{id}")
    public String detail(@PathVariable("id") Integer id, Model model) {
        Optional<NhanVien> optionalNhanVien = nhanVienRepository.findById(id);
        if (optionalNhanVien.isPresent()) {
            model.addAttribute("nhanVien", optionalNhanVien.get());
            return "nhanvien/detail"; // Đường dẫn JSP cho trang chi tiết nhân viên
        } else {
            model.addAttribute("errorMessage", "Nhân viên không tồn tại!");
            return "error"; // Chuyển đến trang hiển thị lỗi
        }
    }
}
