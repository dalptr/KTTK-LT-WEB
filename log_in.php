<?php include 'backend/handle_log_in.php';?>

<!DOCTYPE html>
<html lang="vn">
<head>
	<title>Quản lý vận đơn</title>
	<link rel="stylesheet" href="assets/css/log_in.css">
</head>
<body>
<header>Quản lý vận đơn</header>
<content>
	<div class="container">
		<form method="post">
			<fieldset class="form-group">
				<label >Tài khoản</label>
				<label>
					<input type="text" class="form-control" name="username" placeholder="Nhập tài khoản">
				</label>
			</fieldset>
			<fieldset class="form-group">
				<label >Mật khẩu</label>
				<label>
					<input type="password" class="form-control" name="password" placeholder="Nhập mật khẩu">
				</label>
			</fieldset>
			<fieldset class="form-group">
				<input type="submit" class="form-control" name="submit" value="ĐĂNG NHẬP">
			</fieldset>
		</form>
	</div>
</content>
</body>
</html>
