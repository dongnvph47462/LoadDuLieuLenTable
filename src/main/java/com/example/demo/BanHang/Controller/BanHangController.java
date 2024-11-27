package com.example.demo.BanHang.Controller;

import com.example.demo.BanHang.Model.*;
import com.example.demo.BanHang.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

@Controller
public class BanHangController {

    @Autowired
    private KhachHangRepository khachHangRepository;

    @Autowired
    private NhanVienRepository nhanVienRepository;

    @Autowired
    private SanPhamChiTietRepository sanPhamChiTietRepository;

    @Autowired
    private HoaDonRepository hoaDonRepository;

    @Autowired
    private HoaDonChiTietRepository hoaDonChiTietRepository;

    // Hiển thị form bán hàng
    @GetMapping("/banhang/banhang")
    public String showBanHangForm(Model model) {
        List<KhachHang> khachHangList = khachHangRepository.findAll();
        List<NhanVien> nhanVienList = nhanVienRepository.findAll();
        List<SanPhamChiTiet> sanPhamChiTietList = sanPhamChiTietRepository.findAll();

        model.addAttribute("khachHangList", khachHangList);
        model.addAttribute("nhanVienList", nhanVienList);
        model.addAttribute("sanPhamChiTietList", sanPhamChiTietList);

        return "banhang/banhang"; // Trỏ tới src/main/webapp/WEB-INF/views/banhang/banhang.jsp
    }
    @GetMapping("/banhang/getSanPhamChiTiet")
    @ResponseBody // Đảm bảo trả về JSON
    public SanPhamChiTiet getSanPhamChiTiet(@RequestParam("idSanPhamChiTiet") Integer idSanPhamChiTiet) {
        return sanPhamChiTietRepository.findById(idSanPhamChiTiet).orElse(null);
    }
    @PostMapping("/banhang/save")
    public String saveThanhToan(
            @RequestParam("maKh") String maKh,
            @RequestParam("maNv") String maNv,
            @RequestParam("idSanPhamChiTiet") String idSanPhamChiTiet,
            @RequestParam("soLuong") Integer soLuong,
            Model model) {

        // Tạo hóa đơn mới
        HoaDon hoaDon = new HoaDon();
        hoaDon.setIdNv(Integer.parseInt(maNv)); // Lưu ID nhân viên
        hoaDon.setIdKh(Integer.parseInt(maKh)); // Lưu ID khách hàng
        hoaDon.setNgayMuaHang(LocalDate.now()); // Ngày mua hàng
        hoaDon.setTrangThai(true); // Trạng thái hóa đơn

        // Lưu hóa đơn và lấy ID của nó
        hoaDon = hoaDonRepository.save(hoaDon);

        // Tìm sản phẩm chi tiết theo ID
        SanPhamChiTiet sanPhamChiTiet = sanPhamChiTietRepository.findById(Integer.parseInt(idSanPhamChiTiet)).orElse(null);
        if (sanPhamChiTiet != null) {
            // Tạo chi tiết hóa đơn
            HoaDonChiTiet hoaDonChiTiet = new HoaDonChiTiet();
            hoaDonChiTiet.setIdHoaDon(hoaDon.getId()); // Lưu ID hóa đơn
            hoaDonChiTiet.setIdSpct(sanPhamChiTiet.getId()); // Lưu ID sản phẩm chi tiết
            hoaDonChiTiet.setSoLuong(soLuong); // Số lượng
            hoaDonChiTiet.setDonGia(sanPhamChiTiet.getDonGia()); // Đơn giá
            hoaDonChiTiet.setTrangThai(true); // Trạng thái chi tiết hóa đơn

            Double donGia = sanPhamChiTiet.getDonGia() * soLuong; // Tính đơn giá
            hoaDonChiTiet.setDonGia(donGia); // Gán đơn giá cho chi tiết hóa đơn
            hoaDonChiTiet.setTrangThai(true);
            // Lưu chi tiết hóa đơn
            hoaDonChiTietRepository.save(hoaDonChiTiet);

            // Cập nhật số lượng sản phẩm
            int newSoLuong = sanPhamChiTiet.getSoLuong() - soLuong;
            if (newSoLuong < 0) {
                model.addAttribute("errorMessage", "Không đủ hàng tồn kho.");
                return "banhang/banhang"; // Quay lại trang bán hàng
            }
            sanPhamChiTiet.setSoLuong(newSoLuong); // Cập nhật số lượng
            sanPhamChiTietRepository.save(sanPhamChiTiet); // Lưu sản phẩm đã cập nhật
        } else {
            model.addAttribute("errorMessage", "Sản phẩm không tồn tại.");
            return "banhang/banhang"; // Quay lại trang bán hàng
        }

        // Lấy danh sách hóa đơn và chi tiết hóa đơn để hiển thị
        List<HoaDon> hoaDonList = hoaDonRepository.findAll(); // Lấy tất cả hóa đơn
        List<HoaDonChiTiet> hoaDonChiTietList = hoaDonChiTietRepository.findByIdHoaDon(hoaDon.getId()); // Lấy chi tiết hóa đơn

        model.addAttribute("hoaDonList", hoaDonList); // Thêm hóa đơn vào mô hình
        model.addAttribute("hoaDonChiTietList", hoaDonChiTietList); // Thêm chi tiết hóa đơn vào mô hình

        return "banhang/banhang"; // Quay lại trang bán hàng
    }


}
