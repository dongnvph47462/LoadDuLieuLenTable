package com.example.demo.BanHang.Controller;

import com.example.demo.BanHang.Model.HoaDon;
import com.example.demo.BanHang.repository.HoaDonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/hoadon")
public class HoaDonController {

    @Autowired
    private HoaDonRepository hoaDonRepository;

    @GetMapping("/hien-thi")
    public String hienThi(Model model) {
        model.addAttribute("listHoaDon", hoaDonRepository.findAll());
        return "hoadon/hien-thi"; // Đường dẫn JSP
    }

    @GetMapping("/add")
    public String showAdd(Model model) {
        model.addAttribute("hoaDon", new HoaDon());
        return "hoadon/add"; // Đường dẫn JSP cho trang thêm hóa đơn
    }

    @PostMapping("/add")
    public String them(@ModelAttribute HoaDon hoaDon) {
        hoaDon.setNgayMuaHang(LocalDate.now()); // Thiết lập ngày mua hàng hiện tại
        hoaDonRepository.save(hoaDon);
        return "redirect:/hoadon/hien-thi";
    }

    @GetMapping("/update/{id}")
    public String showUpdate(@PathVariable("id") Integer id, Model model) {
        Optional<HoaDon> optionalHoaDon = hoaDonRepository.findById(id);
        if (optionalHoaDon.isPresent()) {
            model.addAttribute("hoaDon", optionalHoaDon.get());
        } else {
            model.addAttribute("errorMessage", "Hóa đơn không tồn tại!");
            return "error"; // Chuyển đến trang hiển thị lỗi
        }
        return "hoadon/update";
    }

    @PostMapping("/update")
    public String sua(@ModelAttribute HoaDon hoaDon) {
        hoaDonRepository.save(hoaDon);
        return "redirect:/hoadon/hien-thi";
    }

    @GetMapping("/delete")
    public String xoa(@RequestParam("id") Integer id) {
        hoaDonRepository.deleteById(id);
        return "redirect:/hoadon/hien-thi";
    }

    @GetMapping("/search")
    public String timKiem(@RequestParam("id_kh") Integer idKh, Model model) {
        List<HoaDon> hoaDonList = hoaDonRepository.findByIdKh(idKh);
        model.addAttribute("listHoaDon", hoaDonList);
        return "hoadon/hien-thi"; // Chuyển đến trang hiển thị danh sách hóa đơn
    }

    @GetMapping("/detail/{id}")
    public String detail(@PathVariable("id") Integer id, Model model) {
        Optional<HoaDon> optionalHoaDon = hoaDonRepository.findById(id);
        if (optionalHoaDon.isPresent()) {
            model.addAttribute("hoaDon", optionalHoaDon.get());
            return "hoadon/detail"; // Đường dẫn JSP cho trang chi tiết hóa đơn
        } else {
            model.addAttribute("errorMessage", "Hóa đơn không tồn tại!");
            return "error"; // Chuyển đến trang hiển thị lỗi
        }
    }
}
