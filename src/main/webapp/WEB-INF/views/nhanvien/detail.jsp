<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Chi tiết nhân viên</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h2 class="mt-4">Chi tiết nhân viên</h2>
    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <td>${nhanVien.id}</td>
        </tr>
        <tr>
            <th>Tên</th>
            <td>${nhanVien.ten}</td>
        </tr>
        <tr>
            <th>Mã NV</th>
            <td>${nhanVien.maNv}</td>
        </tr>
        <tr>
            <th>Tên đăng nhập</th>
            <td>${nhanVien.tenDangNhap}</td>
        </tr>
        <tr>
            <th>Trạng thái</th>
            <td>${nhanVien.trangThai ? 'Active' : 'Inactive'}</td>
        </tr>
    </table>
    <a href="/nhanvien/hien-thi" class="btn btn-secondary">Quay lại danh sách nhân viên</a>
</div>
</body>
</html>
