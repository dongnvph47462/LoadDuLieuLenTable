<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Chi tiết hóa đơn</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <h2>Chi tiết hóa đơn</h2>
    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <td>${hoaDon.id}</td>
        </tr>
        <tr>
            <th>ID Nhân Viên</th>
            <td>${hoaDon.idNv}</td>
        </tr>
        <tr>
            <th>ID Khách Hàng</th>
            <td>${hoaDon.idKh}</td>
        </tr>
        <tr>
            <th>Ngày Mua Hàng</th>
            <td>${hoaDon.ngayMuaHang}</td>
        </tr>
        <tr>
            <th>Trạng Thái</th>
            <td>${hoaDon.trangThai ? 'Active' : 'Inactive'}</td>
        </tr>
    </table>
    <a href="/hoadon/hien-thi" class="btn btn-secondary">Quay lại danh sách hóa đơn</a>
</div>
</body>
</html>
