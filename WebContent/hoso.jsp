<%@page import="Objects.taikhoan"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%
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

</head>
<body
	style="background-image: url('images/hethong/backgroundweb.png'); background-size: cover;">
	<%@ include file="layout/header.jsp"%>

	<div style="width: 27%; float: left">
		<%@ include file="layout/menu_hoso.jsp"%>
	</div>
	<div style="width: 50%; float: left">
		<br>
		<h3 style="font-weight: bold; color: #DF0101">Thông tin tài khoản</h3>
		<br>
		<table style="line-height: 40px; width: 50%">
			<tr>
				<td>- Họ tên:</td>
				<td><%=nd_dn.getTennguoidung()%></td>
			</tr>
			<tr>
				<td>- Tài khoản</td>
				<td><%=tk_dn.getTaikhoan()%></td>
			</tr>
			<tr>
				<td>- Quyền hạn</td>
				<td><%=tk_dn.getQuyenhan()%></td>
			</tr>
			<tr>
				<td>- Chức vụ:</td>
				<td><%=chucvu%></td>
			</tr>
			<tr>
				<td>- Địa chỉ</td>
				<td><%=nd_dn.getDiachi()%></td>
			</tr>
			<tr>
				<td>- Ngày sinh</td>
				<td><input type="date" value="<%=nd_dn.getNgaysinh()%>"
					readonly style="border: none"></input></td>
			</tr>
			<tr>
				<td>- Số điện thoại</td>
				<td><%=nd_dn.getSdt()%></td>
			</tr>

		</table>
	</div>
	<img src="images/nhansu/<%=nd_dn.getHinhanh()%>"
		style="width: 20%; margin: 90px 0 0 -20%; position: absolute; border: solid thin gray">
</body>
</html>