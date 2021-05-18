<%@page import="Objects.baiviet"%>
<%@page import="Objects.chude"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%
@SuppressWarnings("unchecked")
ArrayList<baiviet> bv = (ArrayList<baiviet>) request.getAttribute("bv");
String chude = request.getAttribute("chude").toString();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ủy Ban Nhân Dân Vọng Đông</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/fontawesome.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style type="text/css">
.scrollbar {
	background-color: #F5F5F5;
	overflow-y: scroll;
}

#style-1::-webkit-scrollbar {
	width: 5px;
	background-color: #F5F5F5;
}

#style-2::-webkit-scrollbar {
	width: 5px;
	background-color: #F5F5F5;
}

#style-1::-webkit-scrollbar-thumb {
	background-color: red;
}

#style-2::-webkit-scrollbar-thumb {
	background-color: #0B0B61;
}

#style-1::-webkit-scrollbar-track {
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
	background-color: #F5F5F5;
}

#style-2::-webkit-scrollbar-track {
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
	background-color: #F5F5F5;
}

a.bv {
	text-decoration: none;
	color: black;
	width: 100%;
}
</style>
</head>
<body style="background-image: url('images/hethong/backgroundweb.png'); background-size: cover;">
	<%@ include file="layout/header.jsp"%>
	<div style="width: 20%; float: left ">
		<%@ include file="layout/menu_danhmuc.jsp"%>
		<%
		if (bv != null) {
			if (bv.size() > 3) {
		%>
		<img src="images/quangcao/quangcao2.png"
			style="width: 100%; margin: 20px 0 0 5%">
		<%
		}
		}
		%>

	</div>
	<div style="width: 75%; margin: 30px 0 80px 24%">
		<h2><%=chude%></h2>
		<%
		if (bv != null) {
			for (int i = 0; i < bv.size(); i++) {
		%>
		<div
			style="width: 99%; border: solid thin gray; height: 200px; margin-top: 10px; overflow: hidden;">
			<table style="width: 100%">
				<tr style="width: 100%">
					<td rowspan="2" style="width: 30%; height: 200px;">
						<div style="width: 100%">
							<a class="bv"
								href="baiviet_chitiet?tieude=<%=bv.get(i).getTieude_khongdau()%>&id=<%=bv.get(i).getId_baiviet()%>">
								<img src="images/<%=bv.get(i).getHinhanh()%>"
								style="height: 190px; width: 310px">
							</a>
						</div>
					</td>
					<td style="width: 70%; height: 50px;">
						<div style="height: 50px; overflow: hidden; width: 100%">
							<a class="bv" style="font-weight: bold; font-size: 14pt;"
								href="baiviet_chitiet?tieude=<%=bv.get(i).getTieude_khongdau()%>&id=<%=bv.get(i).getId_baiviet()%>">
								<%=bv.get(i).getTieude()%>
							</a>
						</div>
					</td>

				</tr>
				<tr>
					<td style="width: 10%; height: 150px">
						<div style="height: 150px; width: 100%; overflow: hiiden">
							<a class="bv" style="color: gray"
								href="baiviet_chitiet?tieude=<%=bv.get(i).getTieude_khongdau()%>&id=<%=bv.get(i).getId_baiviet()%>">
								<%=bv.get(i).getNoidung()%>
							</a>
						</div>
					</td>
				</tr>
			</table>
		</div>

		<%
		}
		if (bv.size() < 1) {
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