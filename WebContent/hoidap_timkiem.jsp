<%@page import="Objects.hoidap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%
@SuppressWarnings("unchecked")
ArrayList<hoidap> hdx = (ArrayList<hoidap>) request.getAttribute("hdx");
@SuppressWarnings("unchecked")
ArrayList<hoidap> hdy = (ArrayList<hoidap>) request.getAttribute("hdy");
String cauhoi = request.getAttribute("cauhoi").toString();
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
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="css/fontawesome.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<%@ include file="layout/header.jsp"%>

	<div style="width: 80%; margin: 50px auto;">
		<div
			style="background-color: white; width: 55%; height: 150px; float: left; border: solid thin gray; box-shadow: 1px 1px 3px gray">
			<div
				style="background-color: #DF3A01; font-weight: bold; color: white; width: 100%; height: 40px; font-size: 17pt;">
				<i class="fad fa-question-circle" style="margin-left: 1%"></i> Bạn
				cần hỏi gì ?
			</div>
			<form action="hoidap_hoi" method="post">
				<input type="text" name="cauhoi" placeholder="Nhập câu hỏi"
					style="width: 75%; height: 37px; margin: 35px 0 0 2%">
				<button type="submit"
					style="width: 20%; height: 35px; background-color: #08088A; color: white; border-radius: 3px; font-size: 14pt; font-weight: bold;">Đặt
					câu hỏi</button>
			</form>
		</div>

		<div
			style="border: solid thin gray; width: 40%; height: 150px; margin: 0 0 0 60%; box-shadow: 1px 1px 3px gray">
			<div
				style="background-color: #045FB4; font-weight: bold; color: white; width: 100%; height: 40px; font-size: 17pt; padding-left: 1%">
				Tìm câu hỏi</div>
			<form action="hoidap_timkiem" method="post">
				<input type="text" placeholder="Nhập câu hỏi cần tìm"
					style="width: 75%; height: 37px; margin: 35px 0 0 2%" name="cauhoi">
				<button type="submit"
					style="width: 20%; height: 35px; background-color: #08088A; color: white; border-radius: 3px; font-size: 14pt; font-weight: bold;">Tìm</button>
			</form>
		</div>
	</div>

	<h2>
		Danh sách câu hỏi được trả lời theo từ khóa "
		<%=cauhoi%>
		"
	</h2>
	<hr>
	<div style="width: 100%; margin: 50px auto">
		<table class="table table-striped"
			style="margin: 50px auto; width: 90%; box-shadow: 1px 1px 3px gray">


			<%
			if (session.getAttribute("taikhoan") == null) {
				if (hdy != null) {
			%>
			<tr style="text-align: center;">
				<th><b>Câu hỏi</b></th>
				<th><b>Trả lời</b></th>
				<th style="width: 10%"><b>Ngày hỏi</b></th>
				<th style="width: 10%"><b>Ngày trả lời</b></th>
			</tr>
			<%
			for (int i = 0; i < hdy.size(); i++) {
			%>
			<tr>
				<td style="border-right: solid thin gray;"><%=hdy.get(i).getCauhoi()%></td>
				<td style="border-right: solid thin gray;"><%=hdy.get(i).getTraloi()%></td>
				<td style="border-right: solid thin gray; text-align: center;"><%=hdy.get(i).getNgayhoi()%></td>
				<td style="text-align: center;"><%=hdy.get(i).getNgaytraloi()%></td>
			</tr>
			<%
			}
			}
			} else {
			if (hdx != null) {
			%>
			<tr style="text-align: center;">
				<th><b>Câu hỏi</b></th>
				<th><b>Đáp án</b></th>
				<th style="width: 10%"><b>Ngày hỏi</b></th>
				<th style="width: 10%"><b>Ngày trả lời</b></th>
				<th style="width: 9%">Chỉnh sửa</th>
				<%
				if (session.getAttribute("quyenhan").equals("Admin")) {
				%>
				<th style="width: 5%">Xóa</th>
				<%
				}
				%>
			</tr>
			<%
			for (int i = 0; i < hdx.size(); i++) {
			%>
			<tr>
				<td style="border-right: solid thin gray;"><%=hdx.get(i).getCauhoi()%></td>
				<td style="border-right: solid thin gray;"><%=hdx.get(i).getTraloi()%></td>
				<td style="border-right: solid thin gray; text-align: center;"><%=hdx.get(i).getNgayhoi()%></td>
				<td style="border-right: solid thin gray; text-align: center;"><%=hdx.get(i).getNgaytraloi()%></td>
				<td style="text-align: center;"><a
					href="hoidap_traloi?id=<%=hdx.get(i).getMahoidap()%>"><i
						class="fad fa-edit"></a></i></td>
				<%
				if (session.getAttribute("quyenhan").equals("Admin")) {
				%>
				<td style="border-left: solid thin gray; text-align: center;">
					<a href="hoidap_delete?id=<%=hdx.get(i).getMahoidap()%>"
					onclick="return confirm('Bạn có muốn xóa câu hỏi <%=hdx.get(i).getCauhoi()%> không?')"><i
						class="fad fa-trash-alt" style="color: #B40404;"></i></a>
				</td>
				<%
				}
				%>
			</tr>
			<%
			}
			}
			}
			%>


		</table>

	</div>
</body>
</html>