<?php include 'backend/connect_to_table.php';?>
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
			<li><a href="index.php">Trang chủ</a></li>
			<li class="active"><a href="list.php">Danh sách vận đơn</a></li>
			<li><a href="assets/images/p1.png">Ảnh câu 1</a></li>
			<li><a href="log_out.php">Đăng xuất</a></li>
			<li><a >Tên tài khoản: <?php echo($_SESSION['username']) ?></li>
		</ul>
	</div>
	<br>
	<form method="post">
		<label>Tìm kiếm</label>
		<input type="text" name="timkiem" placeholder="Nhập họ tên nhân viên">
		<input type="submit" name="submit" value="TÌM KIẾM">
	</form>
	<br>
	<table>
		<thead>
		<tr>
			<th>Mã vận đơn</th>
			<th>Nhân viên phụ trách</th>
			<th>Người nhận</th>
			<th>Hàng hóa</th>
			<th>Số lượng</th>
		</tr>
		</thead>
		<tbody>
		<?php foreach ($result as $item):?>
			<tr>
				<td><?php echo $item['ID'];?></td>
				<td><?php echo $item['hoten'];?></td>
				<td><?php echo $item['nguoinhan'];?></td>
				<td><?php echo $item['ten'];?></td>
				<td><?php echo $item['soluong'];?></td>
			</tr>
		<?php endforeach?>
		</tbody>
	</table>
	<br>
	<button onclick="window.location.href='add_bill_of_lading.php'" class="custom-button">Thêm vận đơn</button>

</content>
<footer>Sinh viên thực hiện : Nguyễn Ngọc Trung - MSV : 87471</footer>
</body>
</html>
