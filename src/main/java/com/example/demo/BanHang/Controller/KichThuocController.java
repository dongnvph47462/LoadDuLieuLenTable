package com.example.demo.BanHang.Controller;

import com.example.demo.BanHang.Model.KichThuoc;
import com.example.demo.BanHang.repository.KichThuocRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/kichthuoc")
public class KichThuocController {

    @Autowired
    private KichThuocRepository kichThuocRepository;

    @GetMapping("/hien-thi")
    public String hienThi(Model model) {
        model.addAttribute("listKichThuoc", kichThuocRepository.findAll());
        return "kichthuoc/hien-thi"; // Đường dẫn JSP
    }

    @GetMapping("/add")
    public String showAdd(Model model) {
        model.addAttribute("kichThuoc", new KichThuoc());
        return "kichthuoc/add"; // Đường dẫn JSP cho trang thêm kích thước
    }

    @PostMapping("/add")
    public String them(@ModelAttribute KichThuoc kichThuoc) {
        kichThuocRepository.save(kichThuoc);
        return "redirect:/kichthuoc/hien-thi";
    }

    @GetMapping("/update/{id}")
    public String showUpdate(@PathVariable("id") Integer id, Model model) {
        Optional<KichThuoc> optionalKichThuoc = kichThuocRepository.findById(id);
        if (optionalKichThuoc.isPresent()) {
            model.addAttribute("kichThuoc", optionalKichThuoc.get());
        } else {
            model.addAttribute("errorMessage", "Kích thước không tồn tại!");
            return "error"; // Chuyển đến trang hiển thị lỗi
        }
        return "kichthuoc/update";
    }

    @PostMapping("/update")
    public String sua(@ModelAttribute KichThuoc kichThuoc) {
        kichThuocRepository.save(kichThuoc);
        return "redirect:/kichthuoc/hien-thi";
    }

    @GetMapping("/delete")
    public String xoa(@RequestParam("id") Integer id) {
        kichThuocRepository.deleteById(id);
        return "redirect:/kichthuoc/hien-thi";
    }

    @GetMapping("/search")
    public String timKiem(@RequestParam("ma") String ma, Model model) {
        List<KichThuoc> kichThuocList = kichThuocRepository.findByMa(ma);
        model.addAttribute("listKichThuoc", kichThuocList);
        return "kichthuoc/hien-thi"; // Chuyển đến trang hiển thị danh sách kích thước
    }

    @GetMapping("/detail/{id}")
    public String detail(@PathVariable("id") Integer id, Model model) {
        Optional<KichThuoc> optionalKichThuoc = kichThuocRepository.findById(id);
        if (optionalKichThuoc.isPresent()) {
            model.addAttribute("kichThuoc", optionalKichThuoc.get());
            return "kichthuoc/detail"; // Đường dẫn JSP cho trang chi tiết kích thước
        } else {
            model.addAttribute("errorMessage", "Kích thước không tồn tại!");
            return "error"; // Chuyển đến trang hiển thị lỗi
        }
    }
}
