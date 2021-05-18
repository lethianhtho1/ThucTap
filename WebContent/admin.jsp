<%@page import="Objects.nguoidung"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%
@SuppressWarnings("unchecked")
ArrayList<nguoidung> nd = (ArrayList<nguoidung>) request.getAttribute("nd");
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<link rel="stylesheet" type="text/css" href="css/fontawesome.css">
<link rel="stylesheet" href="dist/css/adminlte.min.css">
<link rel="stylesheet"
	href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<title>Ủy Ban Nhân Dân Vọng Đông</title>
</head>
<body class="hold-transition sidebar-mini layout-fixed"
	data-panel-auto-height-mode="height" style="overflow-y: hidden">
	<div class="wrapper">
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light"
			style="height: 40px">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" role="button"><i class="fas fa-bars"></i></a></li>
			</ul>
		</nav>
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<a href="#" class="brand-link"> <img
				src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo"
				class="brand-image img-circle elevation-3" style="opacity: .8">
				<span class="brand-text font-weight-light">Admin</span>
			</a>
			<div class="sidebar">
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<img
							src="images/nhansu/<%if (nd != null) {
	for (int i = 0; i < nd.size(); i++) {

		if (nd.get(i).getId_nguoidung() == (int) (session.getAttribute("id_nguoidung"))) {
			out.print(nd.get(i).getHinhanh());
			break;
		}
	}
}%>"
							class="img-circle elevation-2">
					</div>
					<div class="info">
						<a href="#" class="d-block"> <%
 if (nd != null) {
 	for (int i = 0; i < nd.size(); i++) {

 		if (nd.get(i).getId_nguoidung() == (int) (session.getAttribute("id_nguoidung"))) {
 	out.print(nd.get(i).getTennguoidung());
 	break;
 		}
 	}
 }
 %>
						</a>
					</div>
				</div>
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<li class="nav-item"><a href="quanly_anhbia.jsp"
							class="nav-link"> <i class="nav-icon fas fa-th"></i>
								<p>Quảng cáo</p>
						</a></li>
						<li class="nav-item"><a href="chude" class="nav-link"> <i class="nav-icon fad fa-clipboard-list"></i>
								<p>Chủ đề</p>
						</a></li>
						<li class="nav-item"><a href="baiviet" class="nav-link">
								<i class="nav-icon fad fa-books"></i>
								<p>Bài viết</p>
						</a></li>
						<li class="nav-item"><a href="nguoidung" class="nav-link">
								<i class="nav-icon far fa-book-user"></i>
								<p>Người dùng</p>
						</a></li>
						<li class="nav-item"><a href="taikhoan" class="nav-link">
								<i class="nav-icon fad fa-user-tie"></i>
								<p>Tài khoản</p>
						</a></li>
						<li class="nav-item"><a href="chucvu" class="nav-link"><i class="nav-icon fad fa-book-reader"></i>
								<p>Chức vụ</p>
						</a></li>
					</ul>
				</nav>
			</div>
		</aside>
		<div class="content-wrapper iframe-mode" data-widget="iframe"
			data-loading-screen="750">
			<div
				class="nav navbar navbar-expand navbar-white navbar-light border-bottom p-0">
				<div class="nav-item dropdown">
					<a class="nav-link bg-danger dropdown-toggle"
						data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
						aria-expanded="false">Close</a>
					<div class="dropdown-menu mt-0">
						<a class="dropdown-item" href="#" data-widget="iframe-close"
							data-type="all">Close All</a> <a class="dropdown-item" href="#"
							data-widget="iframe-close" data-type="all-other">Close All
							Other</a>
					</div>
				</div>
				<ul class="navbar-nav overflow-hidden" role="tablist"></ul>
			</div>
			<div class="tab-content">
				<div class="tab-empty">
					<h2 class="display-4">No tab selected!</h2>
				</div>

			</div>
		</div>
		<aside class="control-sidebar control-sidebar-dark"></aside>
	</div>
</body>
<script src="plugins/jquery/jquery.min.js"></script>
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<script>
	$.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- overlayScrollbars -->
<script
	src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
</html>