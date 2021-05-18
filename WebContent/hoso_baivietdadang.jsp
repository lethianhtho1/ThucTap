<%@page import="Objects.taikhoan"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%
@SuppressWarnings("unchecked")
ArrayList<Objects.baiviet> bv = (ArrayList<Objects.baiviet>) request.getAttribute("bv");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ủy Ban Nhân Dân Vọng Đông</title>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"
	integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"
	integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="css/fontawesome.css">
<link rel="stylesheet" type="text/css" href="css/FileCss.css">

</head>
<body style="background-image: url('images/hethong/backgroundweb.png'); background-size: cover;">
	<%@ include file="layout/header.jsp"%>

	<div style="width: 27%;">
		<%@ include file="layout/menu_hoso.jsp"%>
	</div>

	<h2>Danh sách bài viết của bạn</h2>
	<br>
	<div style="width: 90%; margin-left: 5%;">
		<table class="table table-striped"
			style="width: 100%; margin: 10px auto; text-align: center;"
			cellpadding="2">
			<thead>
				<tr>
					<th scope="col" style="width: 5%">#</th>
					<th scope="col">Hình ảnh</th>
					<th scope="col">Tiêu đề</th>
					<th scope="col">Ngày đăng</th>
					<th scope="col">Trạng thái</th>
					<th scope="col">Lượt xem</th>
					<th scope="col">Sửa</th>
					<th scope="col">Xóa</th>
				</tr>
			</thead>
			<tbody>
				<%
				if (bv != null) {
					for (int i = 0; i < bv.size(); i++) {
				%>
				<tr style="height: 0px">
					<td><%=i + 1%></td>
					<td><img src="images/<%=bv.get(i).getHinhanh()%>"
						style="width: 100px"></td>
					<td><%=bv.get(i).getTieude()%></td>
					<td><%=bv.get(i).getNgaydang()%></td>
					<td>
						<%
						int tt = bv.get(i).getTrangthai();
						if (tt == 1) {
							int id = bv.get(i).getId_baiviet();
							out.write(
							"<span style='background-color: green;border: solid thin;color:white;padding: 2px;box-shadow: 1px 1px 1px gray'>Đã duyệt</span>");
						} else {
							int id = bv.get(i).getId_baiviet();
							out.write(
							"<span style='background-color: #B40404;border: solid thin;color:white;padding: 2px;box-shadow: 1px 1px 1px gray'>Chưa duyệt</span>");
						}
						%>
					</td>

					<td><%=bv.get(i).getLuotxem()%></td>
					<td><a href="baiviet_edit?id=<%=bv.get(i).getId_baiviet()%>"><i
							class="fad fa-edit" style="color: #0101DF;"></i></a></td>
					<td><a href="baiviet_delete?id=<%=bv.get(i).getId_baiviet()%>" onclick="return confirm('Bạn có muốn xóa bài viết <%=bv.get(i).getTieude() %> không?')"><i
							class="fad fa-trash-alt" style="color: #B40404;"></i></a></td>
				</tr>

				<%
				}
				}
				%>
			</tbody>
		</table>

	</div>
</body>
</html>