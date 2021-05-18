<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList"%>
<%
@SuppressWarnings("unchecked")
ArrayList<Objects.chucvu> cv = (ArrayList<Objects.chucvu>) request.getAttribute("cv");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ủy Ban Nhân Dân Vọng Đông</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/fontawesome.css">
</head>
<body style="background-image: url('images/hethong/background.png');">
	<div style="width: 100%; margin: auto;">
		<form action="nguoidung_insert" method="post">

		
			<table style="width: 30%; height: 280px; margin: 50px auto">
				<tr>
					<td colspan="2"><h2 style="color: #B40404; font-weight: bold;">Thêm
							người dùng</h2></td>
				</tr>
				<tr>
					<td><lable>Họ tên</lable></td>
					<td><input type="text" name="txttennguoidung"></td>
				</tr>
				<tr>
					<td><label>Địa chỉ</label></td>
					<td><input type="text" name="txtdiachi"></td>
				</tr>
				<tr>
					<td><label>Ngày sinh</label></td>
					<td><input type="date" name="ngaysinh"></td>
				</tr>
				<tr>
					<td><label>Số điện thoại</label></td>
					<td><input type="text" name="txtsdt"></td>
				</tr>
				<tr>
					<td><label>Chức vụ</label></td>
					<td><select name="chucvu">
							<option value="0">--Chọn--</option>
							<%
							for (int i = 0; i < cv.size(); i++) {
							%>
							<option value="<%=cv.get(i).getId_chucvu()%>"><%=cv.get(i).getChucvu()%></option>
							<%
							}
							%>
					</select></td>
				</tr>

			</table>
			<button type="submit"
				style="margin-left: 50%;border: solid white; height: 40px; font-size: 12pt; font-weight: bold; background-color: #088A08; color: white; border-radius: 5px">Thêm người dùng</button>
		</form>

	</div>

</body>
</html>