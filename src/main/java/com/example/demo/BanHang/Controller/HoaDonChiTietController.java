package com.example.demo.BanHang.Controller;

import com.example.demo.BanHang.Model.HoaDonChiTiet;
import com.example.demo.BanHang.repository.HoaDonChiTietRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/hoadonchitiet")
public class HoaDonChiTietController {

    @Autowired
    private HoaDonChiTietRepository hoaDonChiTietRepository;

    @GetMapping("/hien-thi")
    public String hienThi(Model model) {
        model.addAttribute("listHoaDonChiTiet", hoaDonChiTietRepository.findAll());
        return "hoadonchitiet/hien-thi"; // Đường dẫn JSP
    }

    @GetMapping("/add")
    public String showAdd(Model model) {
        model.addAttribute("hoaDonChiTiet", new HoaDonChiTiet());
        return "hoadonchitiet/add"; // Đường dẫn JSP cho trang thêm hóa đơn chi tiết
    }

    @PostMapping("/add")
    public String them(@ModelAttribute HoaDonChiTiet hoaDonChiTiet) {
        hoaDonChiTietRepository.save(hoaDonChiTiet);
        return "redirect:/hoadonchitiet/hien-thi"; // Quay lại danh sách
    }

    @GetMapping("/update/{id}")
    public String showUpdate(@PathVariable Integer id, Model model) {
        Optional<HoaDonChiTiet> hoaDonChiTiet = hoaDonChiTietRepository.findById(id);
        model.addAttribute("hoaDonChiTiet", hoaDonChiTiet.orElse(new HoaDonChiTiet()));
        return "hoadonchitiet/update"; // Đường dẫn JSP cho trang cập nhật hóa đơn chi tiết
    }

    @PostMapping("/update")
    public String capNhat(@ModelAttribute HoaDonChiTiet hoaDonChiTiet) {
        hoaDonChiTietRepository.save(hoaDonChiTiet);
        return "redirect:/hoadonchitiet/hien-thi"; // Quay lại danh sách
    }

    @GetMapping("/delete")
    public String xoa(@RequestParam Integer id) {
        hoaDonChiTietRepository.deleteById(id);
        return "redirect:/hoadonchitiet/hien-thi"; // Quay lại danh sách
    }

    @GetMapping("/detail/{id}")
    public String chiTiet(@PathVariable Integer id, Model model) {
        Optional<HoaDonChiTiet> hoaDonChiTiet = hoaDonChiTietRepository.findById(id);
        model.addAttribute("hoaDonChiTiet", hoaDonChiTiet.orElse(new HoaDonChiTiet()));
        return "hoadonchitiet/detail"; // Đường dẫn JSP cho trang chi tiết hóa đơn chi tiết
    }

    @GetMapping("/search")
    public String timKiem(@RequestParam(required = false) Integer id_hoa_don, Model model) {
        List<HoaDonChiTiet> results;
        if (id_hoa_don != null) {
            results = hoaDonChiTietRepository.findByIdHoaDon(id_hoa_don);
        } else {
            results = hoaDonChiTietRepository.findAll();
        }
        model.addAttribute("listHoaDonChiTiet", results);
        return "hoadonchitiet/hien-thi"; // Đường dẫn JSP
    }
}
