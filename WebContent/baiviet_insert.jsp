<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%
@SuppressWarnings("unchecked")
ArrayList<Objects.chude> cd = (ArrayList<Objects.chude>) request.getAttribute("cd");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ủy Ban Nhân Dân Vọng Đông</title>
<script type="text/javascript" src="js/ckeditor/ckeditor.js">
	
</script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/fontawesome.css">
<script src="/js/jquery.min.js" type="text/javascript"></script>
<script src="/js/ajaxupload.js" type="text/javascript"></script>
</head>
<body style="background-image: url('images/hethong/background.png');">
	<h2 style="color: red; text-align: center;">
		<P>Đăng bài viết</P>
	</h2>
	<form
		action="<%if ((session.getAttribute("quyenhan").toString()).equals("Admin")) {%>baiviet_insert<%} else {%>baiviet_insert_us<%}%>"
		method="post" enctype="multipart/form-data">
		<div style="margin: 20px auto; width: 95%;">
			<div style="width: 34%; float: left; margin: 100px 10px 0 0;">
				<table style="width: 100%;">
					<tr>
						<td colspan="2"><img id="anhxemtruoc"
							style="text-align: center; width:300px; margin-top: 10px;"
							src="images/hethong/image.png" /></td>
					</tr>
					<tr>
						<td><label><b>Chọn ảnh đại diện</b></label></td>
					</tr>
					<tr>
						<td><input type="file" accept="image/*" name="file"
							onchange="showMyImage(this)" /></td>
					</tr>
				</table>
			</div>
			<div style="width: 65%; float: left;">
				<table style="width: 100%; margin: auto;">
					<tr>
						<td><label><b>Tiêu đề bài viết</b></label></td>
					</tr>
					<tr>
						<td><textarea name="txttieude" cols="80" rows="1"
								placeholder="Nhập tiêu đề bài viết" required></textarea></td>
					</tr>
					<tr>
						<td><label><b>Chủ đề</b></label></td>
					</tr>
					<tr>
						<td><select name="machude" required>
								<option value="0">--Chọn--</option>
								<%
								if (cd != null) {
									for (int i = 0; i < cd.size(); i++) {
								%>
								<option value="<%=cd.get(i).getId_chude()%>"><%=cd.get(i).getTenchude()%></option>
								<%
								}
								}
								%>

						</select></td>
					</tr>
					<tr>
						<td><label><b>Nội dung</b></label></td>
					</tr>
					<tr>
						<td><textarea name="txtnoidung"></textarea></td>
					</tr>
					<tr>
						<td colspan="2" style="float: right;margin-top: 10px"><button type="submit"
								style="border: solid white; width: 100%; height: 40px; font-size: 12pt; font-weight: bold; background-color: #088A08; color: white; border-radius: 5px">Đăng bài</button></td>
					</tr>

				</table>
			</div>
		</div>
	</form>

	<script type="text/javascript">
		CKEDITOR.replace('txtnoidung');

		function showMyImage(fileInput) {
			var files = fileInput.files;
			for (var i = 0; i < files.length; i++) {
				var file = files[i];
				var imageType = /image.*/;
				if (!file.type.match(imageType)) {
					continue;
				}
				var img = document.getElementById("anhxemtruoc");
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
</body>
</html>