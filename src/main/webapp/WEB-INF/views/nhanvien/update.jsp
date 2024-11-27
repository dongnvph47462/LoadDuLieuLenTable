<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Cập nhật nhân viên</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h2 class="mt-4">Cập nhật nhân viên</h2>
    <form action="/nhanvien/update" method="post">
        <input type="hidden" name="id" value="${nhanVien.id}" />
        <div class="form-group">
            <label for="ten">Tên:</label>
            <input type="text" class="form-control" name="ten" value="${nhanVien.ten}" required />
        </div>
        <div class="form-group">
            <label for="maNv">Mã NV:</label>
            <input type="text" class="form-control" name="maNv" value="${nhanVien.maNv}" required />
        </div>
        <div class="form-group">
            <label for="tenDangNhap">Tên đăng nhập:</label>
            <input type="text" class="form-control" name="tenDangNhap" value="${nhanVien.tenDangNhap}" required />
        </div>
        <div class="form-group">
            <label for="matKhau">Mật khẩu:</label>
            <input type="password" class="form-control" name="matKhau" value="${nhanVien.matKhau}" required />
        </div>
        <div class="form-group">
            <label for="trangThai">Trạng thái:</label>
            <select class="form-control" name="trangThai">
                <option value="true" <c:if test="${nhanVien.trangThai}">selected</c:if>>Active</option>
                <option value="false" <c:if test="${!nhanVien.trangThai}">selected</c:if>>Inactive</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Cập nhật</button>
    </form>
    <a href="/nhanvien/hien-thi" class="btn btn-secondary mt-2">Quay lại danh sách nhân viên</a>
</div>
</body>
</html>
