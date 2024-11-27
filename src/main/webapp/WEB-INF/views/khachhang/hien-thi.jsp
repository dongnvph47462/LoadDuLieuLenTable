<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách khách hàng</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <h2>Danh sách khách hàng</h2>

    <!-- Form tìm kiếm -->
    <form action="/khachhang/search" method="get" class="mb-4">
        <div class="input-group">
            <input type="text" name="ma_kh" class="form-control" placeholder="Nhập mã khách hàng" />
            <div class="input-group-append">
                <button class="btn btn-success" type="submit">Tìm kiếm</button>
            </div>
        </div>
    </form>

    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Tên</th>
            <th>Số điện thoại</th>
            <th>Mã KH</th>
            <th>Trạng thái</th>
            <th>Hành động</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="khachHang" items="${listKhachHang}">
            <tr>
                <td>${khachHang.id}</td>
                <td>${khachHang.ten}</td>
                <td>${khachHang.sdt}</td>
                <td>${khachHang.maKh}</td>
                <td>${khachHang.trangThai ? 'Active' : 'Inactive'}</td>
                <td>
                    <a href="/khachhang/detail/${khachHang.id}" class="btn btn-info">Chi tiết</a>
                    <a href="/khachhang/update/${khachHang.id}" class="btn btn-warning">Cập nhật</a>
                    <a href="/khachhang/delete?id=${khachHang.id}" class="btn btn-danger">Xóa</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="/khachhang/add" class="btn btn-primary">Thêm khách hàng mới</a>
    <a href="/dangnhap/banhang" class="btn btn-secondary mt-2">Quay lại</a>
</div>
</body>
</html>
