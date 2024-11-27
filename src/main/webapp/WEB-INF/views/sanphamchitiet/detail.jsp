<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Chi tiết sản phẩm chi tiết</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>Chi tiết sản phẩm chi tiết</h2>
    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <td>${sanPhamChiTiet.id}</td>
        </tr>
        <tr>
            <th>Mã Sản Phẩm Chi Tiết</th>
            <td>${sanPhamChiTiet.maSpct}</td>
        </tr>
        <tr>
            <th>ID Kích Thước</th>
            <td>${sanPhamChiTiet.idKichThuoc}</td>
        </tr>
        <tr>
            <th>ID Màu Sắc</th>
            <td>${sanPhamChiTiet.idMauSac}</td>
        </tr>
        <tr>
            <th>ID Sản Phẩm</th>
            <td>${sanPhamChiTiet.idSanPham}</td>
        </tr>
        <tr>
            <th>Số Lượng</th>
            <td>${sanPhamChiTiet.soLuong}</td>
        </tr>
        <tr>
            <th>Đơn Giá</th>
            <td>${sanPhamChiTiet.donGia}</td>
        </tr>
        <tr>
            <th>Trạng Thái</th>
            <td>${sanPhamChiTiet.trangThai ? 'Active' : 'Inactive'}</td>
        </tr>
    </table>
    <a href="/sanphamchitiet/hien-thi" class="btn btn-secondary">Quay lại danh sách sản phẩm chi tiết</a>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
