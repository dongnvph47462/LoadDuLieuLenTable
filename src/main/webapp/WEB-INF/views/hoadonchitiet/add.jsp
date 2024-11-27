<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Thêm hóa đơn chi tiết</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <h2>Thêm hóa đơn chi tiết</h2>
    <form action="/hoadonchitiet/add" method="post">
        <div class="form-group">
            <label>ID Hóa đơn:</label>
            <input type="text" name="idHoaDon" class="form-control" required />
        </div>
        <div class="form-group">
            <label>ID Sản phẩm chi tiết:</label>
            <input type="text" name="idSpct" class="form-control" required />
        </div>
        <div class="form-group">
            <label>Số lượng:</label>
            <input type="number" name="soLuong" class="form-control" required />
        </div>
        <div class="form-group">
            <label>Đơn giá:</label>
            <input type="number" step="0.01" name="donGia" class="form-control" required />
        </div>
        <div class="form-group">
            <label>Trạng thái:</label>
            <select name="trangThai" class="form-control">
                <option value="true">Active</option>
                <option value="false">Inactive</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Thêm</button>
    </form>
    <a href="/hoadonchitiet/hien-thi" class="btn btn-secondary mt-2">Quay lại danh sách hóa đơn chi tiết</a>
</div>
</body>
</html>
