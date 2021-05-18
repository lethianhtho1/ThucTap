<%@page import="Objects.nguoidung"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<style>
.menu-icon:hover {
	font-size: 13pt;
	font-weight: bold;
	color: #610B0B !important;
}

a.menu-icon {
	padding: auto;
}
</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>

<script type="text/javascript" src="jquery.min.js"></script>

<div style="color: white; width: 100%;">
	<div
		style="width: 80%; height: 30px; float: left; background-color: #E6E6E6; color: black; font-size: 15pt; font-family: Perpetua">
		<marquee>Chào mừng bạn đến với UBND xã Vọng Đông</marquee>
	</div>
	<div
		style="width: 20%; height: 30px; background-color: #BDBDBD; float: left;">
		<%
		if (session.getAttribute("taikhoan") == null) {
		%>
		<a href="dangnhap.jsp" style="margin-left: 15%"><button
				type="submit" class="btn btn-success"
				style="height: 25px; margin-top: 2px">
				<p style="margin-top: -6px">Đăng nhập</p>
			</button></a>
		<%
		} else {

		@SuppressWarnings("unchecked")
		ArrayList<nguoidung> nd = (ArrayList<nguoidung>) request.getAttribute("nd");
		%>
		<p style="margin: 0 5% 0 5%; float: left">
			<%
			if (nd != null) {
				for (int i = 0; i < nd.size(); i++) {

					if (nd.get(i).getId_nguoidung() == (int) (session.getAttribute("id_nguoidung"))) {
				out.print(nd.get(i).getTennguoidung());
				break;
					}
				}
			}
			%>
		</p>
		<a href="taikhoan_dangxuat"><button type="submit"
				class="btn btn-success" style="height: 25px;">
				<p style="margin-top: -7px">Đăng xuất</p>
			</button></a>
		<%
		}
		%>
	</div>
</div>

<div style="height: 125px; width: 100%; overflow: hidden;">
	<img src="images/hethong/uyban.jpg"
		style="width: 30%; margin: -110px 0 0 70%"> <img
		src="images/hethong/trongdong.png"
		style="width: 180%; height: 500px; margin: -330px 0 0 -45%"> <img
		src="images/hethong/logodoan.png"
		style="width: 8%; margin: -340px 0 0 -130%">
	<h1 style="margin: -270px 0 0 18%; color: #DF0101">Ủy Ban Nhân Dân
		Xã Vọng Đông</h1>
</div>

<nav id="navbar" class="navbar navbar-expand-lg navbar-light bg-light"
	style="box-shadow: 1px 2px 3px gray; height: 50px">
	<div class="container-fluid">
		<a class="navbar-brand menu-icon" href="index.jsp"><i
			class="fad fa-home-lg" style=""> </i> Trang chủ</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNavDarkDropdown"
			aria-controls="navbarNavDarkDropdown" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse">
			<ul class="navbar-nav">
				<a class="nav-link menu-icon" href="tintuc" style="color: black;">&emsp;<i
					class="fad fa-newspaper"></i> Tin tức
				</a>
				<a class="nav-link menu-icon" href="dulich" style="color: black;">
					&emsp;<i class="fad fa-island-tropical"></i> Du lịch
				</a>
				<a class="nav-link menu-icon" href="hoidap" style="color: black;">
					&emsp;<i class="fad fa-question-circle"></i> Hỏi đáp
				</a>
				<a class="nav-link menu-icon" href="gioithieu" style="color: black;">
					&emsp;<i class="fad fa-info-square"></i> Giới thiệu
				</a>
				<%
				if (session.getAttribute("taikhoan") != null) {
				%>
				<a class="nav-link menu-icon" href="hoso" style="color: black;">
					&emsp;<i class="fad fa-address-card"></i> Hồ sơ
				</a>
				<%
				}
				%>
				<%
				if (session.getAttribute("taikhoan") != null) {
					String sessionQuyenHan = "";
					if (session.getAttribute("quyenhan") != null)
						sessionQuyenHan = session.getAttribute("quyenhan").toString();
					if (sessionQuyenHan.equals("Admin")) {
				%>
				<a class="nav-link menu-icon" href="admin_quangcao"
					style="color: black;"> &emsp;<i class="fad fa-tasks"></i> Quản
					lý
				</a>
				<%
				} else {
				%>
				<a class="nav-link menu-icon" href="baiviet_insert_us"
					style="color: black;"> &emsp;<i class="fad fa-books-medical"></i>
					Đăng bài viết
				</a>
				<%
				}
				}
				%>

				<div style="position: relative;">
					<form action="timkiem" method="get">
						<input type="text" name="timkiem" placeholder="Tìm kiếm bài viết"
							style="margin: 4px 0 0 2%">
						<button
							style="position: absolute; margin: -28px 0 0 85%; border: hidden; background-color: transparent">
							<i class="fad fa-search" style="color: #0101DF;"></i>
						</button>
					</form>
				</div>
			</ul>
		</div>
	</div>
</nav>
<script type="text/javascript">
	$(window).scroll(function(e) {
		var $el = $('#navbar');
		var isPositionFixed = ($el.css('position') == 'fixed');
		if ($(this).scrollTop() > 20 && !isPositionFixed) {
			$el.css({
				'position' : 'fixed',
				'top' : '0px'
			});
			$el.css({
				'box-shadow' : '0px 3px 6px black'
			});
		}
		if ($(this).scrollTop() < 20 && isPositionFixed) {
			$el.css({
				'position' : 'absolute',
				'top' : '20px'
			});
			$el.css({
				'box-shadow' : 'none'
			});
		}
	});
</script>