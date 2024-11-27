<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Cập nhật sản phẩm chi tiết</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>Cập nhật sản phẩm chi tiết</h2>
    <form action="/sanphamchitiet/update" method="post">
        <input type="hidden" name="id" value="${sanPhamChiTiet.id}" />
        <div class="form-group">
            <label for="maSpct">Mã sản phẩm chi tiết:</label>
            <input type="text" class="form-control" name="maSpct" value="${sanPhamChiTiet.maSpct}" required />
        </div>
        <div class="form-group">
            <label for="idKichThuoc">ID Kích Thước:</label>
            <input type="text" class="form-control" name="idKichThuoc" value="${sanPhamChiTiet.idKichThuoc}" required />
        </div>
        <div class="form-group">
            <label for="idMauSac">ID Màu Sắc:</label>
            <input type="text" class="form-control" name="idMauSac" value="${sanPhamChiTiet.idMauSac}" required />
        </div>
        <div class="form-group">
            <label for="idSanPham">ID Sản Phẩm:</label>
            <input type="text" class="form-control" name="idSanPham" value="${sanPhamChiTiet.idSanPham}" required />
        </div>
        <div class="form-group">
            <label for="soLuong">Số lượng:</label>
            <input type="number" class="form-control" name="soLuong" value="${sanPhamChiTiet.soLuong}" required />
        </div>
        <div class="form-group">
            <label for="donGia">Đơn giá:</label>
            <input type="number" class="form-control" step="0.01" name="donGia" value="${sanPhamChiTiet.donGia}" required />
        </div>
        <div class="form-group">
            <label for="trangThai">Trạng thái:</label>
            <select class="form-control" name="trangThai">
                <option value="true" ${sanPhamChiTiet.trangThai ? 'selected' : ''}>Active</option>
                <option value="false" ${!sanPhamChiTiet.trangThai ? 'selected' : ''}>Inactive</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Cập nhật</button>
        <a href="/sanphamchitiet/hien-thi" class="btn btn-secondary">Quay lại danh sách sản phẩm chi tiết</a>
    </form>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
