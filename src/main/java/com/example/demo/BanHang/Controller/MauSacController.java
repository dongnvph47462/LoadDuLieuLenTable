package com.example.demo.BanHang.Controller;

import com.example.demo.BanHang.Model.MauSac;
import com.example.demo.BanHang.repository.MauSacRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/mausac")
public class MauSacController {

    @Autowired
    private MauSacRepository mauSacRepository;

    @GetMapping("/hien-thi")
    public String hienThi(Model model) {
        model.addAttribute("listMauSac", mauSacRepository.findAll());
        return "mausac/hien-thi"; // Đường dẫn JSP
    }

    @GetMapping("/add")
    public String showAdd(Model model) {
        model.addAttribute("mauSac", new MauSac());
        return "mausac/add"; // Đường dẫn JSP cho trang thêm màu sắc
    }

    @PostMapping("/add")
    public String them(@ModelAttribute MauSac mauSac) {
        mauSacRepository.save(mauSac);
        return "redirect:/mausac/hien-thi";
    }

    @GetMapping("/update/{id}")
    public String showUpdate(@PathVariable("id") String id, Model model) {
        Optional<MauSac> optionalMauSac = mauSacRepository.findById(id);
        if (optionalMauSac.isPresent()) {
            model.addAttribute("mauSac", optionalMauSac.get());
        } else {
            model.addAttribute("errorMessage", "Màu sắc không tồn tại!");
            return "error"; // Chuyển đến trang hiển thị lỗi
        }
        return "mausac/update";
    }

    @PostMapping("/update")
    public String sua(@ModelAttribute MauSac mauSac) {
        mauSacRepository.save(mauSac);
        return "redirect:/mausac/hien-thi";
    }

    @GetMapping("/delete")
    public String xoa(@RequestParam("id") String id) {
        mauSacRepository.deleteById(id);
        return "redirect:/mausac/hien-thi";
    }

    @GetMapping("/search")
    public String timKiem(@RequestParam("ma") String ma, Model model) {
        List<MauSac> mauSacList = mauSacRepository.findByMa(ma);
        model.addAttribute("listMauSac", mauSacList);
        return "mausac/hien-thi"; // Chuyển đến trang hiển thị danh sách màu sắc
    }

    @GetMapping("/detail/{id}")
    public String detail(@PathVariable("id") String id, Model model) {
        Optional<MauSac> optionalMauSac = mauSacRepository.findById(id);
        if (optionalMauSac.isPresent()) {
            model.addAttribute("mauSac", optionalMauSac.get());
            return "mausac/detail"; // Đường dẫn JSP cho trang chi tiết màu sắc
        } else {
            model.addAttribute("errorMessage", "Màu sắc không tồn tại!");
            return "error"; // Chuyển đến trang hiển thị lỗi
        }
    }
}
