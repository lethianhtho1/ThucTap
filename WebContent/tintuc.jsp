<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%
@SuppressWarnings("unchecked")
ArrayList<Objects.baiviet> bvm = (ArrayList<Objects.baiviet>) request.getAttribute("bvm");
@SuppressWarnings("unchecked")
ArrayList<Objects.chude> cd1 = (ArrayList<Objects.chude>) request.getAttribute("cd1");
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
</style>
</head>
<body style="background-image: url('images/hethong/backgroundweb.png'); background-size: cover;">
	<%@ include file="layout/header.jsp"%>
	<div style="width: 20%; float: left">
		<%@ include file="layout/menu_danhmuc.jsp"%>
		<img src="images/quangcao/quangcao1.png"
		style="width: 100%; margin:20px 0 0 5%">
	</div>
	<div style="width: 75%; margin: 20px 0 0 22%">
		<table
			style="width: 100%; margin: 20px 0px 0px 2%; border: 1px solid #D8D8D8; background-color: #FAFAFA;">
			<tr style="width: 100%;">

				<td style="max-width: 60%; text-align: center;">

					<table style="width: 100%">
						<tr>
							<td>
								<div id="carouselExampleIndicators" class="carousel slide"
									data-bs-ride="carousel">
									<div class="carousel-indicators">
										<button type="button"
											data-bs-target="#carouselExampleIndicators"
											data-bs-slide-to="0" class="active" aria-current="true"
											aria-label="Slide 1"></button>
										<button type="button"
											data-bs-target="#carouselExampleIndicators"
											data-bs-slide-to="1" aria-label="Slide 2"></button>
										<button type="button"
											data-bs-target="#carouselExampleIndicators"
											data-bs-slide-to="2" aria-label="Slide 3"></button>
									</div>

									<div class="carousel-inner">
										<%
										int dem = 0;
										if (bvm != null) {
											for (int i = 0; i < 3; i++) {
										%>
										<div class=<%if (dem == 0) {%> "carousel-item
											active"<%} else {%>"carousel-item"<%}%>>
											<a
												href="baiviet_chitiet?tieude=<%=bvm.get(i).getTieude_khongdau()%>&id=<%=bvm.get(i).getId_baiviet()%>"
												style="text-decoration: none; color: black"> <img
												src="images/<%=bvm.get(i).getHinhanh()%>"
												style="width: 100%; height: 320px;" class="d-block">
												<h5 style="font-family: Garamond; font-weight: bold;"><%=bvm.get(i).getTieude()%></h5>
											</a>
										</div>
										<%
										dem++;
										}
										}
										%>

									</div>
									<button class="carousel-control-prev" type="button"
										data-bs-target="#carouselExampleIndicators"
										data-bs-slide="prev"
										style="background-color: transparent; border: none">
										<span class="carousel-control-prev-icon" aria-hidden="true"></span>
										<span class="visually-hidden">Previous</span>
									</button>
									<button class="carousel-control-next" type="button"
										data-bs-target="#carouselExampleIndicators"
										data-bs-slide="next"
										style="background-color: transparent; border: none">
										<span class="carousel-control-next-icon" aria-hidden="true"></span>
										<span class="visually-hidden">Next</span>
									</button>
								</div>

							</td>
						</tr>
					</table>
				</td>
				<td rowspan="2" style="width: 40%">
					<div class="scrollbar" id="style-1"
						style="width: 100%; height: 315px; margin-top: 0px">
						<div class="force-overflow">
							<table
								style="border-spacing: 15px; height: 100%; width: 100%; height: 150px;">
								<%
								if (bvm != null) {
									for (int i = 3; i < 10; i++) {
								%>
								<tr>

									<td rowspan="2"
										style="width: 40%; padding: 5px 5px 10px 0; border-bottom: solid thin gray;"><a
										href="baiviet_chitiet?tieude=<%=bvm.get(i).getTieude_khongdau()%>&id=<%=bvm.get(i).getId_baiviet()%>"
										style="text-decoration: none; color: black;"> <img
											src="images/<%=bvm.get(i).getHinhanh()%>"
											style="width: 100%; left; height: 90px">
									</a></td>
									<td style="height: 20px"><i class="fal fa-calendar-alt"
										style="color: red; font-size: 10pt"></i><i
										style="color: gray; font-weight: inherit; font-size: 10pt">
											(<%=bvm.get(i).getNgaydang()%>)
									</i><br> <i class="fad fa-eye"
										style="color: black; font-size: 10pt"></i><i
										style="color: gray; font-weight: inherit; font-size: 10pt">
											<%=bvm.get(i).getLuotxem()%> lượt xem
									</i></td>
								</tr>
								<tr>
									<td style="width: 60%; border-bottom: solid thin gray;"><a
										href="baiviet_chitiet?tieude=<%=bvm.get(i).getTieude_khongdau()%>&id=<%=bvm.get(i).getId_baiviet()%>"
										style="text-decoration: none; color: black;">

											<h5
												style="font-family: Garamond; font-weight: bold; font-size: 13pt"><%=bvm.get(i).getTieude()%></h5>
									</a></td>
								</tr>

								<%
								}
								}
								%>
							</table>
						</div>
					</div>
				</td>
			</tr>
		</table>
	</div>
	<div style="width: 75%; margin: 20px 0 0 22%">
		<%
		if (cd1 != null) {
			for (int i = 0; i < cd1.size(); i++) {
		%>
		<h2><%=cd1.get(i).getTenchude()%></h2>
		<%
		@SuppressWarnings("unchecked")
		ArrayList<Objects.baiviet> bv = (ArrayList<Objects.baiviet>) request.getAttribute("bvtab" + i);
		if (bv != null) {
			for (int j = 0; j < 4; j++) {
		%>
		<a
			href="baiviet_chitiet?tieude=<%=bv.get(j).getTieude_khongdau()%>&id=<%=bv.get(j).getId_baiviet()%>"
			style="color: #424242">
			<div
				style="width: 20%; height: 290px; background-color: #F2F2F2; float: left; margin: 10px 4% 0 1%; border: solid thin #D8D8D8; text-align: center;">
				<img src="images/<%=bv.get(j).getHinhanh()%>"
					style="width: 100%; height: 150px"> <span
					style="font-weight: bold; font-family: Garamond;"><%=bv.get(j).getTieude()%></span>
				<br>
				<div style="text-align: left;">
					<i class="fal fa-calendar-alt"
						style="color: red; margin-left: 2%; margin-bottom: 1%; font-size: 10pt;">
					</i> <i
						style="color: gray; font-weight: inherit; font-size: 10pt; margin-bottom: 2px">
						(<%=bv.get(j).getNgaydang()%>)
					</i>
				</div>
			</div>
		</a>
		<%
		}
		%>
		<div style="text-align: right; margin: 0px 3% 0 0;">
			<a href="baiviet_chude?id=<%=cd1.get(i).getId_chude()%>"
				style="color: red; text-decoration: none; font-weight: bold;">Xem
				thêm <i class="fad fa-plus" style="color: red; font-size: 10pt;"></i>
			</a>
		</div>
		<hr>
		<%
		}
		}
		}
		%>
	</div>
	<%@ include file="layout/footer.jsp"%>
</body>
</html>