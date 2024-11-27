<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Chi tiết hóa đơn chi tiết</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <h2>Chi tiết hóa đơn chi tiết</h2>
    <table class="table">
        <tr>
            <th>ID</th>
            <td>${hoaDonChiTiet.id}</td>
        </tr>
        <tr>
            <th>ID Hóa Đơn</th>
            <td>${hoaDonChiTiet.idHoaDon}</td>
        </tr>
        <tr>
            <th>ID Sản Phẩm Chi Tiết</th>
            <td>${hoaDonChiTiet.idSpct}</td>
        </tr>
        <tr>
            <th>Số Lượng</th>
            <td>${hoaDonChiTiet.soLuong}</td>
        </tr>
        <tr>
            <th>Đơn Giá</th>
            <td>${hoaDonChiTiet.donGia}</td>
        </tr>
        <tr>
            <th>Trạng Thái</th>
            <td>${hoaDonChiTiet.trangThai ? 'Active' : 'Inactive'}</td>
        </tr>
    </table>
    <a href="/hoadonchitiet/hien-thi" class="btn btn-secondary">Quay lại danh sách hóa đơn chi tiết</a>
</div>
</body>
</html>
