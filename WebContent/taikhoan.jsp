<%@page import="Objects.nguoidung"%>
<%@page import="Objects.taikhoan"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<% @SuppressWarnings("unchecked") ArrayList<taikhoan> tk = (ArrayList<taikhoan>)request.getAttribute("tk"); %>
<% @SuppressWarnings("unchecked") ArrayList<nguoidung> nd = (ArrayList<nguoidung>)request.getAttribute("nd"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ủy Ban Nhân Dân Vọng Đông</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/fontawesome.css">
</head>
<body  style="background-image: url('images/hethong/background.png')">
<br>
	<h1 style="color: #8A0808">Danh sách tài khoản</h1>
	<h2><a href="taikhoan_insert" style="text-decoration: none; color: #3A01DF"><i class="fad fa-plus" ></i>Thêm tài khoản</a></h2>
	<hr>
	<table class="table table-striped table-hover" style="width: 95%;margin: 10px auto;text-align: center;background-color: white;box-shadow: 2px 2px 2px gray"cellpadding="2">
	  <thead>
	    <tr>
	      <th scope="col" style="width: 5%">#</th>
	      <th scope="col">Tài Khoản</th>
	      <th scope="col">Trạng Thái</th>
	      <th scope="col">Quyền Hạn</th>
	      <th scope="col">Người Dùng</th>
	      <th scope="col">Sửa</th>
	      <th scope="col">Xóa</th>
	    </tr>
	  </thead>
	  <tbody>
		<%
	  		for(int i=0;i<tk.size();i++)
	  		{ 
	  	%>
	  			<tr style="height: 0px">
	  				<td>
	  					<%=i+1 %>
	  				</td>
	  				<td>
	  					<%=tk.get(i).getTaikhoan()%>
	  				</td>
	  				<td>
	  					 <% if(tk.get(i).getTrangthai()==1)
	  					 	{
	  						 	out.write("<a style='text-decoration: none' href='taikhoan_lock?tk="+tk.get(i).getTaikhoan()+"'><span style='background-color: green;border: solid thin;color:white;padding: 2px;box-shadow: 1px 1px 1px gray'>Không bị khóa</span></a></a>");
	  					 	}
	  					 else
	  						out.write("<a style='text-decoration: none' href='taikhoan_unlock?tk="+tk.get(i).getTaikhoan()+"'><span style='background-color: #B40404;border: solid thin;color:white;padding: 2px;box-shadow: 1px 1px 1px gray'>Tạm khóa</span></a>");
	  					%>
	  				</td>
	  				<td>
	  					 <%=tk.get(i).getQuyenhan()%>
	  				</td>
	  				<td>
	  					 <% for(int j=0;j<nd.size();j++)
	  					 {
	  						 if(tk.get(i).getId_nguoidung()==nd.get(j).getId_nguoidung())
	  						 {
	  							 out.print(nd.get(j).getTennguoidung());
	  						 }
	  					 }
	  					 
	  					 %>
	  				</td>
	  				<td>
	  					<a href="taikhoan_edit?tk=<%=tk.get(i).getTaikhoan() %>"><i class="fad fa-edit" style="color:#0101DF;"></i></a>
	  				</td>
	  				<td>
	  					<a href="taikhoan_delete?tk=<%=tk.get(i).getTaikhoan() %>" onclick="return confirm('Bạn có muốn xóa tài khoản <%=tk.get(i).getTaikhoan()%> không? Việc xóa này sẽ xóa các dữ liệu liên quan!')"><i class="fad fa-trash-alt" style="color:#B40404;"></i></a>
	  				</td>
	  			</tr>
	  					
	  	<%
  			}
  		%>
	  </tbody>
	</table>
	
</body>
</html>