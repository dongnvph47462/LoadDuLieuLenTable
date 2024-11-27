package com.example.demo.BanHang.Controller;

import com.example.demo.BanHang.Model.SanPham;
import com.example.demo.BanHang.repository.SanPhamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/sanpham")
public class SanPhamController {

    @Autowired
    private SanPhamRepository sanPhamRepository;

    @GetMapping("/hien-thi")
    public String hienThi(Model model) {
        model.addAttribute("listSanPham", sanPhamRepository.findAll());
        return "sanpham/hien-thi"; // Đường dẫn JSP
    }

    @GetMapping("/add")
    public String showAdd(Model model) {
        model.addAttribute("sanPham", new SanPham());
        return "sanpham/add"; // Đường dẫn JSP cho trang thêm sản phẩm
    }

    @PostMapping("/add")
    public String them(@ModelAttribute SanPham sanPham) {
        sanPhamRepository.save(sanPham);
        return "redirect:/sanpham/hien-thi";
    }

    @GetMapping("/update/{id}")
    public String showUpdate(@PathVariable("id") Integer id, Model model) {
        Optional<SanPham> optionalSanPham = sanPhamRepository.findById(id);
        if (optionalSanPham.isPresent()) {
            model.addAttribute("sanPham", optionalSanPham.get());
        } else {
            model.addAttribute("errorMessage", "Sản phẩm không tồn tại!");
            return "error"; // Chuyển đến trang hiển thị lỗi
        }
        return "sanpham/update";
    }

    @PostMapping("/update")
    public String sua(@ModelAttribute SanPham sanPham) {
        sanPhamRepository.save(sanPham);
        return "redirect:/sanpham/hien-thi";
    }

    @GetMapping("/delete")
    public String xoa(@RequestParam("id") Integer id) {
        sanPhamRepository.deleteById(id);
        return "redirect:/sanpham/hien-thi";
    }

    @GetMapping("/search")
    public String timKiem(@RequestParam("ma") String ma, Model model) {
        List<SanPham> sanPhamList = sanPhamRepository.findByMa(ma);
        model.addAttribute("listSanPham", sanPhamList);
        return "sanpham/hien-thi"; // Chuyển đến trang hiển thị danh sách sản phẩm
    }

    @GetMapping("/detail/{id}")
    public String detail(@PathVariable("id") Integer id, Model model) {
        Optional<SanPham> optionalSanPham = sanPhamRepository.findById(id);
        if (optionalSanPham.isPresent()) {
            model.addAttribute("sanPham", optionalSanPham.get());
            return "sanpham/detail"; // Đường dẫn JSP cho trang chi tiết sản phẩm
        } else {
            model.addAttribute("errorMessage", "Sản phẩm không tồn tại!");
            return "error"; // Chuyển đến trang hiển thị lỗi
        }
    }
}
