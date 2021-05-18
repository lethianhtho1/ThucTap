<%@page import="Objects.baiviet"%>
<%@page import="Objects.nguoidung"%>
<%@page import="Objects.taikhoan"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%
@SuppressWarnings("unchecked")
ArrayList<baiviet> listbv = (ArrayList<baiviet>) request.getAttribute("listbv");
@SuppressWarnings("unchecked")
ArrayList<nguoidung> listnd = (ArrayList<nguoidung>) request.getAttribute("listnd");
@SuppressWarnings("unchecked")
ArrayList<taikhoan> listtk = (ArrayList<taikhoan>) request.getAttribute("listtk");
String bd = (String) request.getAttribute("bd");
String kt = (String) request.getAttribute("kt");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ủy Ban Nhân Dân Vọng Đông</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/fontawesome.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head>
<body
	style="background-image: url('images/hethong/background.png'); width: 100%">

	<h1 style="color: #B40404">Thống kê bài viết</h1>
	<div style="width: 80%; margin: auto">
		<div style="float: left;margin-right: 5%">
			<form action="baiviet_thongke" method="post">
				<label> Từ </label> <input type="date" name="bd"> <label>
					đến </label> <input type="date" name="kt">
				<button class="btn"
					style="background-color: #F2F2F2; border: solid thin gray;margin-top: -2px">
					<i class="fad fa-filter"></i>Lọc
				</button>
			</form>
		</div>
		<div style="margin-top: 22px">
			<a href="baiviet"><i class="fad fa-undo-alt fa-2x"
				style="color: #08088A"></i></a>
		</div>
		<hr>
		<%
		if (bd != null && kt != null) {
		%>
		<label style="color: red; width: 100%; text-align: center;">Lọc
			từ <%=bd%> đến <%=kt%><br></label>
		<%
		}
		%>
		<table class="table table-hover" style="width: 100%;background-color: white;box-shadow: 2px 2px 2px gray">
			<tr>
				<th>Tài khoản</th>
				<th>Họ tên</th>
				<th>Số lượng bài viết</th>
				<th>Tổng số lượt xem</th>
			</tr>

			<%
			if (listtk != null) {
				for (int i = 0; i < listtk.size(); i++) {
			%>
			<tr>
				<td><%=listtk.get(i).getTaikhoan()%></td>
				<td>
					<%
					if (listnd != null) {
						for (int j = 0; j < listnd.size(); j++) {
							if (listtk.get(i).getId_nguoidung() == listnd.get(j).getId_nguoidung()) {
						out.print(listnd.get(j).getTennguoidung());
						break;
							}
						}
					}
					%>
				</td>
				<td>
					<%
					int dem = 0;
					if (listbv != null) {
						for (int z = 0; z < listbv.size(); z++) {
							if (listbv.get(z).getTaikhoan().equalsIgnoreCase(listtk.get(i).getTaikhoan())) {
						dem++;
							}
						}
						out.print(dem);
					}
					%>
				</td>
				<td>
					<%
					int luotXem = 0;
					if (listbv != null) {
						for (int z = 0; z < listbv.size(); z++) {
							if (listbv.get(z).getTaikhoan().equalsIgnoreCase(listtk.get(i).getTaikhoan())) {
						luotXem += listbv.get(z).getLuotxem();
							}

						}
						out.print(luotXem);
					}
					%>
				</td>
			</tr>
			<%
			}
			}
			%>
		</table>

	</div>

</body>
</html>