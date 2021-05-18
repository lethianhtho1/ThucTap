<%@page import="Objects.baiviet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%
baiviet bvct = (baiviet) request.getAttribute("bvct");
@SuppressWarnings("unchecked")
ArrayList<Objects.baiviet> bvlq = (ArrayList<Objects.baiviet>) request.getAttribute("bvlq");
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

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
		<img src="images/quangcao/quangcao4.png"
			style="width: 100%; margin: 20px 0 0 5%">
	</div>


	<div style="width: 70%; margin: 20px 0 0 23%">
		<h3 style=""><%=bvct.getTieude()%></h3>
		<div style="float: left; margin: 6px 0 0 3%">
			<i class="fal fa-calendar-alt"
				style="color: red; margin-bottom: 1%; font-size: 10pt;"> </i>
		</div>
		<div style="float: left; margin: 7px 1% 0 1%"><%=bvct.getNgaydang()%></div>
		<div style="float: left; margin: 6px 0 0 1%">
			<i class="fad fa-eye" style="color: black; font-size: 9pt"></i>
		</div>
		<div style="float: left; margin: 7px 0 20px 1%"><%=bvct.getLuotxem()%>
			lượt xem
		</div>
		<div style="margin-bottom: 20px">&nbsp;</div>
		<br>
		<div style="margin-left: 3%">
			<%=bvct.getNoidung()%>
		</div>
	</div>

	<div style="width: 70%; margin-left: 25%;">
		<%
		if (bvlq != null) {
		%>
		<h3>Bài viết liên quan</h3>
		<%
		for (int j = 0; j < 4 && j < bvlq.size(); j++) {
		%>
		<a
			href="baiviet_chitiet?tieude=<%=bvlq.get(j).getTieude_khongdau()%>&id=<%=bvlq.get(j).getId_baiviet()%>"
			style="color: #424242">
			<div
				style="width: 20%; height: 290px; background-color: #F2F2F2; float: left; margin: 10px 4% 0 1%; border: solid thin #D8D8D8; text-align: center;">
				<img src="images/<%=bvlq.get(j).getHinhanh()%>"
					style="width: 100%; height: 150px"> <span
					style="font-weight: bold; font-family: Garamond;"><%=bvlq.get(j).getTieude()%></span>
				<br>
				<div style="text-align: left;">
					<i class="fal fa-calendar-alt"
						style="color: red; margin-left: 2%; margin-bottom: 1%; font-size: 10pt;">
					</i> <i
						style="color: gray; font-weight: inherit; font-size: 10pt; margin-bottom: 2px">
						(<%=bvlq.get(j).getNgaydang()%>)
					</i>
				</div>
			</div>
		</a>
		<%
		}
		%>
		<div style="text-align: right; margin: 300px 3% 0 0;">
			<a href="baiviet_chude?id=<%=bvlq.get(0).getMachude()%>"
				style="color: red; text-decoration: none; font-weight: bold;">Xem
				thêm <i class="fad fa-plus" style="color: red; font-size: 10pt;"></i>
			</a>
		</div>
		<hr>
		<%
		}
		%>

	</div>
	<%@ include file="layout/footer.jsp"%>

</body>
</html>
