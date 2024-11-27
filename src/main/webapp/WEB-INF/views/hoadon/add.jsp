<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Thêm hóa đơn</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <h2>Thêm hóa đơn</h2>
    <form action="/hoadon/add" method="post">
        <div class="form-group">
            <label>ID Nhân viên:</label>
            <input type="text" name="idNv" class="form-control" required />
        </div>
        <div class="form-group">
            <label>ID Khách hàng:</label>
            <input type="text" name="idKh" class="form-control" required />
        </div>
        <div class="form-group">
            <label>Ngày mua hàng:</label>
            <input type="date" name="ngayMuaHang" class="form-control" required />
        </div>
        <div class="form-group">
            <label>Trạng thái:</label>
            <select name="trangThai" class="form-control">
                <option value="true">Active</option>
                <option value="false">Inactive</option>
            </select>
        </div>
        <input type="submit" value="Thêm" class="btn btn-primary" />
    </form>
    <a href="/hoadon/hien-thi" class="btn btn-secondary">Quay lại danh sách hóa đơn</a>
</div>
</body>
</html>
