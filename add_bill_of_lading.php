<?php include 'backend/_add_bill_of_lading.php';?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Quản lý vận đơn</title>
	<link rel="stylesheet" href="assets/css/add_bill_of_lading.css">
</head>
<body>
<header>Quản lý vận đơn</header>
<content>
	<div class="container">
		<form method="post">
			<fieldset>
				<label for="idvandon">ID Vận đơn</label>
				<input type="text" name="idvandon" id="idvandon" placeholder="Nhập ID Vận đơn">
			</fieldset>
			<fieldset>
				<label for="idchitietvandon">ID Chi tiết vận đơn</label>
				<input type="text" name="idchitietvandon" id="idchitietvandon" placeholder="Nhập ID Chi tiết vận đơn">
			</fieldset>
			<fieldset>
				<label for="nhanvien">Nhân viên</label>
				<select name="nhanvien" id="nhanvien">
					<?php foreach ($result as $items): ?>
						<option value="<?php echo $items['idnv']; ?>"><?php echo $items['hoten']; ?></option>
					<?php endforeach ?>
				</select>
			</fieldset>
			<fieldset>
				<label for="nguoinhan">Người nhận</label>
				<input type="text" name="nguoinhan" id="nguoinhan" placeholder="Nhập người nhận">
			</fieldset>
			<fieldset>
				<label for="hanghoa">Hàng hóa</label>
				<select name="hanghoa" id="hanghoa">
					<?php foreach ($result1 as $items): ?>
						<option value="<?php echo $items['idhh']; ?>"><?php echo $items['ten']; ?></option>
					<?php endforeach ?>
				</select>
			</fieldset>
			<fieldset>
				<label for="soluong">Số lượng</label>
				<input type="text" name="soluong" id="soluong" placeholder="Nhập số lượng hàng hóa">
			</fieldset>
			<fieldset>
				<input type="submit" name="submit" value="Thêm">
			</fieldset>
		</form>
	</div>
</content>
<footer>Nguyễn Ngọc Trung</footer>
</body>
</html>
