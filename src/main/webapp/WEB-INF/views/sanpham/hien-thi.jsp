<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách sản phẩm</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h2 class="mt-5">Danh sách sản phẩm</h2>

    <!-- Form tìm kiếm -->
    <form action="/sanpham/search" method="get" class="mt-3">
        <div class="form-row align-items-center">
            <div class="col-auto">
                <input type="text" class="form-control mb-2" name="ma" placeholder="Nhập mã sản phẩm để tìm kiếm" required>
            </div>
            <div class="col-auto">
                <input type="submit" class="btn btn-primary mb-2" value="Tìm kiếm">
            </div>
        </div>
    </form>

    <!-- Nút thêm sản phẩm -->
    <a href="/sanpham/add" class="btn btn-success mb-3">Thêm sản phẩm</a>

    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Mã</th>
            <th>Tên</th>
            <th>Trạng thái</th>
            <th>Hành động</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="sanPham" items="${listSanPham}">
            <tr>
                <td>${sanPham.id}</td>
                <td>${sanPham.ma}</td>
                <td>${sanPham.ten}</td>
                <td>${sanPham.trangThai ? 'Active' : 'Inactive'}</td>
                <td>
                    <a href="/sanpham/detail/${sanPham.id}" class="btn btn-info btn-sm">Chi tiết</a>
                    <a href="/sanpham/update/${sanPham.id}" class="btn btn-warning btn-sm">Cập nhật</a>
                    <a href="/sanpham/delete?id=${sanPham.id}" class="btn btn-danger btn-sm">Xóa</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="/dangnhap/banhang" class="btn btn-secondary">Quay lại</a>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
