<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Thêm màu sắc</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>Thêm màu sắc</h2>
    <form action="/mausac/add" method="post">
        <div class="form-group">
            <label for="ma">Mã:</label>
            <input type="text" class="form-control" name="ma" required />
        </div>
        <div class="form-group">
            <label for="ten">Tên:</label>
            <input type="text" class="form-control" name="ten" required />
        </div>
        <div class="form-group">
            <label for="trangThai">Trạng thái:</label>
            <select name="trangThai" class="form-control">
                <option value="true">Active</option>
                <option value="false">Inactive</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Thêm</button>
    </form>
    <a href="/mausac/hien-thi" class="btn btn-secondary mt-3">Quay lại danh sách màu sắc</a>
</div>
</body>
</html>
