<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách sản phẩm chi tiết</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>Danh sách sản phẩm chi tiết</h2>

    <!-- Form tìm kiếm -->
    <form action="/sanphamchitiet/search" method="get" class="form-inline mb-3">
        <input type="text" class="form-control mr-2" name="ma_spct" placeholder="Nhập mã sản phẩm chi tiết" />
        <button type="submit" class="btn btn-primary">Tìm kiếm</button>
    </form>

    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Mã Sản Phẩm Chi Tiết</th>
            <th>ID Kích Thước</th>
            <th>ID Màu Sắc</th>
            <th>ID Sản Phẩm</th>
            <th>Số Lượng</th>
            <th>Đơn Giá</th>
            <th>Trạng Thái</th>
            <th>Hành động</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="sanPhamChiTiet" items="${listSanPhamChiTiet}">
            <tr>
                <td>${sanPhamChiTiet.id}</td>
                <td>${sanPhamChiTiet.maSpct}</td>
                <td>${sanPhamChiTiet.idKichThuoc}</td>
                <td>${sanPhamChiTiet.idMauSac}</td>
                <td>${sanPhamChiTiet.idSanPham}</td>
                <td>${sanPhamChiTiet.soLuong}</td>
                <td>${sanPhamChiTiet.donGia}</td>
                <td>${sanPhamChiTiet.trangThai ? 'Active' : 'Inactive'}</td>
                <td>
                    <a href="/sanphamchitiet/detail/${sanPhamChiTiet.id}" class="btn btn-info btn-sm">Chi tiết</a>
                    <a href="/sanphamchitiet/update/${sanPhamChiTiet.id}" class="btn btn-warning btn-sm">Cập nhật</a>
                    <a href="/sanphamchitiet/delete?id=${sanPhamChiTiet.id}" class="btn btn-danger btn-sm">Xóa</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="/sanphamchitiet/add" class="btn btn-primary">Thêm sản phẩm chi tiết mới</a>
    <a href="/dangnhap/banhang" class="btn btn-secondary">Quay lại</a>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
