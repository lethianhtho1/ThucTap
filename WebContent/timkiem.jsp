<%@page import="Objects.baiviet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%
@SuppressWarnings("unchecked")
ArrayList<baiviet> bvtk = (ArrayList<baiviet>) request.getAttribute("bvtk");
String tukhoa = (String) request.getAttribute("id");
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
<style type="text/css">
.scrollbar {
	background-color: #F5F5F5;
	overflow-y: scroll;
}

.force-overflow {
	min-height: 450px;
}

#style-1::-webkit-scrollbar {
	width: 6px;
	background-color: #F5F5F5;
}

#style-1::-webkit-scrollbar-thumb {
	background-color: #0B0B61;
}

#style-1::-webkit-scrollbar-track {
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
	background-color: #F5F5F5;
}
</style>
</head>
<body style="background-image: url('images/hethong/backgroundweb.png'); background-size: cover;">
	<%@ include file="layout/header.jsp"%>
	<div style="width: 20%; float: left">
		<%@ include file="layout/menu_danhmuc.jsp"%>
		<%
		if (bvtk != null) {
			if (bvtk.size() > 3) {
		%>
		<img src="images/quangcao/quangcao3.png"
			style="width: 100%; margin: 20px 0 0 5%">
		<%
		}
		}
		%>
	</div>

	<div style="width: 70%; color: blue; margin: 10px 0 0 24%">
		<h4>
			Kết quả tìm kiếm theo từ khóa "
			<%=tukhoa%>
			"
		</h4>
		<%
		if (bvtk != null) {
			for (int i = 0; i < bvtk.size(); i++) {
		%>
		<a
			href="baiviet_chitiet?tieude=<%=bvtk.get(i).getTieude_khongdau()%>&id=<%=bvtk.get(i).getId_baiviet()%>"
			style="text-decoration: none">
			<div
				style="border: solid thin gray; width: 100%; height: 100px; margin-top: 10px; overflow: hidden">
				<table>
					<tr>
						<td rowspan="2"><img
							src="images/<%=bvtk.get(i).getHinhanh()%>" style="width: 150px;height: 100px;margin-top: -23px"></td>
						<td>
							<div
								style="font-size: 14pt; margin-left: 5px; text-decoration: underline; padding-bottom: 10px"><%=bvtk.get(i).getTieude()%></div>
						</td>
					</tr>
					<tr>

						<td>
							<div
								style="font-size: 12pt; margin-top: -3px; overflow: auto; margin-left: 10px; color: black; overflow: hidden; height: 80px">
								<div><%=bvtk.get(i).getNoidung()%></div>
							</div>
						</td>
					</tr>
				</table>

			</div>
		</a>
		<%
		}
		if (bvtk.size() < 1) {
		%>
		<i class="fad fa-exclamation-circle fa-5x"
			style="margin: 100px 2% 0 20%; float: left; color: #FF8000"></i>
		<div style="font-size: 26pt; margin: 120px 0 180px 0; color: #FF8000">Không
			tìm thấy bài viết</div>
		<%
		}
		}
		%>
	</div>
	<%@ include file="layout/footer.jsp"%>
</body>
</html>