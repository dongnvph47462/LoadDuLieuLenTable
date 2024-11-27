<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Chi tiết kích thước</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>Chi tiết kích thước</h2>
    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <td>${kichThuoc.id}</td>
        </tr>
        <tr>
            <th>Mã</th>
            <td>${kichThuoc.ma}</td>
        </tr>
        <tr>
            <th>Tên</th>
            <td>${kichThuoc.ten}</td>
        </tr>
        <tr>
            <th>Trạng thái</th>
            <td>${kichThuoc.trangThai ? 'Active' : 'Inactive'}</td>
        </tr>
    </table>
    <a href="/kichthuoc/hien-thi" class="btn btn-secondary">Quay lại danh sách kích thước</a>
</div>
</body>
</html>
