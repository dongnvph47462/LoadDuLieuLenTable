<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Chi tiết màu sắc</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>Chi tiết màu sắc</h2>
    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <td>${mauSac.id}</td>
        </tr>
        <tr>
            <th>Mã</th>
            <td>${mauSac.ma}</td>
        </tr>
        <tr>
            <th>Tên</th>
            <td>${mauSac.ten}</td>
        </tr>
        <tr>
            <th>Trạng thái</th>
            <td>${mauSac.trangThai ? 'Active' : 'Inactive'}</td>
        </tr>
    </table>
    <a href="/mausac/hien-thi" class="btn btn-secondary">Quay lại danh sách màu sắc</a>
</div>
</body>
</html>
