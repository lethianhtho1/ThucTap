<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%
@SuppressWarnings("unchecked")
ArrayList<Objects.baiviet> bv = (ArrayList<Objects.baiviet>) request.getAttribute("list");
String tuKhoa = (String) request.getAttribute("tuKhoa");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ủy Ban Nhân Dân Vọng Đông</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/fontawesome.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.mySlides {
	display: none
}
</style>
</head>
<body
	style="background-image: url('images/hethong/background.png'); width: 100%">
	<h1 style="color: #8A0808">
		Danh sách bài viết theo từ khóa '
		<%=tuKhoa%>
		'
	</h1>
	<h3 style="float: left; margin-right: 5%">
		<a href="baiviet_insert" style="text-decoration: none; color: #3A01DF"><i
			class="fad fa-plus"></i> Thêm bài viết</a>
	</h3>
	<div style="margin: 13px 4% 0 2px; float: left;">
		<form action="baiviet_find" method="post">
			<input type="text" name="tieuDe" style="float: left;position: relative ;"
				placeholder="Nhập bài viết cần tìm">
			<button style="position: absolute;margin:2px 0 0 -2.5%;border: none;background: transparent;"><i class="fad fa-search"></i></button>
		</form>
	</div>
	<div style="margin-top: 22px">
		<a href="baiviet"><i class="fad fa-undo-alt fa-2x"
			style="color: #08088A"></i></a>
	</div>
	<hr>
	<div class="w3-content" style="width: 100%">
		<%
		int slPage = 0;
		if (bv != null) {
			slPage = bv.size() / 3;
			if (bv.size() % 3 > 0) {
				slPage++;
			}
			int k = 0;
			for (int j = 0; j < slPage; j++) {
		%>
		<table class="table table-striped table-hover mySlides"
			style="width: 110%; margin-left: -5%; height: 310px; text-align: center; background-color: white; box-shadow: 2px 2px 2px gray"
			cellpadding="2">
			<thead>
				<tr>
					<th scope="col" style="width: 5%">#</th>
					<th scope="col" style="width: 15%">Hình ảnh</th>
					<th scope="col" style="width: 25%">Tiêu đề</th>
					<th scope="col" style="width: 10%">Ngày đăng</th>
					<th scope="col" style="width: 15%">Trạng thái</th>
					<th scope="col" style="width: 12%">Người đăng</th>
					<th scope="col" style="width: 10%">Lượt xem</th>
					<th scope="col" style="width: 4%">Sửa</th>
					<th scope="col" style="width: 4%">Xóa</th>
				</tr>
			</thead>

			<tbody>
				<%
				for (int i = k; i < k + 3 && i < bv.size(); i++) {
				%>

				<tr style="width: 100%; height: 90px">
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
							out.write("<a style='text-decoration: none' href='baiviet_huydiet?id=" + id
							+ "'><span style='background-color: green;border: solid thin;color:white;padding: 2px;box-shadow: 1px 1px 1px gray'>Đã duyệt</span></a>");
						} else {
							int id = bv.get(i).getId_baiviet();
							out.write("<a style='text-decoration: none' href='baiviet_duyet?id=" + id
							+ "'><span style='background-color: #B40404;border: solid thin;color:white;padding: 2px;box-shadow: 1px 1px 1px gray'>Chưa duyệt</span></a>");
						}
						%>
					</td>
					<td><%=bv.get(i).getTaikhoan()%></td>
					<td><%=bv.get(i).getLuotxem()%></td>
					<td><a
						href="baiviet_edit?id=<%=bv.get(i).getId_baiviet()%>&quyen=Admin"><i
							class="fad fa-edit" style="color: #0101DF;"></i></a></td>
					<td><a
						href="baiviet_delete?id=<%=bv.get(i).getId_baiviet()%>&quyen=Admin"
						onclick="return confirm('Bạn có muốn xóa bài viết <%=bv.get(i).getTieude()%> không?')"><i
							class="fad fa-trash-alt" style="color: #B40404;"></i></a></td>
				</tr>

				<%
				}
				k += 3;
				}
				%>

			</tbody>
		</table>
	</div>
	<div class="w3-center">
		<%
		if (bv.size() > 0) {
		%>
		<div class="w3-section">
			<button class="w3-button w3-light-grey" onclick="plusDivs(-1)">❮
				Prev</button>
			<%
			for (int i = 1; i <= slPage; i++) {
			%>
			<button class="w3-button demo" onclick="currentDiv(<%=i%>)"><%=i%></button>
			<%
			}
			%>
			<button class="w3-button w3-light-grey" onclick="plusDivs(1)">Next
				❯</button>
		</div>
		<%
		} else {
		%>
		<i class="fad fa-exclamation-circle fa-5x"
			style="margin: -5px -25% 0 30%; float: left; color: #FF8000"></i>
		<div style="font-size: 26pt; margin: 120px 0 0 0; color: #FF8000">Không
			tìm thấy bài viết</div>
		<%
		}
		%>
	</div>
	<%
	}
	%>
	<script>
		var slideIndex = 1;
		showDivs(slideIndex);

		function plusDivs(n) {
			showDivs(slideIndex += n);
		}

		function currentDiv(n) {
			showDivs(slideIndex = n);
		}

		function showDivs(n) {
			var i;
			var x = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("demo");
			if (n > x.length) {
				slideIndex = 1
			}
			if (n < 1) {
				slideIndex = x.length
			}
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" w3-red", "");
			}
			x[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " w3-red";
		}
	</script>
</body>
</html>