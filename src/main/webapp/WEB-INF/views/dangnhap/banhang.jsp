<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            display: flex;
            height: 100vh;
        }
        .sidebar {
            width: 250px;
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            padding: 20px;
        }
        .sidebar h2 {
            text-align: center;
        }
        .sidebar a {
            margin-top: 10px;
            display: block;
        }
        .main-content {
            flex: 1;
            background-image: url('https://product.hstatic.net/1000313040/product/frame_fb_9_0ef0bc3e71354a4385e0e55d577fd41d_master.png');
            background-size: cover;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .content {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
        }
        .content h1 {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<div class="sidebar">
    <h2>Quản Lý</h2>
    <div>
        <!-- Hiển thị cho Admin -->
        <c:if test="${username eq 'admin'}">
            <a href="/sanpham/hien-thi" class="btn btn-primary btn-block">Quản lý Sản phẩm</a>
            <a href="/khachhang/hien-thi" class="btn btn-primary btn-block">Quản lý Khách hàng</a>
            <a href="/nhanvien/hien-thi" class="btn btn-primary btn-block">Quản lý Nhân viên</a>
            <a href="/sanphamchitiet/hien-thi" class="btn btn-primary btn-block">Quản lý Sản phẩm Chi tiết</a>
            <a href="/hoadon/hien-thi" class="btn btn-primary btn-block">Quản lý Hóa đơn</a>
            <a href="/mausac/hien-thi" class="btn btn-primary btn-block">Quản lý Màu sắc</a>
            <a href="/kichthuoc/hien-thi" class="btn btn-primary btn-block">Quản lý Kích thước</a>
            <a href="/hoadonchitiet/hien-thi" class="btn btn-primary btn-block">Quản lý Hóa đơn Chi tiết</a>
        </c:if>

        <!-- Hiển thị cho Nhân viên -->
        <c:if test="${username eq 'employee'}">
            <a href="/sanpham/hien-thi" class="btn btn-primary btn-block">Quản lý Sản phẩm</a>
            <a href="/khachhang/hien-thi" class="btn btn-primary btn-block">Quản lý Khách hàng</a>
            <a href="/nhanvien/hien-thi" class="btn btn-primary btn-block">Quản lý Nhân viên</a>
            <a href="/sanphamchitiet/hien-thi" class="btn btn-primary btn-block">Quản lý Sản phẩm Chi tiết</a>
            <a href="/mausac/hien-thi" class="btn btn-primary btn-block">Quản lý Màu sắc</a>
            <a href="/kichthuoc/hien-thi" class="btn btn-primary btn-block">Quản lý Kích thước</a>
        </c:if>

        <!-- Nút Quay lại / Đăng xuất -->
        <a href="/dangnhap/logout" class="btn btn-secondary btn-block">Đăng xuất</a>
    </div>
</div>

<div class="main-content">
    <div class="content">
        <h1>Chào mừng đến với hệ thống bán hàng</h1>
        <a href="/banhang/banhang" class="btn btn-success">Đi đến Bán Hàng</a>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
