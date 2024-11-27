<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Cập nhật hóa đơn chi tiết</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <h2>Cập nhật hóa đơn chi tiết</h2>
    <form action="/hoadonchitiet/update" method="post">
        <input type="hidden" name="id" value="${hoaDonChiTiet.id}" />
        <div class="form-group">
            <label>ID Hóa đơn:</label>
            <input type="text" name="idHoaDon" class="form-control" value="${hoaDonChiTiet.idHoaDon}" required />
        </div>
        <div class="form-group">
            <label>ID Sản phẩm chi tiết:</label>
            <input type="text" name="idSpct" class="form-control" value="${hoaDonChiTiet.idSpct}" required />
        </div>
        <div class="form-group">
            <label>Số lượng:</label>
            <input type="number" name="soLuong" class="form-control" value="${hoaDonChiTiet.soLuong}" required />
        </div>
        <div class="form-group">
            <label>Đơn giá:</label>
            <input type="number" step="0.01" name="donGia" class="form-control" value="${hoaDonChiTiet.donGia}" required />
        </div>
        <div class="form-group">
            <label>Trạng thái:</label>
            <select name="trangThai" class="form-control">
                <option value="true" ${hoaDonChiTiet.trangThai ? 'selected' : ''}>Active</option>
                <option value="false" ${!hoaDonChiTiet.trangThai ? 'selected' : ''}>Inactive</option>
            </select>
        </div>
        <button type="submit" class="btn btn-warning">Cập nhật</button>
    </form>
    <a href="/hoadonchitiet/hien-thi" class="btn btn-secondary mt-2">Quay lại danh sách hóa đơn chi tiết</a>
</div>
</body>
</html>
