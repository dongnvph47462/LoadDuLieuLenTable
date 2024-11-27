<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bán Hàng</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa; /* Màu nền sáng */
        }
        .container {
            background-color: #ffffff; /* Màu nền cho container */
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1); /* Đổ bóng nhẹ cho container */
        }
        h1 {
            color: #343a40; /* Màu chữ tiêu đề */
        }
        .alert {
            margin-bottom: 20px;
        }
        button {
            margin-top: 10px;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center">Bán Hàng</h1>

    <!-- Hiển thị thông báo lỗi nếu có -->
    <c:if test="${not empty errorMessage}">
        <div class="alert alert-danger">${errorMessage}</div>
    </c:if>

    <form method="post" action="/banhang/save" class="mt-4">
        <div class="form-group">
            <label for="maSpct">Mã Sản Phẩm Chi Tiết:</label>
            <select id="maSpct" name="idSanPhamChiTiet" class="form-control" required>
                <c:forEach var="sanPhamChiTiet" items="${sanPhamChiTietList}">
                    <option value="${sanPhamChiTiet.id}">${sanPhamChiTiet.maSpct}</option>
                </c:forEach>
            </select>
        </div>

        <div class="form-group">
            <label for="idSanPham">ID Sản Phẩm:</label>
            <input type="text" id="idSanPham" name="idSanPham" class="form-control" readonly>
        </div>

        <div class="form-group">
            <label for="idKichThuoc">Kích Thước:</label>
            <input type="text" id="idKichThuoc" name="idKichThuoc" class="form-control" readonly>
        </div>

        <div class="form-group">
            <label for="idMauSac">Màu Sắc:</label>
            <input type="text" id="idMauSac" name="idMauSac" class="form-control" readonly>
        </div>

        <div class="form-group">
            <label for="donGia">Đơn Giá:</label>
            <input type="text" id="donGia" name="donGia" class="form-control" readonly>
        </div>

        <div class="form-group">
            <label for="trangThai">Trạng Thái:</label>
            <select id="trangThai" name="trangThai" class="form-control" required>
                <option value="Còn hàng">Còn hàng</option>
                <option value="Hết hàng">Hết hàng</option>
                <option value="Đang giảm giá">Đang giảm giá</option>
            </select>
        </div>

        <div class="form-group">
            <label for="soLuong">Số Lượng:</label>
            <input type="number" id="soLuong" name="soLuong" class="form-control" required min="1">
        </div>

        <div class="form-group">
            <label for="maKh">Mã Khách Hàng:</label>
            <select id="maKh" name="maKh" class="form-control" required>
                <c:forEach var="khachHang" items="${khachHangList}">
                    <option value="${khachHang.maKh}">${khachHang.ten}</option>
                </c:forEach>
            </select>
        </div>

        <div class="form-group">
            <label for="maNv">Mã Nhân Viên:</label>
            <select id="maNv" name="maNv" class="form-control" required>
                <c:forEach var="nhanVien" items="${nhanVienList}">
                    <option value="${nhanVien.maNv}">${nhanVien.ten}</option>
                </c:forEach>
            </select>
        </div>

        <button type="submit" class="btn btn-success">Thanh Toán</button>
        <a href="/dangnhap/banhang" class="btn btn-secondary">Quay lại</a> <!-- Nút Quay lại -->
    </form>
</div>

<script>
    $(document).ready(function() {
        $('#maSpct').change(function() {
            var idSanPhamChiTiet = $(this).val(); // Lấy ID sản phẩm chi tiết đã chọn
            if (idSanPhamChiTiet) {
                $.get('/banhang/getSanPhamChiTiet', { idSanPhamChiTiet: idSanPhamChiTiet }, function(data) {
                    console.log(data); // Kiểm tra dữ liệu nhận được từ server
                    // Cập nhật các ô text bằng dữ liệu nhận được
                    $('#idSanPham').val(data.idSanPham); // Cập nhật ID sản phẩm
                    $('#idKichThuoc').val(data.idKichThuoc); // Cập nhật kích thước
                    $('#idMauSac').val(data.idMauSac); // Cập nhật màu sắc
                    $('#donGia').val(data.donGia); // Cập nhật đơn giá
                    $('#soLuong').val(''); // Đặt số lượng về rỗng để người dùng nhập
                }).fail(function() {
                    alert('Có lỗi xảy ra khi lấy thông tin sản phẩm chi tiết.');
                });
            } else {
                // Nếu không có ID, xóa các ô text
                $('#idSanPham').val('');
                $('#idKichThuoc').val('');
                $('#idMauSac').val('');
                $('#donGia').val('');
                $('#soLuong').val('');
            }
        });

        // Đặt lại số lượng
        $('#soLuong').on('input', function() {
            var value = $(this).val();
            if (value < 1) {
                $(this).val(1);
            }
        });
    });
</script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
</body>
</html>
