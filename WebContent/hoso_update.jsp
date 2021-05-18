<%@page import="Objects.taikhoan"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%
@SuppressWarnings("unchecked")
taikhoan tk_dn = (taikhoan) request.getAttribute("tk_dn");
nguoidung nd_dn = (nguoidung) request.getAttribute("nd_dn");
String chucvu = (String) request.getAttribute("chucvu");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ủy Ban Nhân Dân Vọng Đông</title>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/fontawesome.css">
<link rel="stylesheet" type="text/css" href="css/FileCss.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/fontawesome.css">
<script src="/js/jquery.min.js" type="text/javascript"></script>
<script src="/js/ajaxupload.js" type="text/javascript"></script>

</head>
<body style="background-image: url('images/hethong/backgroundweb.png'); background-size: cover;">
	<%@ include file="layout/header.jsp"%>

	<div style="width: 27%; float: left">
		<%@ include file="layout/menu_hoso.jsp"%>
	</div>
	<form action="hoso_update" method="post" enctype="multipart/form-data">
		<div style="width: 50%; float: left">
			<br>
			<h3 style="font-weight: bold; color: #DF0101">Thông tin tài
				khoản</h3>
			<br>
			<table style="line-height: 25px; width: 60%">
				<tr>
					<td colspan="2"><input value="<%=tk_dn.getTaikhoan()%>"
						name="taikhoan" readonly hidden></td>
				</tr>
				<tr>
					<td colspan="2"><input value="<%=nd_dn.getId_nguoidung()%>"
						name="idnguoidung" readonly hidden></td>
				</tr>
				<tr>
					<td>- Họ tên:</td>
					<td><input type="text" name="txthoten"
						value="<%=nd_dn.getTennguoidung()%>"></input></td>
				</tr>
				<tr>
					<td>- Địa chỉ</td>
					<td><input type="text" name="txtdiachi"
						value="<%=nd_dn.getDiachi()%>"></input></td>
				</tr>
				<tr>
					<td>- Ngày sinh</td>
					<td><input type="date" value="<%=nd_dn.getNgaysinh()%>"
						name="txtngaysinh"></input></td>
				</tr>
				<tr>
					<td>- Số điện thoại</td>
					<td><input type="text" name="txtsdt"
						value="<%=nd_dn.getSdt()%>"></input></td>
				</tr>
				<tr>
					<td colspan="2">
						<p style="color: red; font-size: 10pt">* Bỏ trống nếu không
							đổi mật khẩu</p>
					</td>
				</tr>
				<tr>
					<td>- Mật khẩu</td>
					<td><input type="password" name="txtmatkhau""></input></td>
				</tr>
				<tr>
					<td colspan="2">
						<p style="color: red; font-size: 10pt">* Bỏ trống nếu không
							đổi mật khẩu</p>
					</td>
				</tr>
				<tr>
					<td>- Xác nhận mật khẩu</td>
					<td><input type="password" name="txtxacnhanmatkhau"></input></td>
				</tr>



			</table>
		</div>

		<img id="anhxemtruoc" src="images/nhansu/<%=nd_dn.getHinhanh()%>"
			name="img"
			style="width: 20%; margin: 120px 0 0 -20%; position: absolute; border: solid thin gray">

		<input type="file" accept="image/*" name="file"
			onchange="showMyImage(this)"
			style="width: 20%; margin: 90px 0 0 -20%;" />
		<div>
			<button type="submit"
				style="border: solid white; width: 8%; height: 40px; font-size: 12pt; font-weight: bold; background-color: #088A08; color: white; border-radius: 5px;margin: 240px -5% 0 0;">Cập nhật</button>
		</div>

	</form>
</body>
<script type="text/javascript">
	function showMyImage(fileInput) {
		var files = fileInput.files;
		for (var i = 0; i < files.length; i++) {
			var file = files[i];
			var imageType = /image.*/;
			if (!file.type.match(imageType)) {
				continue;
			}
			var img = document.getElementById("anhxemtruoc");
			img.file = file;
			var reader = new FileReader();
			reader.onload = (function(aImg) {
				return function(e) {
					aImg.src = e.target.result;
				};
			})(img);
			reader.readAsDataURL(file);
		}
	}
</script>
</html>