<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Thêm sản phẩm chi tiết</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>Thêm sản phẩm chi tiết</h2>
    <form action="/sanphamchitiet/add" method="post">
        <div class="form-group">
            <label for="maSpct">Mã sản phẩm chi tiết:</label>
            <input type="text" class="form-control" name="maSpct" required />
        </div>
        <div class="form-group">
            <label for="idKichThuoc">ID Kích Thước:</label>
            <input type="text" class="form-control" name="idKichThuoc" required />
        </div>
        <div class="form-group">
            <label for="idMauSac">ID Màu Sắc:</label>
            <input type="text" class="form-control" name="idMauSac" required />
        </div>
        <div class="form-group">
            <label for="idSanPham">ID Sản Phẩm:</label>
            <input type="text" class="form-control" name="idSanPham" required />
        </div>
        <div class="form-group">
            <label for="soLuong">Số lượng:</label>
            <input type="number" class="form-control" name="soLuong" required />
        </div>
        <div class="form-group">
            <label for="donGia">Đơn giá:</label>
            <input type="number" class="form-control" step="0.01" name="donGia" required />
        </div>
        <div class="form-group">
            <label for="trangThai">Trạng thái:</label>
            <select class="form-control" name="trangThai">
                <option value="true">Active</option>
                <option value="false">Inactive</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Thêm</button>
        <a href="/sanphamchitiet/hien-thi" class="btn btn-secondary">Quay lại danh sách sản phẩm chi tiết</a>
    </form>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
