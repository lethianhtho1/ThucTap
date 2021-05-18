
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ủy Ban Nhân Dân Vọng Đông</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="css/FileCss.css">
<style type="text/css">
a.bt {
	text-decoration: none;
	font-family: Times;
	font-weight: none;
}
</style>
</head>
<body style="overflow-y: hidden ">
	<a href="quanly_anhbia.jsp" class="bt"><button class="snip1582">Ảnh
			bìa</button></a>
	<a href="#" class="bt"><button class="snip1582"
			style="color: #610B0B">Quảng cáo</button></a>

	<div class="w3-content"
		style="width: 70%; margin-top: 20px;height: 356px">
		<%
		for (int i = 1; i < 6; i++) {
		%>
		<form action="quangcao_update" method="post"
			enctype="multipart/form-data">
			<table style="">
				<tr>
					<td><img id="anhxemtruoc<%=i%>" class="mySlides"
						src="images/quangcao/quangcao<%=i%>.png"
						style=" height: <% if(i==5){out.print("190");}else{out.print("370");}%>px;width: 200px;margin-top: -<%=(i-1)*6%>px"></td>
					<td><input type="text" value="<%=i%>" name="id" hidden><input
						class="myFiles" type="file" name="file"
						onchange="showMyImage<%=i%>(this)" style="margin-top: -<%=(i-1)*6%>px"></td>
					<td style="width: 20%;">
						<button class="myButtons" style="margin-top: -<%=(i-1)*6%>px">Cập nhật</button>
					</td>
				</tr>
			</table>

		</form>
		<%
		}
		%>
	</div>
	<br>
	<div>
		<div class="w3-center">
			<div class="w3-section">
				<button class="w3-button w3-light-grey" onclick="plusDivs(-1)">❮
					Prev</button>
				<%
				for (int i = 1; i < 6; i++) {
				%>
				<button class="w3-button demo" onclick="currentDiv(<%=i%>)"><%=i%></button>
				<%
				}
				%>

				<button class="w3-button w3-light-grey" onclick="plusDivs(1)">Next
					❯</button>
			</div>
		</div>
	</div>

	<%
	for (int k = 1; k < 6; k++) {
	%>
	<script>
			function showMyImage<%=k%>(fileInput) {
				var files = fileInput.files;
				for (var i = 0; i < files.length; i++) {
					var file = files[i];
					var imageType = /image.*/;
					if (!file.type.match(imageType)) {
						continue;
					}
					var img = document.getElementById("anhxemtruoc<%=k%>");
					img.file = file;
					var reader = new FileReader();
					reader.onload = (function(aImg) {
						return function(e) {
							aImg.src = e.target.result;
						};
					})(img);
					reader.readAsDataURL(file);
				}
			}
			</script>
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
			var y = document.getElementsByClassName("myFiles");
			var z = document.getElementsByClassName("myButtons");
			var dots = document.getElementsByClassName("demo");
			if (n > x.length) {
				slideIndex = 1
			}
			if (n < 1) {
				slideIndex = x.length
			}
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
				y[i].style.display = "none";
				z[i].style.display = "none";
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" w3-red", "");
			}
			x[slideIndex - 1].style.display = "block";
			y[slideIndex - 1].style.display = "block";
			z[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " w3-red";
		}
	</script>
</body>
</html>