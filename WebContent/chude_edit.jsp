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
</head>
<body style="background-image: url('images/hethong/background.png');">
	<form action="chude_edit" method="post">
		<table style="margin: 100px auto; width: 30%; height: 200px">
			<tr>
				<td colspan="2"
					style="text-align: center; font-size: 20pt; color: red;font-weight: bold;">Sửa
					Chủ Đề</td>
			</tr>
			<tr>
				<td colspan="2"><input type="text" name="txtid_chude"
					value="<%=cd.get(0).getId_chude()%>" hidden></td>
			</tr>
			<tr>
				<td><b>- Tên chủ đề</b></td>
				<td style="width: 60%"><input type="text" name="txttenchude"
					style="width: 100%; height: 30px"
					value="<%=cd.get(0).getTenchude()%>"></td>
			</tr>
			<tr>
				<td colspan="2"><button type="submit"
						style="margin-left: 70%; margin-top: 20px; border: solid white; height: 40px; font-size: 12pt; font-weight: bold; background-color: #088A08; color: white; border-radius: 5px">Cập
						nhật</button></td>
			</tr>
		</table>
	</form>
</body>
</html>