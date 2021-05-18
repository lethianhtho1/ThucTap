<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%
@SuppressWarnings("unchecked")
ArrayList<Objects.baiviet> bvm = (ArrayList<Objects.baiviet>) request.getAttribute("bvm");
@SuppressWarnings("unchecked")
ArrayList<Objects.baiviet> bvtab1 = (ArrayList<Objects.baiviet>) request.getAttribute("bvtab1");
@SuppressWarnings("unchecked")
ArrayList<Objects.baiviet> bvtab2 = (ArrayList<Objects.baiviet>) request.getAttribute("bvtab2");
@SuppressWarnings("unchecked")
ArrayList<Objects.baiviet> bvtab3 = (ArrayList<Objects.baiviet>) request.getAttribute("bvtab3");
@SuppressWarnings("unchecked")
ArrayList<Objects.baiviet> bvtab4 = (ArrayList<Objects.baiviet>) request.getAttribute("bvtab4");
String chudetab1 = (String) request.getAttribute("cdtab1");
String chudetab2 = (String) request.getAttribute("cdtab2");
String chudetab3 = (String) request.getAttribute("cdtab3");
String chudetab4 = (String) request.getAttribute("cdtab4");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ủy Ban Nhân Dân Vọng Đông</title>

<link rel="stylesheet" type="text/css" href="css/fontawesome.css">
<link rel="stylesheet" type="text/css" href="css/FileCss.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.mySlides {
	display: none;
}
</style>
</head>
<body
	style="background-image: url('images/hethong/backgroundweb.png'); background-size: cover;">
	<%@ include file="layout/header.jsp"%>
	<div class="w3-content w3-section" style="width: 100%; margin: 0px">
		<%
		for (int i = 1; i < 6; i++) {
		%>
		<img class="mySlides" src="images/quangcao/banner<%=i%>.png"
			style="width: 140%; height: 370px">
		<%
		}
		%>
	</div>
	<br>
	<%
	if (bvm != null) {
	%>
	<h2>Tin mới</h2>
	<div style="width: 70%; float: left">
		<table
			style="width: 100%; margin: 20px 0px 0px 2%; border: 1px solid #E6E6E6; background-color: #FAFAFA;">
			<tr style="width: 100%;">

				<td style="max-width: 60%; text-align: center;"><a
					href="baiviet_chitiet?tieude=<%=bvm.get(0).getTieude_khongdau()%>&id=<%=bvm.get(0).getId_baiviet()%>"
					style="text-decoration: none; color: black;"> <img
						src="images/<%=bvm.get(0).getHinhanh()%>"
						style="width: 90%; height: 350px">
						<h5 style="font-family: Garamond; font-weight: bold;"><%=bvm.get(0).getTieude()%></h5>

						<i class="fal fa-calendar-alt" style="color: red; font-size: 10pt"></i><i
						style="color: gray; font-weight: inherit; font-size: 10pt"> (<%=bvm.get(0).getNgaydang()%>)
					</i> <i class="fad fa-eye" style="color: black; font-size: 10pt"></i><i
						style="color: gray; font-weight: inherit; font-size: 10pt"> <%=bvm.get(0).getLuotxem()%>
							lượt xem
					</i>
				</a></td>
				<td rowspan="2" style="width: 40%">
					<table
						style="border-spacing: 15px; height: 100%; width: 100%; height: 150px;">
						<%
						for (int i = 1; i < 4; i++) {
						%>
						<tr>
							<td rowspan="3"
								style="width: 40%; padding: 5px 5px 10px 0; border-bottom: solid thin gray;"><a
								href="baiviet_chitiet?tieude=<%=bvm.get(i).getTieude_khongdau()%>&id=<%=bvm.get(i).getId_baiviet()%>"
								style="text-decoration: none; color: black;"> <img
									src="images/<%=bvm.get(i).getHinhanh()%>"
									style="width: 100%; left; height: 110px">
							</a></td>
							<td style="height: 10px"><i class="fal fa-calendar-alt"
								style="color: red; font-size: 10pt"></i><i
								style="color: gray; font-weight: inherit; font-size: 10pt">
									(<%=bvm.get(i).getNgaydang()%>)
							</i></td>
						</tr>

						<tr>
							<td style="height: 10px"><i class="fad fa-eye"
								style="color: black; font-size: 10pt"></i><i
								style="color: gray; font-weight: inherit; font-size: 10pt">
									<%=bvm.get(i).getLuotxem()%> lượt xem
							</i></td>
						</tr>
						<tr>
							<td style="width: 60%; border-bottom: solid thin gray;"><a
								href="baiviet_chitiet?tieude=<%=bvm.get(i).getTieude_khongdau()%>&id=<%=bvm.get(i).getId_baiviet()%>"
								style="text-decoration: none; color: black;"> <span
									style="font-family: Garamond; font-weight: bold;"><%=bvm.get(i).getTieude()%></span>
							</a></td>
						</tr>
						<%
						}
						%>
					</table>
				</td>
			</tr>
		</table>
	</div>
	<%
	}
	%>
	<iframe src="http://thienduongweb.com/tool/weather/?r=0&w=1&g=1&d=6"
		style="height: 410px; width: 25%; margin: 20px 0px 20px 3%"
		scrolling="no"></iframe>
	<div>
		<h2><%=chudetab1%></h2>
	</div>
	<hr>
	<div id="carouselExampleControls" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<%
			if (bvtab1 != null) {
				int lap = bvtab1.size() / 3;
				int dem = 0;
				for (int i = 0; i < lap; i++) {
			%>
			<div class=<%if (dem == 0) {%> "carousel-item
				active"<%} else {%>"carousel-item"<%}%>>
				<table style="height: 200px; width: 100%">
					<tr style="width: 100%;">
						<%
						for (int j = dem; j < dem + 3; j++) {
						%>
						<td style="width: 25%;"><a
							href="baiviet_chitiet?tieude=<%=bvtab1.get(j).getTieude_khongdau()%>&id=<%=bvtab1.get(j).getId_baiviet()%> "
							style="text-decoration: none; color: black; text-align: center;">

								<img src="images/<%=bvtab1.get(j).getHinhanh()%>"
								class="d-block"
								style="width: 90%; margin-left: 3%; max-height: 250px; min-height: 250px">
								&ensp; <i class="fal fa-calendar-alt"
								style="color: red; font-size: 10pt"></i><i
								style="color: gray; font-weight: inherit; font-size: 10pt">
									(<%=bvtab1.get(j).getNgaydang()%>)
							</i> <i class="fad fa-eye" style="color: black; font-size: 10pt"></i><i
								style="color: gray; font-weight: inherit; font-size: 10pt">
									<%=bvtab1.get(j).getLuotxem()%> lượt xem
							</i>
								<h5 style="font-family: Garamond; font-weight: bold;"><%=bvtab1.get(j).getTieude()%></h5>
						</a></td>
						<%
						}
						dem += 3;
						%>
					</tr>
				</table>
			</div>
			<%
			}
			}
			%>
		</div>

		<a class="carousel-control-prev" href="#carouselExampleControls"
			role="button" data-bs-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="visually-hidden">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleControls"
			role="button" data-bs-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="visually-hidden">Next</span>
		</a>
	</div>
	<hr>

	<%
	if (bvtab2 != null) {
	%>
	<div style="width: 100%; height: 480px; background-color: #F2F2F2;">
		<h2><%=chudetab2%></h2>
		<%
		for (int i = 0; i < 4; i++) {
			if (i < bvtab2.size()) {
		%>
		<div
			style="border: solid thin; width: 20%; height: 400px; text-align: center; margin-left: 4%; float: left; border: 1px solid #E6E6E6; background-color: #FAFAFA; text-align: center;">
			<br> <a
				href="baiviet_chitiet?tieude=<%=bvtab2.get(i).getTieude_khongdau()%>&id=<%=bvtab2.get(i).getId_baiviet()%>"
				style="text-decoration: none; color: black;"> <img
				src="images/<%=bvtab2.get(i).getHinhanh()%>"
				style="width: 100%; height: 200px; margin-bottom: 25px">
				<h5 style="font-family: Garamond; font-weight: bold;"><%=bvtab2.get(i).getTieude()%></h5>
				<i class="fal fa-calendar-alt" style="color: red; font-size: 10pt"></i><i
				style="color: gray; font-weight: inherit; font-size: 10pt"> (<%=bvtab2.get(i).getNgaydang()%>)
			</i> <br> <i class="fad fa-eye"
				style="color: black; font-size: 10pt"></i><i
				style="color: gray; font-weight: inherit; font-size: 10pt; bottom: 0">
					<%=bvtab2.get(i).getLuotxem()%> lượt xem
			</i>
			</a>
		</div>
		<%
		}
		}
		%>
	</div>
	<hr>
	<%
	}
	%>
	<div style="background-color: #F2F2F2;">
		<%
		if (bvtab3 != null) {
		%>
		<div style="width: 60%; background-color: #F2F2F2; float: left">
			<div style="width: 94%; margin: 10px auto;">
				<h2><%=chudetab3%></h2>
				<table style="width: 100%;">
					<%
					for (int i = 0; i < 5 && i < bvtab3.size(); i++) {
						if (i < bvtab3.size()) {
					%>
					<tr>
						<td style="width: 15%;"><a
							href="baiviet_chitiet?tieude=<%=bvtab3.get(i).getTieude_khongdau()%>&id=<%=bvtab3.get(i).getId_baiviet()%>"
							style="text-decoration: none; color: black;"> <img
								src="images/<%=bvtab3.get(i).getHinhanh()%>"
								style="width: 100%; float: left; height: 150px">
						</a></td>
						<td style="width: 30%; padding-left: 1%;">
							<table style="height: 130px">
								<tr>
									<td><i class="fal fa-calendar-alt"
										style="color: red; font-size: 10pt"></i><i
										style="color: gray; font-weight: inherit; font-size: 10pt">
											(<%=bvtab3.get(i).getNgaydang()%>)
									</i></td>
									<td style="width: 80%; height: 20px;"><i
										class="fad fa-eye" style="color: black; font-size: 10pt"></i><i
										style="color: gray; font-weight: inherit; font-size: 10pt; bottom: 0">
											<%=bvtab3.get(i).getLuotxem()%> lượt xem
									</i></td>
								</tr>
								<tr>
									<td colspan="2"><a
										href="baiviet_chitiet?tieude=<%=bvtab3.get(i).getTieude_khongdau()%>&id=<%=bvtab3.get(i).getId_baiviet()%>"
										style="text-decoration: none; color: black;">
											<h5 style="font-family: Garamond; font-weight: bold;"><%=bvtab3.get(i).getTieude()%></h5>
									</a></td>
								</tr>
							</table>
						</td>
					</tr>
					<%
					}
					}
					%>
				</table>
			</div>
		</div>
		<%
		}
		%>
		<%
		if (bvtab4 != null) {
		%>

		<div style="width: 40%; float: left">
			<div style="width: 94%; margin: 10px auto;">
				<h2><%=chudetab4%></h2>
				<table style="width: 100%;">
					<%
					for (int i = 0; i < 5 && i < bvtab4.size(); i++) {
					%>
					<tr>
						<td style="width: 15%;"><a
							href="baiviet_chitiet?tieude=<%=bvtab4.get(i).getTieude_khongdau()%>&id=<%=bvtab4.get(i).getId_baiviet()%>"
							style="text-decoration: none; color: black;"> <img
								src="images/<%=bvtab4.get(i).getHinhanh()%>"
								style="width: 100%; float: left; height: 90px">
						</a></td>
						<td style="width: 30%; padding-left: 1%;"><a
							href="baiviet_chitiet?tieude=<%=bvtab4.get(i).getTieude_khongdau()%>&id=<%=bvtab4.get(i).getId_baiviet()%>"
							style="text-decoration: none; color: black;">
								<h5
									style="font-family: Garamond; font-size: 12pt; font-weight: bold;"><%=bvtab4.get(i).getTieude()%></h5>
						</a></td>
					</tr>
					<%
					}
					%>
				</table>
			</div>
		</div>
	</div>

	<%
	}
	%>

	<div style="width: 100%;">
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d62816.96313038583!2d105.1504889681911!3d10.256729035890055!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0a827f42f718d%3A0xbc838880ed3fff4a!2zVuG7jW5nIMSQw7RuZywgVGhv4bqhaSBTxqFuLCBBbiBHaWFuZywgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1616228502177!5m2!1svi!2s"
			width="100%" height="300px"
			style="border-left: solid thin gray; padding-left: 1%"></iframe>
	</div>
	<%@ include file="layout/footer.jsp"%>




	<script>
		var myIndex = 0;
		carousel();

		function carousel() {
			var i;
			var x = document.getElementsByClassName("mySlides");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			myIndex++;
			if (myIndex > x.length) {
				myIndex = 1
			}
			x[myIndex - 1].style.display = "block";
			setTimeout(carousel, 3000); // Change image every 2 seconds
		}
	</script>

</body>
</html>