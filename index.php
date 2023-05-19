<?php
session_start();
if(!isset($_SESSION['username'])){
	header('location:log_in.php');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<link rel="icon" href="assets/images/logo.jpg">
	<title>Quản lý vận đơn</title>
	<link rel="stylesheet" href="assets/css/styles.css">
</head>
<body>
<header>Quản lý vận đơn</header>
<content>
	<div class="container">
		<ul class="nav">
			<li class="active"><a href="index.php">Trang chủ</a></li>
			<li><a href="list.php">Danh sách vận đơn</a></li>
			<li><a href="assets/images/p1.png">Ảnh câu 1</a></li>
			<li><a href="log_out.php">Đăng xuất</a></li>
			<li><a >Tên tài khoản: <?php echo($_SESSION['username']) ?></li>
		</ul>
	</div>
	<div class="center-image">
		<img src="assets/images/homepage.jpg" alt="Home Page">
	</div>
</content>
<footer>Sinh viên thực hiện : Nguyễn Ngọc Trung - MSV : 87471</footer>
<li class="user-info">Bạn đã đăng nhập vào lúc <?php echo $_SESSION['datetime']?></li>
</body>
</html>
