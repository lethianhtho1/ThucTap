<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String isSuccess = (String) request.getAttribute("isSuccess");
%>
<%
String message = (String) request.getAttribute("message");
%>
<!DOCTYPE html>
<html>
<head>
<title>Ủy Ban Nhân Dân Vọng Đông</title>
<link rel="stylesheet" type="text/css" href="css/fontawesome.css">

</head>
<body
	style="width: 100%; height: 100%; background-image: url('images/hethong/login.png'); background-repeat: no-repeat; background-size: 100%; overflow-x: hidden">
	<div style="width: 25%; margin: 10% auto">
		<h1 style="text-align: center; color: #DF3A01">Đăng nhập</h1>
		<form action="dangnhap" method="post">
			<div style="background-color: red; height: 43px; width: 100%">
				<input type="text"
					style="height: 40px; width: 87%; font-size: 14pt; position: relative; padding-left: 12%"
					name="txttaikhoan" value="admin" required /> <i class="fad fa-user fa-2x"
					style="position: absolute; margin: -40px 0 0 0.5%; color: orange"></i>
			</div>
			<div
				style="background-color: red; height: 43px; width: 100%; margin-top: 20px">
				<input type="password" value="123456" name="txtmatkhau"
					style="height: 40px; width: 87%; position: relative; font-size: 14pt; padding-left: 12%"
					required /> <i class="fad fa-lock-alt fa-2x"
					style="position: absolute; margin: -40px 0 0 0.5%; color: #D7DF01"></i>
			</div>
			<div style="width: 100%; margin: 20px 0 0 70%">
				<button type="submit"
					style="width: 30%; height: 40px; font-size: 12pt; font-weight: bold; background-color: #088A08; color: white; border-radius: 5px">Đăng
					nhập</button>
			</div>

		</form>
	</div>
</body>
</html>