<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách kích thước</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>Danh sách kích thước</h2>

    <!-- Form tìm kiếm -->
    <form action="/kichthuoc/search" method="get" class="mb-3">
        <div class="input-group">
            <input type="text" name="ma" class="form-control" placeholder="Nhập mã kích thước" />
            <div class="input-group-append">
                <button class="btn btn-primary" type="submit">Tìm kiếm</button>
            </div>
        </div>
    </form>

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
        <c:forEach var="kichThuoc" items="${listKichThuoc}">
            <tr>
                <td>${kichThuoc.id}</td>
                <td>${kichThuoc.ma}</td>
                <td>${kichThuoc.ten}</td>
                <td>${kichThuoc.trangThai ? 'Active' : 'Inactive'}</td>
                <td>
                    <a href="/kichthuoc/detail/${kichThuoc.id}" class="btn btn-info btn-sm">Chi tiết</a>
                    <a href="/kichthuoc/update/${kichThuoc.id}" class="btn btn-warning btn-sm">Cập nhật</a>
                    <a href="/kichthuoc/delete?id=${kichThuoc.id}" class="btn btn-danger btn-sm">Xóa</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="/kichthuoc/add" class="btn btn-primary">Thêm kích thước mới</a>
    <a href="/dangnhap/banhang" class="btn btn-secondary">Quay lại</a>
</div>
</body>
</html>
