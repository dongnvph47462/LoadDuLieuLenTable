<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách hóa đơn</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <h2>Danh sách hóa đơn</h2>

    <!-- Form tìm kiếm -->
    <form action="/hoadon/search" method="get" class="mb-4">
        <div class="input-group">
            <input type="number" name="id_kh" class="form-control" placeholder="Nhập ID khách hàng" />
            <div class="input-group-append">
                <button class="btn btn-success" type="submit">Tìm kiếm</button>
            </div>
        </div>
    </form>

    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>ID Nhân Viên</th>
            <th>ID Khách Hàng</th>
            <th>Ngày Mua Hàng</th>
            <th>Trạng Thái</th>
            <th>Hành động</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="hoaDon" items="${listHoaDon}">
            <tr>
                <td>${hoaDon.id}</td>
                <td>${hoaDon.idNv}</td>
                <td>${hoaDon.idKh}</td>
                <td>${hoaDon.ngayMuaHang}</td>
                <td>${hoaDon.trangThai ? 'Active' : 'Inactive'}</td>
                <td>
                    <a href="/hoadon/detail/${hoaDon.id}" class="btn btn-info">Chi tiết</a>
                    <a href="/hoadon/update/${hoaDon.id}" class="btn btn-warning">Cập nhật</a>
                    <a href="/hoadon/delete?id=${hoaDon.id}" class="btn btn-danger">Xóa</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="/hoadon/add" class="btn btn-primary">Thêm hóa đơn mới</a>
    <a href="/dangnhap/banhang" class="btn btn-secondary">Quay lại</a>
</div>
</body>
</html>
