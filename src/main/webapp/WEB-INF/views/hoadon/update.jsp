<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Cập nhật hóa đơn</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <h2>Cập nhật hóa đơn</h2>
    <form action="/hoadon/update" method="post">
        <input type="hidden" name="id" value="${hoaDon.id}" />
        <div class="form-group">
            <label>ID Nhân viên:</label>
            <input type="text" name="idNv" value="${hoaDon.idNv}" class="form-control" required />
        </div>
        <div class="form-group">
            <label>ID Khách hàng:</label>
            <input type="text" name="idKh" value="${hoaDon.idKh}" class="form-control" required />
        </div>
        <div class="form-group">
            <label>Ngày mua hàng:</label>
            <input type="date" name="ngayMuaHang" value="${hoaDon.ngayMuaHang}" class="form-control" required />
        </div>
        <div class="form-group">
            <label>Trạng thái:</label>
            <select name="trangThai" class="form-control">
                <option value="true" ${hoaDon.trangThai ? 'selected' : ''}>Active</option>
                <option value="false" ${!hoaDon.trangThai ? 'selected' : ''}>Inactive</option>
            </select>
        </div>
        <input type="submit" value="Cập nhật" class="btn btn-warning" />
    </form>
    <a href="/hoadon/hien-thi" class="btn btn-secondary">Quay lại danh sách hóa đơn</a>
</div>
</body>
</html>
