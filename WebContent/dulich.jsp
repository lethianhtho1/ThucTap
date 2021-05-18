<%@page import="Objects.baiviet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%
@SuppressWarnings("unchecked")
ArrayList<baiviet> bvdl = (ArrayList<baiviet>) request.getAttribute("bvdl");
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
<link rel="stylesheet" type="text/css" href="css/FileCss.css">
<style type="text/css">
.cot {
	border: solid thin gray;
}

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
	background-color: red;
}

#style-1::-webkit-scrollbar-track {
	-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
	background-color: #F5F5F5;
}
</style>
</head>
<body
	style="background-image: url('images/hethong/backgroundweb.png'); background-size: cover;">
	<%@ include file="layout/header.jsp"%>

	<div style="margin: 50px auto">
		<a href="dulich_diadiem">
			<div
				style="width: 30%; height: 300px; float: left; margin: 20px 2% 0 3%; box-shadow: 1px 2px 2px gray;">

				<div style="width: 100%; height: 100px; background-color: #FFBF00;">
					<i class="fad fa-map-marked-alt"
						style="color: #DF0101; font-size: 60pt; margin: 2px 2% 0 1%; float: left;"></i>
					<p style="color: white; font-size: 20pt; padding-top: 35px">ĐIỂM
						DU LỊCH</p>
				</div>
				<img src="images/dulich/dulich.jpg"
					style="width: 100%; height: 200px">
			</div>

		</a> <a href="dulich_lehoi">
			<div
				style="width: 30%; height: 300px; float: left; margin: 20px 2% 0 0; box-shadow: 1px 2px 2px gray;">

				<div style="width: 100%; height: 100px; background-color: #FFBF00">
					<i class="fab fa-fort-awesome"
						style="color: #0101DF; font-size: 60pt; margin: 2px 3% 0 1%; float: left;"></i>
					<p style="color: white; font-size: 20pt; padding-top: 35px">LỄ
						HỘI</p>
				</div>
				<img src="images/dulich/lehoi.jpg"
					style="width: 100%; height: 200px">
			</div>
		</a> <a href="dulich_dacsan">
			<div
				style="width: 30%; height: 300px; float: left; margin: 20px 2% 0 0; box-shadow: 1px 2px 2px gray;">

				<div style="width: 100%; height: 100px; background-color: #FFBF00">
					<i class="fad fa-cheeseburger"
						style="color: #088A08; font-size: 60pt; margin: 0 3% 0 1%; float: left;"></i>
					<p style="color: white; font-size: 20pt; padding-top: 15px">MÓN
						ĂN ĐẶC SẢN</p>
				</div>
				<img src="images/dulich/dacsan.jpg"
					style="width: 100%; height: 200px">

			</div>
		</a>

	</div>

	<%
	if (bvdl != null) {
	%>
	<div style="margin-top: 400px">
		<h2 style="width: 100%; margin-left: 1%">Tin du lịch</h2>


		<div style="width: 95%; margin: auto;">
			<div
				style="width: 65%; float: left; border: solid thin gray; margin-right: 2%; height: 315px; box-shadow: 1px 1px 1px gray">
				<table style="width: 100%" class="table table-striped table-hover">
					<tr>
						<td rowspan="2" style="width: 60%;">
							<div class="w3-content">

								<%
								for (int i = 0; i < 3 && i < bvdl.size(); i++) {
								%>
								<a
									href="baiviet_chitiet?tieude=<%=bvdl.get(i).getTieude_khongdau()%>&id=<%=bvdl.get(i).getId_baiviet()%>"
									style="text-decoration: none; color: black;">
									<div class="mySlides">
										<img src="images/<%=bvdl.get(i).getHinhanh()%>"
											style="width: 100%; height: 303px">
									</div>
								</a>
								<%
								}
								%>



							</div>
							</div>
						</td>
						<td>
							<div style="margin-top: 5px; height: 20px">
								<div style="float: left; width: 50%">

									<i class="fal fa-calendar-alt"
										style="color: red; font-size: 10pt; float: left; margin: 5px 2% 0 1%"></i>
									<%
									if (bvdl != null) {
										for (int i = 0; i < 3 && i < bvdl.size(); i++) {
									%>
									<a
										href="baiviet_chitiet?tieude=<%=bvdl.get(i).getTieude_khongdau()%>&id=<%=bvdl.get(i).getId_baiviet()%>"
										style="text-decoration: none; color: black;">
										<p class="ngaydang"
											style="font-style: italic; font-size: 12pt">
											<%=bvdl.get(i).getNgaydang()%></p>
									</a>
									<%
									}
									}
									%>
								</div>
								<div style="float: left; width: 50%;">
									<i class="fad fa-eye"
										style="color: black; font-size: 10pt; float: left; margin: 5px 2% 0 1%"></i>
									<%
									if (bvdl != null) {
										for (int i = 0; i < 3 && i < bvdl.size(); i++) {
									%>
									<a
										href="baiviet_chitiet?tieude=<%=bvdl.get(i).getTieude_khongdau()%>&id=<%=bvdl.get(i).getId_baiviet()%>"
										style="text-decoration: none; color: black;">
										<p class="luotxem" style="font-style: italic; font-size: 12pt"><%=bvdl.get(i).getLuotxem()%></p>
									</a>
									<%
									}
									}
									%>

								</div>

							</div>
							<div style="height: 170px;">
								<%
								if (bvdl != null) {
									for (int i = 0; i < 3 && i < bvdl.size(); i++) {
								%>
								<a
									href="baiviet_chitiet?tieude=<%=bvdl.get(i).getTieude_khongdau()%>&id=<%=bvdl.get(i).getId_baiviet()%>"
									style="text-decoration: none; color: black;">
									<p class="tieude"
										style="font-weight: bold; font-size: 16pt; margin-left: 5%"><%=bvdl.get(i).getTieude()%></p>
								</a>
								<%
								}
								}
								%>
							</div>

						</td>
					</tr>
					<tr>
						<td style="background-color: #F2F2F2">
							<div class="w3-center" style="width: 45%;">
								<div class="w3-section">
									<button class="w3-button" onclick="plusDivs(-1)"
										style="width: 40%; background-color: #D8D8D8">❮</button>
									<button class="w3-button" onclick="plusDivs(1)"
										style="width: 40%; background-color: #D8D8D8">❯</button>
								</div>
								<%
								if (bvdl != null) {
									for (int i = 0; i < 3 && i < bvdl.size(); i++) {
								%>
								<button class="w3-button demo" onclick="currentDiv(<%=i + 1%>)"><%=i + 1%></button>
								<%
								}
								}
								%>
							</div>
						</td>
					</tr>
				</table>
			</div>
			<div class="scrollbar" id="style-1"
				style="width: 30%; height: 335px; margin-top: 0px; box-shadow: 1px 1px 1px gray">
				<div class="force-overflow">
					<%
					if (bvdl != null) {
						for (int i = 3; i < bvdl.size(); i++) {
					%>
					<table style="width: 100%; height: 100px">
						<tr style="width: 100%">

							<td style="width: 35%; border-bottom: solid thin gray;"><a
								href="baiviet_chitiet?tieude=<%=bvdl.get(i).getTieude_khongdau()%>&id=<%=bvdl.get(i).getId_baiviet()%>">
									<img src="images/<%=bvdl.get(i).getHinhanh()%>"
									style="width: 100%; height: 100px;">
							</a></td>

							<td style="width: 75%; border-bottom: solid thin gray;">
								<table>
									<tr style="width: 100%">
										<td style="width: 100%; height: 40px"><a
											href="baiviet_chitiet?tieude=<%=bvdl.get(i).getTieude_khongdau()%>&id=<%=bvdl.get(i).getId_baiviet()%>"
											style="text-decoration: none"> <i
												class="fal fa-calendar-alt"
												style="color: red; font-size: 9pt; border-bottom: 1;"></i> <i
												style="color: gray; font-size: 9pt">(<%=bvdl.get(i).getNgaydang()%>)
											</i><br> <i class="fad fa-eye"
												style="color: black; font-size: 9pt"></i> <i
												style="color: gray; font-size: 9pt"><%=bvdl.get(i).getLuotxem()%>
													lượt xem </i>
										</a></td>
									</tr>
									<tr style="width: 100%">
										<td style="width: 100%; height: 60px;"><a
											href="baiviet_chitiet?tieude=<%=bvdl.get(i).getTieude_khongdau()%>&id=<%=bvdl.get(i).getId_baiviet()%>"
											style="text-decoration: none">
												<p style="font-size: 11pt; font-weight: bold; color: black"><%=bvdl.get(i).getTieude()%></p>
										</a></td>
									</tr>
								</table>
							</td>
						</tr>

					</table>
					<%
					}
					}
					%>
				</div>
			</div>
		</div>
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
				var y = document.getElementsByClassName("tieude");

				var dots = document.getElementsByClassName("demo");

				var nd = document.getElementsByClassName("ngaydang");
				var lx = document.getElementsByClassName("luotxem");

				if (n > x.length) {
					slideIndex = 1
				}
				if (n < 1) {
					slideIndex = x.length
				}
				for (i = 0; i < x.length; i++) {
					x[i].style.display = "none";
					y[i].style.display = "none";
					nd[i].style.display = "none";
					lx[i].style.display = "none";
				}
				for (i = 0; i < dots.length; i++) {
					dots[i].className = dots[i].className
							.replace(" w3-red", "");
				}
				x[slideIndex - 1].style.display = "block";
				y[slideIndex - 1].style.display = "block";
				nd[slideIndex - 1].style.display = "block";
				lx[slideIndex - 1].style.display = "block";

				dots[slideIndex - 1].className += " w3-red";
			}
		</script>
	</div>
	<%
	}
	%>
	<br>
	<h2 style="margin: 20px 0 10px 1%">Điểm du lịch</h2>

	<table style="width: 95%; margin: auto; font-size: 15pt"
		class="table table-striped table-hover">
		<tbody>
			<tr>
				<th style="width: 5%" class="cot">STT</th>
				<th style="width: 45%" class="cot">Đơn vị</th>
				<th style="width: 30%" class="cot">Địa chỉ</th>
				<th style="width: 20%" class="cot">Điện thoại</th>
			</tr>
			<tr>
				<td class="cot">1</td>
				<td class="cot">Di tích lịch sử Khu lưu niệm Chủ tịch Tôn Đức
					Thắng</td>
				<td class="cot">Xã Mỹ Hòa Hưng, Thành phố Long Xuyên</td>
				<td class="cot">(0296) 3851310</td>
			</tr>
			<tr>
				<td class="cot">2</td>
				<td class="cot">Công viên Mỹ Thới</td>
				<td class="cot">QL91, phường Mỹ Thới, Thành phố Long Xuyên</td>
				<td class="cot">(0296) 3834842</td>
			</tr>
			<tr>
				<td class="cot">3</td>
				<td class="cot">Khu di tích cách mạng Mỹ Khánh</td>
				<td class="cot">xã Mỹ Khánh, Thành phố Long Xuyên</td>
				<td class="cot">(0296) 3721482</td>
			</tr>
			<tr>
				<td class="cot">4</td>
				<td class="cot">Miếu Bà Chúa Xứ Núi Sam</td>
				<td class="cot">phường Núi Sam, Thành phố Châu Đốc</td>
				<td class="cot">(0296) 3571676</td>
			</tr>
			<tr>
				<td class="cot">5</td>
				<td class="cot">Khu du lịch Núi Sam (BQL Di tích và Du lịch Núi
					Sam)</td>
				<td class="cot">phường Núi Sam, Thành phố Châu Đốc</td>
				<td class="cot">(0296) 3861666</td>
			</tr>
			<tr>
				<td class="cot">6</td>
				<td class="cot">Khu du lịch Núi Cấm</td>
				<td class="cot">xã An Hảo, huyện Tịnh Biên</td>
				<td class="cot">(0296) 3760229</td>
			</tr>
			<tr>
				<td class="cot">7</td>
				<td class="cot">Khu Bảo vệ cảnh quan Rừng tràm Trà Sư</td>
				<td class="cot">xã Văn Giáo, huyện Tịnh Biên</td>
				<td class="cot">(0296) 2218025</td>
			</tr>
			<tr>
				<td class="cot">8</td>
				<td class="cot">Khu di tích lịch sử văn hóa Đồi Tức Dụp</td>
				<td class="cot">xã An Tức, huyện Tri Tôn</td>
				<td class="cot">(0296) 3771003</td>
			</tr>
			<tr>
				<td class="cot">9</td>
				<td class="cot">Di tích lịch sử Nhà mồ Ba Chúc</td>
				<td class="cot">Thị Trấn Ba Chúc, huyện Tri Tôn</td>
				<td class="cot">(0296) 3872106</td>
			</tr>
			<tr>
				<td class="cot">10</td>
				<td class="cot">Khu du lịch Hồ Ông Thoại</td>
				<td class="cot">Số 1 Nguyễn Văn Trỗi, Thị Trấn Núi Sập - Thoại
					Sơn</td>
				<td class="cot">(0296) 2227991</td>
			</tr>
			<tr>
				<td class="cot">11</td>
				<td class="cot">Di tích khảo cổ và kiến trúc nghệ thuật Óc Eo -
					Ba Thê</td>
				<td class="cot">Thị trấn Óc Eo</td>
				<td class="cot">(0296) 6259659</td>
			</tr>
			<tr>
				<td class="cot">12</td>
				<td class="cot">Điểm dừng chân Du lịch Vạn Hương Mai</td>
				<td class="cot">QL91, xã Mỹ Đức, huyện Châu Phú</td>
				<td class="cot">(0296) 3647299</td>
			</tr>
		</tbody>
	</table>
	<br>
	<h2>Đặc sản</h2>
	<div style="width: 95%; margin: auto; font-size: 15pt">
		<table style="width: 100%">
			<tbody>
				<tr>
					<th style="width: 5%" class="cot">STT</th>
					<th style="width: 45%" class="cot">Tên</th>
					<th style="width: 30%" class="cot">Địa chỉ</th>
					<th style="width: 20%" class="cot">Điện thoại</th>
				</tr>
			</tbody>
		</table>

		<table style="width: 100%" class="table table-striped table-hover">
			<tbody>
				<tr>
					<th class="cot" colspan="1"></th>
					<th class="cot" colspan="3">Thành phố Long Xuyên</th>
				</tr>
				<tr>
					<td style="width: 5%" class="cot">1</td>
					<td style="width: 45%" class="cot">Nhà hàng Thắng Lợi</td>
					<td style="width: 30%" class="cot">Lê Hồng Phong, P. Mỹ Bình</td>
					<td style="width: 20%" class="cot">(0296) 3851310</td>
				</tr>
				<tr>
					<td class="cot">2</td>
					<td class="cot">NH-KS Hòa Bình</td>
					<td class="cot">Số 130 Trần Hưng Đạo, P. Mỹ Bình</td>
					<td class="cot">(0296) 3856168</td>
				</tr>
				<tr>
					<td class="cot">3</td>
					<td class="cot">Nhà Hàng Làng Tôi</td>
					<td class="cot">Số 32 Trần Nhật Duật, P. Mỹ Long</td>
					<td class="cot">(0296) 3942995</td>
				</tr>
				<tr>
					<td class="cot">4</td>
					<td class="cot">NH-KS Đông Xuyên</td>
					<td class="cot">Số 9A Lương Văn Cù, P. Mỹ Long</td>
					<td class="cot">(0296) 3942260</td>
				</tr>
				<tr>
					<td class="cot">5</td>
					<td class="cot">Hương Đồng Quê</td>
					<td class="cot">378/32 Trần Hưng Đạo, P. Mỹ Quý</td>
					<td class="cot">093 98794 35</td>
				</tr>
				<tr>
					<td class="cot">6</td>
					<td class="cot">Nhà hàng Hoa Sơn</td>
					<td class="cot">26/1 Lê Văn Nhung, P. Mỹ Bình</td>
					<td class="cot">(0296) 3956066</td>
				</tr>
				<tr>
					<td class="cot">7</td>
					<td class="cot">Tiệm Cơm Quế Phát</td>
					<td class="cot">22A, Trần Nhật Duật, P. Mỹ Long</td>
					<td class="cot">(0296) 3846612</td>
				</tr>
				<tr>
					<td class="cot">8</td>
					<td class="cot">Tiệm Cơm Bửu Lộc</td>
					<td class="cot">211/1- 211/3 Đặng Dung, P. Mỹ Long</td>
					<td class="cot">(0296) 3842887</td>
				</tr>
				<tr>
					<td class="cot">9</td>
					<td class="cot">Tiệm Cơm Hồng Phát</td>
					<td class="cot">242/4 Lương Văn Cù, P. Mỹ Long</td>
					<td class="cot">(0296) 3842359</td>
				</tr>
				<tr>
					<td class="cot">10</td>
					<td class="cot">Nhà hàng Hai Lúa</td>
					<td class="cot">Trần Hưng Đạo, P. Mỹ Long</td>
					<td class="cot">0939092480</td>
				</tr>
			</tbody>
		</table>
		<table style="width: 100%" class="table table-striped table-hover">
			<tbody>
				<tr>
					<th class="cot" colspan="1"></th>
					<th class="cot" colspan="3">Thành phố Châu Đốc</th>
				</tr>
				<tr>
					<td style="width: 5%" class="cot">1</td>
					<td style="width: 45%" class="cot">Bảy Bồng 2</td>
					<td style="width: 30%" class="cot">Trưng Nữ Vương ND, Châu Phú
						B</td>
					<td style="width: 20%" class="cot">0986.394041</td>
				</tr>
				<tr>
					<td class="cot">2</td>
					<td class="cot">Liên Phát</td>
					<td class="cot">Trưng Nữ Vương ND, Châu Phú B</td>
					<td class="cot">0918.611150</td>
				</tr>
				<tr>
					<td class="cot">3</td>
					<td class="cot">Cỏ May</td>
					<td class="cot">Trưng Nữ Vương ND, Châu Phú B</td>
					<td class="cot">02963.564054</td>
				</tr>
				<tr>
					<td class="cot">4</td>
					<td class="cot">Đồng Quê</td>
					<td class="cot">Trưng Nữ Vương ND, Châu Phú B</td>
					<td class="cot">02963.560057</td>
				</tr>
				<tr>
					<td class="cot">5</td>
					<td class="cot">Lưu Luyến</td>
					<td class="cot">Trưng Nữ Vương ND, Châu Phú B</td>
					<td class="cot">0913.010474</td>
				</tr>
				<tr>
					<td class="cot">6</td>
					<td class="cot">Phố nướng</td>
					<td class="cot">Trưng Nữ Vương ND, Châu Phú B</td>
					<td class="cot">0939.461122</td>
				</tr>
				<tr>
					<td class="cot">7</td>
					<td class="cot">Nhà hàng Cồn Tiên</td>
					<td class="cot">Trần Hưng Đạo, Châu Phú A</td>
					<td class="cot">02962.213141</td>
				</tr>
				<tr>
					<td class="cot">8</td>
					<td class="cot">Sunrise Palace</td>
					<td class="cot">Lê Lợi, Châu Phú B</td>
					<td class="cot">0919.557999</td>
				</tr>
				<tr>
					<td class="cot">9</td>
					<td class="cot">Nhà Hàng nổi Mê Kông</td>
					<td class="cot">Lê Lợi, Châu Phú B</td>
					<td class="cot">02963.550838</td>
				</tr>
				<tr>
					<td class="cot">10</td>
					<td class="cot">Quán Dòng Sông</td>
					<td class="cot">Lê Lợi, Châu Phú B</td>
					<td class="cot">02963.866881</td>
				</tr>
				<tr>
					<td class="cot">11</td>
					<td class="cot">Hải sản Phượng</td>
					<td class="cot">Lê Lợi, Châu Phú B</td>
					<td class="cot">0949.153489</td>
				</tr>
				<tr>
					<td class="cot">12</td>
					<td class="cot">Quán Sông Hậu</td>
					<td class="cot">Đường Trường Đua, Châu Phú A</td>
					<td class="cot">0988.191918</td>
				</tr>
				<tr>
					<td class="cot">13</td>
					<td class="cot">NH Bến Đá Núi Sam</td>
					<td class="cot">Quốc lộ 91. phường Núi Sam</td>
					<td class="cot">0983.183493</td>
				</tr>
				<tr>
					<td class="cot">14</td>
					<td class="cot">Quán Vân Sơn</td>
					<td class="cot">Trưng Nữ Vương ND, Châu Phú B</td>
					<td class="cot">02966.550931</td>
				</tr>

			</tbody>
		</table>
		<table style="width: 100%" class="table table-striped table-hover">
			<tbody>
				<tr>
					<th class="cot" colspan="1"></th>
					<th class="cot" colspan="3">Thị xã Tân Châu</th>
				</tr>
				<tr>
					<td style="width: 5%" class="cot">1</td>
					<td style="width: 45%" class="cot">Nhà hàng Kim An</td>
					<td style="width: 30%" class="cot">Đường Tôn Đức Thắng, P.
						Long Thạnh</td>
					<td style="width: 20%" class="cot">02963.822256</td>
				</tr>
				<tr>
					<td class="cot">2</td>
					<td class="cot">Nhà hàng Phú Quý</td>
					<td class="cot">Phường Long Phú</td>
					<td class="cot">02963.536688</td>
				</tr>
				<tr>
					<td class="cot">3</td>
					<td class="cot">Quán Duy</td>
					<td class="cot">192 Tôn Đức Thắng, P. Long Thạnh</td>
					<td class="cot">02963.822898</td>
				</tr>


			</tbody>
		</table>
		<table style="width: 100%" class="table table-striped table-hover">
			<tbody>
				<tr>
					<th class="cot" colspan="1"></th>
					<th class="cot" colspan="3">huyện Tịnh Biên</th>
				</tr>
				<tr>
					<td style="width: 5%" class="cot">1</td>
					<td style="width: 45%" class="cot">Lữ quán Trà Sư</td>
					<td style="width: 30%" class="cot">Khóm Trà Sư</td>
					<td style="width: 20%" class="cot">0296.3875.238</td>
				</tr>
				<tr>
					<td class="cot">2</td>
					<td class="cot">Nhà Hàng Ngọc Hân</td>
					<td class="cot">Chợ Nhà Bàng</td>
					<td class="cot">0296.3875.555</td>
				</tr>
				<tr>
					<td class="cot">3</td>
					<td class="cot">Quán Bằng Lăng</td>
					<td class="cot">Núi Trà Sư</td>
					<td class="cot">0165.694.0502</td>
				</tr>
				<tr>
					<td class="cot">4</td>
					<td class="cot">Vườn ổi Bảy Thìn</td>
					<td class="cot">Ô Tà Ban</td>
					<td class="cot">0918.527.497</td>
				</tr>
				<tr>
					<td class="cot">5</td>
					<td class="cot">Vườn Tranh</td>
					<td class="cot">Thới Sơn</td>
					<td class="cot">0909.092911</td>
				</tr>
				<tr>
					<td class="cot">6</td>
					<td class="cot">Hương Dừa</td>
					<td class="cot">Chi Lăng</td>
					<td class="cot">0296.3877.474</td>
				</tr>
				<tr>
					<td class="cot">7</td>
					<td class="cot">Bánh canh Vĩnh Trung</td>
					<td class="cot">Vĩnh Trung</td>
					<td class="cot"></td>
				</tr>
				<tr>
					<td class="cot">8</td>
					<td class="cot">Bò nướng Phương Hương</td>
					<td class="cot">Thới Sơn</td>
					<td class="cot"></td>
				</tr>

			</tbody>
		</table>
		<table style="width: 100%" class="table table-striped table-hover">
			<tbody>
				<tr>
					<th class="cot" colspan="1"></th>
					<th class="cot" colspan="3">Thị xã Châu Phú</th>
				</tr>
				<tr>
					<td style="width: 5%" class="cot">1</td>
					<td style="width: 45%" class="cot">Nhà hàng Hạnh Phúc</td>
					<td style="width: 30%" class="cot">ấp Bình Thiện, xã Bình Thủy</td>
					<td style="width: 20%" class="cot">0989.111117</td>
				</tr>
				<tr>
					<td class="cot">2</td>
					<td class="cot">NH Hoa Miền Quê</td>
					<td class="cot">Ấp Vĩnh Phúc. TT Cái Dầu</td>
					<td class="cot">0977.785555</td>
				</tr>
				<tr>
					<td class="cot">3</td>
					<td class="cot">KDL Vạn Hương Mai</td>
					<td class="cot">ấp Mỹ Phó, xã Mỹ Đức</td>
					<td class="cot">0913.935426</td>
				</tr>


			</tbody>
		</table>
		<table style="width: 100%" class="table table-striped table-hover">
			<tbody>
				<tr>
					<th class="cot" colspan="1"></th>
					<th class="cot" colspan="3">Huyện Thoại Sơn</th>
				</tr>
				<tr>
					<td style="width: 5%" class="cot">1</td>
					<td style="width: 45%" class="cot">NH Phụng Hoàng</td>
					<td style="width: 30%" class="cot">Số 93, Nguyễn Huệ, Thị Trấn
						Núi Sập</td>
					<td style="width: 20%" class="cot">02963.712.990</td>
				</tr>
				<tr>
					<td class="cot">2</td>
					<td class="cot">Quán Hương Đồng</td>
					<td class="cot">ấp Bắc Sơn, Thị Trấn Núi Sập</td>
					<td class="cot">01697.389.381</td>
				</tr>
				<tr>
					<td class="cot">3</td>
					<td class="cot">Quán Lê Quýt</td>
					<td class="cot">Số 26 Trần Hưng Đạo, Thị Trấn Núi Sập</td>
					<td class="cot">02963.879.577</td>
				</tr>
				<tr>
					<td class="cot">4</td>
					<td class="cot">Quán Hoàng Yến</td>
					<td class="cot">Số 31 Trần Hưng Đạo, Thị Trấn Núi Sập</td>
					<td class="cot">02963.879.367</td>
				</tr>
				<tr>
					<td class="cot">5</td>
					<td class="cot">Quán Tuấn</td>
					<td class="cot">Đường Võ Văn Kiệt, Thị Trấn Núi Sập</td>
					<td class="cot">02963.710.201</td>
				</tr>
				<tr>
					<td class="cot">6</td>
					<td class="cot">Quán 705</td>
					<td class="cot">TL943, ấp Tân Hiệp A, Thị Trấn Óc Eo</td>
					<td class="cot">0939.870.705</td>
				</tr>
				<tr>
					<td class="cot">7</td>
					<td class="cot">Quán Mỹ Chi</td>
					<td class="cot">Đường số 6, KDC Sao Mai, Thị trấn Phú Hòa</td>
					<td class="cot">02963.878.789</td>
				</tr>
				<tr>
					<td class="cot">8</td>
					<td class="cot">Quán Tư Ẩn</td>
					<td class="cot">Số 314/15, Tỉnh Lộ 943, Thị trấn Phú Hòa</td>
					<td class="cot">02963. 878 344</td>
				</tr>
			</tbody>
		</table>
	</div>
	<%@ include file="layout/footer.jsp"%>
</body>
</html>