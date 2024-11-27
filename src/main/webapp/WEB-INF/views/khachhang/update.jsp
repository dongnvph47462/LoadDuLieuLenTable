<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Cập nhật khách hàng</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <h2>Cập nhật khách hàng</h2>
    <form action="/khachhang/update" method="post">
        <input type="hidden" name="id" value="${khachHang.id}" />
        <div class="form-group">
            <label>Tên:</label>
            <input type="text" name="ten" class="form-control" value="${khachHang.ten}" required />
        </div>
        <div class="form-group">
            <label>Số điện thoại:</label>
            <input type="text" name="sdt" class="form-control" value="${khachHang.sdt}" required />
        </div>
        <div class="form-group">
            <label>Mã KH:</label>
            <input type="text" name="maKh" class="form-control" value="${khachHang.maKh}" required />
        </div>
        <div class="form-group">
            <label>Trạng thái:</label>
            <select name="trangThai" class="form-control">
                <option value="true" ${khachHang.trangThai ? 'selected' : ''}>Active</option>
                <option value="false" ${!khachHang.trangThai ? 'selected' : ''}>Inactive</option>
            </select>
        </div>
        <button type="submit" class="btn btn-warning">Cập nhật</button>
    </form>
    <a href="/khachhang/hien-thi" class="btn btn-secondary mt-2">Quay lại danh sách khách hàng</a>
</div>
</body>
</html>
