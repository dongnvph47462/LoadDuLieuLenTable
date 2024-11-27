<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cập nhật sản phẩm</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h2 class="mt-5">Cập nhật sản phẩm</h2>
    <form action="/sanpham/update" method="post" class="mt-3">
        <input type="hidden" name="id" value="${sanPham.id}">

        <div class="form-group">
            <label for="ma">Mã:</label>
            <input type="text" class="form-control" id="ma" name="ma" value="${sanPham.ma}" required>
        </div>

        <div class="form-group">
            <label for="ten">Tên:</label>
            <input type="text" class="form-control" id="ten" name="ten" value="${sanPham.ten}" required>
        </div>

        <div class="form-group">
            <label for="trangThai">Trạng thái:</label>
            <select class="form-control" id="trangThai" name="trangThai" required>
                <option value="1" ${sanPham.trangThai ? 'selected' : ''}>Active</option>
                <option value="0" ${sanPham.trangThai ? 'selected' : ''}>Inactive</option>
            </select>
        </div>

        <button type="submit" class="btn btn-warning">Cập nhật</button>
        <a href="/sanpham/hien-thi" class="btn btn-secondary">Hủy</a>
    </form>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
