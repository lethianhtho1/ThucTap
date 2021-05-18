<%@page import="Objects.hoidap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%
@SuppressWarnings("unchecked")
ArrayList<hoidap> hd = (ArrayList<hoidap>) request.getAttribute("hd");
@SuppressWarnings("unchecked")
ArrayList<hoidap> hd1 = (ArrayList<hoidap>) request.getAttribute("hd1");
hoidap hdx = (hoidap) request.getAttribute("hdx");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ủy Ban Nhân Dân Vọng Đông</title>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"
	integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"
	integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="css/fontawesome.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<%@ include file="layout/header.jsp"%>

	<div style="width: 80%; margin: 70px auto;">
		<div
			style="border: solid thin gray; width: 70%; height: 240px; margin: auto; box-shadow: 1px 1px 3px gray">
			<div
				style="background-color: #045FB4; font-weight: bold; color: white; width: 100%; font-size: 17pt; padding-left: 1%">
				Câu hỏi: <br>&emsp;- <%=hdx.getCauhoi() %> </div>
			<form action="hoidap_traloi" method="post">
			<input type="text" name="id" value="<%=hdx.getMahoidap() %>" hidden>
				<textarea placeholder="Nhập câu trả lời"cols="100"rows="5" style="margin: 5px 0 0 2%" name="traloi"></textarea>
				<button type="submit"
					style="width: 20%; margin-left: 78%;height: 35px; background-color: #08088A; color: white; border-radius: 3px; font-size: 14pt; font-weight: bold;">Trả lời</button>
			</form>
		</div>
	</div>

</body>
</html>