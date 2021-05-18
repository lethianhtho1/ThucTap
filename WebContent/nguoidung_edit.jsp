<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList"%>
<%
@SuppressWarnings("unchecked")
ArrayList<Objects.nguoidung> nd = (ArrayList<Objects.nguoidung>) request.getAttribute("nd");
%>
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
	<form action="nguoidung_edit" method="post">
		<table style="margin: 100px auto; width: 30%; height: 400px">
			<tr>
				<td colspan="2" style="text-align: center;"><h2
						style="color: #B40404; font-weight: bold;">Sửa người dùng</h2></td>
			</tr>
			<tr>
				<td colspan="2"><input type="text" name="txtid"
					value="<%=nd.get(0).getId_nguoidung()%>" hidden></td>
			</tr>
			<tr>
				<td><b>- Họ tên</b></td>
				<td style="width: 60%"><input type="text"
					name="txttennguoidung" style="width: 100%"
					value="<%=nd.get(0).getTennguoidung()%>"></td>
			</tr>
			<tr>
				<td><b>- Địa chỉ</b></td>
				<td><input type="text" name="txtdiachi" style="width: 100%"
					value="<%=nd.get(0).getDiachi()%>"></td>
			</tr>
			<tr>
				<td><b>- Ngày sinh</b></td>
				<td><input type="date" name="ngaysinh" style="width: 100%"
					value="<%=nd.get(0).getNgaysinh()%>"></td>
			</tr>
			<tr>
				<td><b>- Số điện thoại</b></td>
				<td><input type="text" name="txtsdt" style="width: 100%"
					value="<%=nd.get(0).getSdt()%>"></td>
			</tr>
			<tr>
				<td><b>- Chức vụ</b></td>
				<td><select name="idchucvu" style="width: 100%">
						<option value="0">--Chọn--</option>
						<%
						for (int i = 0; i < cv.size(); i++) {
						%>
						<option value="<%=cv.get(i).getId_chucvu()%>"
							<%if (cv.get(i).getId_chucvu() == nd.get(0).getId_chucvu())
								out.print("selected");%>>
							<%=cv.get(i).getChucvu()%></option>
						<%
						}
						%>
				</select></td>
			</tr>
			<tr>
				<td colspan="2"><button type="submit"
						style="margin-left: 70%; margin-top: 20px; border: solid white; height: 40px; font-size: 12pt; font-weight: bold; background-color: #088A08; color: white; border-radius: 5px">Cập
						nhật</button></td>
			</tr>
		</table>

	</form>
</body>
</html>