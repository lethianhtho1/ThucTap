<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@page import="Objects.chude"%>
<%
@SuppressWarnings("unchecked")
ArrayList<chude> cd = (ArrayList<chude>) request.getAttribute("cd");
%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div
		style="float: left; width: 100%; height: 350px; background-color: #D8CEF6; margin: 20px 0 0 5%; border: solid thin #D8D8D8;">
		<div
			style="color: white; background-color: #5858FA; width: 100%; font-size: 16pt;">DANH
			MỤC</div>
		<div class="scrollbar" id="style-2"
			style="width: 100%; height: 315px; margin-top: 0px;">
			<div class="force-overflow">
				<ul type="none">
					<%
					if (cd != null) {
						for (int i = 0; i < cd.size(); i++) 
						{
							%>
							<a href="baiviet_chude?id=<%=cd.get(i).getId_chude()%>"	style="color: #29088A; font-weight: bold; text-decoration: none;">
								<li	style="margin-top: 10px">
									<%=cd.get(i).getTenchude()%>
								</li>
							</a>
							<%
						}
					}
					%>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>