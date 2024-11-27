package com.example.demo.BanHang.Controller;

import com.example.demo.BanHang.Model.LoginRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping("/dangnhap")
public class LoginController {

    @GetMapping("/login")
    public String showLogin() {
        return "dangnhap/login"; // Hiển thị form đăng nhập
    }

    @PostMapping("/login")
    public String login(
            @ModelAttribute LoginRequest loginRequest,
            Model model,
            HttpSession session
    ) {
        // Tài khoản và mật khẩu mẫu
        String adminUsername = "admin";
        String adminPassword = "admin123";
        String employeeUsername = "nhanvien";
        String employeePassword = "nhanvien123";

        if ("admin".equals(loginRequest.getRole()) &&
                adminUsername.equals(loginRequest.getUsername()) &&
                adminPassword.equals(loginRequest.getPassword())) {
            session.setAttribute("username", "admin"); // Lưu tên người dùng vào session
            return "redirect:/dangnhap/banhang"; // Chuyển hướng đến trang bán hàng cho admin
        } else if ("employee".equals(loginRequest.getRole()) &&
                employeeUsername.equals(loginRequest.getUsername()) &&
                employeePassword.equals(loginRequest.getPassword())) {
            session.setAttribute("username", "employee"); // Lưu tên người dùng vào session
            return "redirect:/dangnhap/banhang"; // Chuyển hướng đến trang bán hàng cho nhân viên
        } else {
            model.addAttribute("error", "Sai thông tin đăng nhập, vui lòng thử lại.");
            return "dangnhap/login"; // Nếu sai, quay lại form login với thông báo lỗi
        }
    }

    @GetMapping("/banhang")
    public String showBanHangPage(HttpSession session, Model model) {
        String username = (String) session.getAttribute("username");
        if (username == null) {
            return "redirect:/dangnhap/login"; // Nếu chưa đăng nhập, chuyển hướng về trang login
        }
        model.addAttribute("username", username); // Truyền thông tin người dùng vào Model
        return "dangnhap/banhang"; // Hiển thị trang bán hàng
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate(); // Hủy session hiện tại
        return "redirect:/dangnhap/login"; // Chuyển hướng về trang login
    }

    @GetMapping("/")
    public String home() {
        return "redirect:/dangnhap/login"; // Chuyển hướng về trang đăng nhập khi truy cập gốc
    }
}
