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
	a.bt{
		text-decoration: none;
		font-family: Times;
		font-weight: none;
	}
</style>
</head>
<body>
<a href="#" class="bt" ><button class="snip1582" style="color: #610B0B">Ảnh bìa</button></a>
<a href="quanly_quangcao.jsp" class="bt"><button class="snip1582">Quảng cáo</button></a>

	<div class="w3-content" style="width: 70%; margin-top: 50px">
		<%
		for (int i = 1; i < 6; i++) {
		%>
		<form action="banner_upload" method="post" enctype="multipart/form-data">
			<input type="text" value="<%=i%>" name="id" hidden> <img
				id="anhxemtruoc<%=i%>" class="mySlides"
				src="images/quangcao/banner<%=i%>.png"
				style="width: 100%; height: 270px"><input class="myFiles"
				type="file" name="file" onchange="showMyImage<%=i%>(this)">
			<button class="myButtons">Cập nhật</button>
		</form>
		<%
		}
		%>
	</div>
	<br>
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