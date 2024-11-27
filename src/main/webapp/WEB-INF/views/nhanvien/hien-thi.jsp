<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh sách nhân viên</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h2 class="mt-4">Danh sách nhân viên</h2>
    <form action="/nhanvien/search" method="get" class="mb-3">
        <div class="input-group">
            <input type="text" name="ma_nv" class="form-control" placeholder="Nhập mã nhân viên" />
            <div class="input-group-append">
                <button class="btn btn-outline-secondary" type="submit">Tìm kiếm</button>
            </div>
        </div>
    </form>

    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Tên</th>
            <th>Mã NV</th>
            <th>Tên đăng nhập</th>
            <th>Trạng thái</th>
            <th>Hành động</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="nhanVien" items="${listNhanVien}">
            <tr>
                <td>${nhanVien.id}</td>
                <td>${nhanVien.ten}</td>
                <td>${nhanVien.maNv}</td>
                <td>${nhanVien.tenDangNhap}</td>
                <td>${nhanVien.trangThai ? 'Active' : 'Inactive'}</td>
                <td>
                    <a href="/nhanvien/detail/${nhanVien.id}" class="btn btn-info btn-sm">Chi tiết</a>
                    <a href="/nhanvien/update/${nhanVien.id}" class="btn btn-warning btn-sm">Cập nhật</a>
                    <a href="/nhanvien/delete?id=${nhanVien.id}" class="btn btn-danger btn-sm">Xóa</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="/nhanvien/add" class="btn btn-success">Thêm nhân viên mới</a>
    <a href="/dangnhap/banhang" class="btn btn-secondary mt-2">Quay lại</a>
</div>
</body>
</html>
