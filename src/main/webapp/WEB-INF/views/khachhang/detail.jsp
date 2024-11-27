<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Chi tiết khách hàng</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <h2>Chi tiết khách hàng</h2>
    <table class="table">
        <tr>
            <th>ID</th>
            <td>${khachHang.id}</td>
        </tr>
        <tr>
            <th>Tên</th>
            <td>${khachHang.ten}</td>
        </tr>
        <tr>
            <th>Số điện thoại</th>
            <td>${khachHang.sdt}</td>
        </tr>
        <tr>
            <th>Mã KH</th>
            <td>${khachHang.maKh}</td>
        </tr>
        <tr>
            <th>Trạng thái</th>
            <td>${khachHang.trangThai ? 'Active' : 'Inactive'}</td>
        </tr>
    </table>
    <a href="/khachhang/hien-thi" class="btn btn-secondary">Quay lại danh sách khách hàng</a>
</div>
</body>
</html>
