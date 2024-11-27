<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Cập nhật màu sắc</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>Cập nhật màu sắc</h2>
    <form action="/mausac/update" method="post">
        <input type="hidden" name="id" value="${mauSac.id}" />
        <div class="form-group">
            <label for="ma">Mã:</label>
            <input type="text" class="form-control" name="ma" value="${mauSac.ma}" required />
        </div>
        <div class="form-group">
            <label for="ten">Tên:</label>
            <input type="text" class="form-control" name="ten" value="${mauSac.ten}" required />
        </div>
        <div class="form-group">
            <label for="trangThai">Trạng thái:</label>
            <select name="trangThai" class="form-control">
                <option value="true" ${mauSac.trangThai ? 'selected' : ''}>Active</option>
                <option value="false" ${!mauSac.trangThai ? 'selected' : ''}>Inactive</option>
            </select>
        </div>
        <button type="submit" class="btn btn-warning">Cập nhật</button>
    </form>
    <a href="/mausac/hien-thi" class="btn btn-secondary mt-3">Quay lại danh sách màu sắc</a>
</div>
</body>
</html>
