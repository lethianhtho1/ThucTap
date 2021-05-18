<%@page import="Objects.nguoidung"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<% @SuppressWarnings("unchecked") ArrayList<nguoidung> nd = (ArrayList<nguoidung>)request.getAttribute("nd"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ủy Ban Nhân Dân Vọng Đông</title>
<script type="text/javascript" src="js/ckeditor/ckeditor.js"> </script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/fontawesome.css">
<script src="/js/jquery.min.js" type="text/javascript"></script>  
<script src="/js/ajaxupload.js" type="text/javascript"></script>
</head>
<body style="background-image: url('images/hethong/background.png')">
	
	<form action="taikhoan_insert" method="post">
		<table style="margin: 100px auto;height: 350px;width: 35%;">
			<tr>
				<td colspan="2" style="text-align: center;"><h2 style="color: red;"><b>Thêm Tài Khoản</b></h2></td>
			</tr>
			<tr>
				<td><b>- Tên đăng nhập</b></td>
				<td style="width: 60%"><input type="text" style="width: 100%" name="txttaikhoan" required></td>
			</tr>
			<tr>
				<td><b>- Mật khẩu</b></td>
				<td style="width: 60%"><input type="password" style="width: 100%" name="txtmatkhau" required></td>
			</tr>
			<tr>
				<td><b>- Xác nhận mật khẩu</b></td>
				<td style="width: 60%"><input type="password" style="width: 100%" name="txtxacnhanmatkhau" required></td>
			</tr>
			<tr>
				<td><b>- Quyền hạn</b></td>
				<td  style="width: 60%">
					<select name="quyenhan" style="width: 100%">
						<option value="User">User</option>
						<option value="Admin">Admin</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><b>- Người dùng</b></td>
				<td  style="width: 60%">
					<select name="id_nguoidung" style="width: 100%">
						<option value="0">--Chọn--</option>
						<%
							for(int i=0;i<nd.size();i++)
							{
						%>
								<option value="<%=nd.get(i).getId_nguoidung()%>"><%=nd.get(i).getTennguoidung() %></option>
						<%	
							}
						%>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit"
				style="margin-left: 70%;margin-top: 20px;border: solid white; width: 25%; height: 40px; font-size: 12pt; font-weight: bold; background-color: #088A08; color: white; border-radius: 5px">Thêm</button>
				</td>
			</tr>
		</table>
	</form>

	
</body>
</html>