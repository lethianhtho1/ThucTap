<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ page import="java.util.ArrayList"%>
<% @SuppressWarnings("unchecked") ArrayList<Objects.chucvu> cv = (ArrayList<Objects.chucvu>)request.getAttribute("cv"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ủy Ban Nhân Dân Vọng Đông</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/fontawesome.css">
</head>
<body  style="background-image: url('images/hethong/background.png')">
	
	<form action="chucvu_insert" method="post">
		<table style="margin: 50px auto;">
			<tr>
				<td colspan="2" style="text-align: center;color:red;font-size: 18pt;font-weight: bold;">Thêm chức vụ</td>
			</tr>
			<tr>
				<td><label>Tên chức vụ</label></td>
				<td><input type="text" name="txtchucvu"></td>
			</tr>
			<tr>
				<td colspan="2" style="padding-left:80%"><button>Thêm</button></td>
			</tr>
		</table>
	</form>
	
	<hr>
	<table  class="table table-striped table-hover" style="width: 50%;margin: 10px auto;text-align: center;background-color: white;box-shadow: 2px 2px 2px gray">
	  <thead>
	    <tr>
	      <th scope="col">#</th>
	      <th scope="col">Tên Chức Vụ</th>
	      <th scope="col">Sửa</th>
	      <th scope="col">Xóa</th>
	    </tr>
	  </thead>
	  <tbody>
		<%
	  		for(int i=0;i<cv.size();i++)
	  		{ 
	  	%>
	  			<tr>
	  				<td>
	  					<%=i+1 %>
	  				</td>
	  				<td>
	  					 <%=cv.get(i).getChucvu() %>
	  				</td>
	  				<td>
	  					<a href="chucvu_edit?id=<%=cv.get(i).getId_chucvu() %>"><i class="fad fa-edit" style="color:#0101DF;"></i></a>
	  				</td>
	  				<td>
	  					<a href="chucvu_delete?id=<%=cv.get(i).getId_chucvu() %>" onclick="return confirm('Bạn có muốn xóa chức vụ <%=cv.get(i).getChucvu() %> không?Việc xóa này sẽ thay đổi các dữ liệu liên quan!')"><i class="fad fa-trash-alt" style="color:#B40404;"></i></a>
	  				</td>
	  			</tr>
	  					
	  	<%
  			}
  		%>
	  </tbody>
	</table>
	
</body>
</html>
