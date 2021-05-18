<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%
@SuppressWarnings("unchecked")
ArrayList<Objects.baiviet> bv = (ArrayList<Objects.baiviet>) request.getAttribute("bv");
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
		<b>Sửa bài viết</b>
	</h2>
	<form action="baiviet_edit" method="post">
		<div style="margin: 5px auto; width: 98%;">
			<div style="width: 25%; float: left; margin: 100px 5px 0 0;">
				<table style="width: 100%;">
					<tr>
						<td colspan="2"><img id="anhxemtruoc"
							style="text-align: center; width:100%; margin-top: 10px;"
							src="images/<%=bv.get(0).getHinhanh()%>" /></td>
					</tr>


					<tr>
						<td><input name="id_bv"
							value="<%=bv.get(0).getId_baiviet()%>" hidden></td>
					</tr>
				</table>

			</div>
			<div style="width: 72%; float: left;">
				<table style="width: 100%; margin: auto;">
					<tr>
						<td><label><b>Tiêu đề bài viết</b></label></td>
					</tr>
					<tr>
						<td><textarea name="txttieude" cols="80" rows="1"
								placeholder="Nhập tiêu đề bài viết" required><%=bv.get(0).getTieude()%></textarea></td>
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
										int macd = cd.get(i).getId_chude();
										int mcd = bv.get(0).getMachude();
								%>
								<option value="<%=cd.get(i).getId_chude()%>"
									<%if (macd == mcd) {%> selected <%}%>><%=cd.get(i).getTenchude()%></option>
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
						<td><textarea name="txtnoidung"><%=bv.get(0).getNoidung()%></textarea></td>
					</tr>
					<tr>
						<td colspan="2" style="float: right; margin-top: 5px"><button
								type="submit"
								style="border: solid white; width: 100%; height: 35px; font-size: 12pt; font-weight: bold; background-color: #088A08; color: white; border-radius: 5px">Cập
								nhật</button></td>
					</tr>

				</table>
			</div>
		</div>
	</form>

	<script type="text/javascript">
		CKEDITOR.replace('txtnoidung');
	</script>
</body>
</html>