<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách hóa đơn chi tiết</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <h2>Danh sách hóa đơn chi tiết</h2>

    <!-- Form tìm kiếm -->
    <form action="/hoadonchitiet/search" method="get" class="mb-4">
        <div class="input-group">
            <input type="number" name="id_hoa_don" class="form-control" placeholder="Nhập ID hóa đơn" />
            <div class="input-group-append">
                <button class="btn btn-success" type="submit">Tìm kiếm</button>
            </div>
        </div>
    </form>

    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>ID Hóa Đơn</th>
            <th>ID Sản Phẩm Chi Tiết</th>
            <th>Số Lượng</th>
            <th>Đơn Giá</th>
            <th>Trạng Thái</th>
            <th>Hành động</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="hoaDonChiTiet" items="${listHoaDonChiTiet}">
            <tr>
                <td>${hoaDonChiTiet.id}</td>
                <td>${hoaDonChiTiet.idHoaDon}</td>
                <td>${hoaDonChiTiet.idSpct}</td>
                <td>${hoaDonChiTiet.soLuong}</td>
                <td>${hoaDonChiTiet.donGia}</td>
                <td>${hoaDonChiTiet.trangThai ? 'Active' : 'Inactive'}</td>
                <td>
                    <a href="/hoadonchitiet/detail/${hoaDonChiTiet.id}" class="btn btn-info">Chi tiết</a>
                    <a href="/hoadonchitiet/update/${hoaDonChiTiet.id}" class="btn btn-warning">Cập nhật</a>
                    <a href="/hoadonchitiet/delete?id=${hoaDonChiTiet.id}" class="btn btn-danger">Xóa</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="/hoadonchitiet/add" class="btn btn-primary">Thêm hóa đơn chi tiết mới</a>
    <a href="/dangnhap/banhang" class="btn btn-secondary mt-2">Quay lại</a>
</div>
</body>
</html>
