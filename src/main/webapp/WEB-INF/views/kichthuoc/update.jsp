<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Cập nhật kích thước</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>Cập nhật kích thước</h2>
    <form action="/kichthuoc/update" method="post">
        <input type="hidden" name="id" value="${kichThuoc.id}" />
        <div class="form-group">
            <label for="ma">Mã:</label>
            <input type="text" class="form-control" name="ma" value="${kichThuoc.ma}" required />
        </div>
        <div class="form-group">
            <label for="ten">Tên:</label>
            <input type="text" class="form-control" name="ten" value="${kichThuoc.ten}" required />
        </div>
        <div class="form-group">
            <label for="trangThai">Trạng thái:</label>
            <select name="trangThai" class="form-control">
                <option value="true" ${kichThuoc.trangThai ? 'selected' : ''}>Active</option>
                <option value="false" ${!kichThuoc.trangThai ? 'selected' : ''}>Inactive</option>
            </select>
        </div>
        <button type="submit" class="btn btn-warning">Cập nhật</button>
    </form>
    <a href="/kichthuoc/hien-thi" class="btn btn-secondary mt-3">Quay lại danh sách kích thước</a>
</div>
</body>
</html>
