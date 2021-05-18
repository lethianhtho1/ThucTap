<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList"%>
<%
@SuppressWarnings("unchecked")
ArrayList<Objects.chude> cd = (ArrayList<Objects.chude>) request.getAttribute("cd");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ủy Ban Nhân Dân Vọng Đông</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/fontawesome.css">
<style type="text/css">
.scrollbar {
	background-color: #F5F5F5;
	overflow-y: scroll;
}

#style-1::-webkit-scrollbar {
	width: 5px;
	background-color: #F5F5F5;
}

#style-1::-webkit-scrollbar-thumb {
	background-color: red;
}

#style-1::-webkit-scrollbar-track {
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
	background-color: #F5F5F5;
}
</style>
</head>
<body style="background-image: url('images/hethong/background.png')">

	<form action="chude_insert" method="post">
		<table style="margin: 50px auto;">
			<tr>
				<td colspan="2"
					style="text-align: center; color: red; font-size: 18pt; font-weight: bold;">Thêm
					chủ đề</td>
			</tr>
			<tr>
				<td><label>Tên chủ đề</label></td>
				<td><input type="text" name="txttenchude"></td>
			</tr>
			<tr>
				<td colspan="2" style="padding-left: 80%"><button>Thêm</button></td>
			</tr>
		</table>
	</form>

	<hr>
	<div class="scrollbar" id="style-1"
		style="height: 300px; overflow-x: hidden; width: 50%; margin: 10px auto;">
		<div class="force-overflow">
			<table class="table table-striped table-hover"
				style="width: 100%; text-align: center; background-color: white; box-shadow: 2px 2px 2px gray;">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">Tên Chủ Đề</th>
						<th scope="col">Sửa</th>
						<th scope="col">Xóa</th>
					</tr>
				</thead>
				<tbody>
					<%
					for (int i = 0; i < cd.size(); i++) {
					%>
					<tr>
						<td><%=i + 1%></td>
						<td><%=cd.get(i).getTenchude()%></td>
						<td><a href="chude_edit?id=<%=cd.get(i).getId_chude()%>"><i
								class="fad fa-edit" style="color: #0101DF;"></i></a></td>
						<td><a href="chude_delete?id=<%=cd.get(i).getId_chude()%>"
							onclick="return confirm('Bạn có muốn xóa chủ đề <%=cd.get(i).getTenchude()%> không?Việc xóa này sẽ xóa các dữ liệu liên quan!')"><i
								class="fad fa-trash-alt" style="color: #B40404;"></i></a></td>
					</tr>

					<%
					}
					%>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
