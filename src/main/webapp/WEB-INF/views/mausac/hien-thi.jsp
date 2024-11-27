<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách màu sắc</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>Danh sách màu sắc</h2>

    <!-- Form tìm kiếm -->
    <form action="/mausac/search" method="get" class="mb-3">
        <div class="input-group">
            <input type="text" name="ma" placeholder="Nhập mã màu sắc" class="form-control" value="${ma}" />
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
        <c:forEach var="mauSac" items="${listMauSac}">
            <tr>
                <td>${mauSac.id}</td>
                <td>${mauSac.ma}</td>
                <td>${mauSac.ten}</td>
                <td>${mauSac.trangThai ? 'Active' : 'Inactive'}</td>
                <td>
                    <a href="/mausac/detail/${mauSac.id}" class="btn btn-info btn-sm">Chi tiết</a>
                    <a href="/mausac/update/${mauSac.id}" class="btn btn-warning btn-sm">Cập nhật</a>
                    <a href="/mausac/delete?id=${mauSac.id}" class="btn btn-danger btn-sm">Xóa</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="/mausac/add" class="btn btn-primary">Thêm màu sắc mới</a>
    <a href="/dangnhap/banhang" class="btn btn-secondary">Quay lại</a>
</div>
</body>
</html>
