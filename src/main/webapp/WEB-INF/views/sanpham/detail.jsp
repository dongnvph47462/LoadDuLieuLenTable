<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết sản phẩm</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h2 class="mt-5">Chi tiết sản phẩm</h2>
    <table class="table table-bordered mt-3">
        <tr>
            <th>ID</th>
            <td>${sanPham.id}</td>
        </tr>
        <tr>
            <th>Mã</th>
            <td>${sanPham.ma}</td>
        </tr>
        <tr>
            <th>Tên</th>
            <td>${sanPham.ten}</td>
        </tr>
        <tr>
            <th>Trạng thái</th>
            <td>${sanPham.trangThai ? 'Active' : 'Inactive'}</td>
        </tr>
    </table>

    <a href="/sanpham/hien-thi" class="btn btn-secondary mt-3">Quay lại danh sách sản phẩm</a>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
