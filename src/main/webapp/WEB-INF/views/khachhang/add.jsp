<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Thêm khách hàng</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <h2>Thêm khách hàng</h2>
    <form action="/khachhang/add" method="post">
        <div class="form-group">
            <label>Tên:</label>
            <input type="text" name="ten" class="form-control" required />
        </div>
        <div class="form-group">
            <label>Số điện thoại:</label>
            <input type="text" name="sdt" class="form-control" required />
        </div>
        <div class="form-group">
            <label>Mã KH:</label>
            <input type="text" name="maKh" class="form-control" required />
        </div>
        <div class="form-group">
            <label>Trạng thái:</label>
            <select name="trangThai" class="form-control">
                <option value="true">Active</option>
                <option value="false">Inactive</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Thêm</button>
    </form>
    <a href="/khachhang/hien-thi" class="btn btn-secondary mt-2">Quay lại danh sách khách hàng</a>
</div>
</body>
</html>
