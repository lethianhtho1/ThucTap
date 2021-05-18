<%@page import="Controllers.nguoidung_getchucvu"%>
<%@page import="Objects.chucvu"%>
<%@page import="Objects.nguoidung"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ page import="java.util.ArrayList"%>
<% @SuppressWarnings("unchecked") ArrayList<chucvu> cv = (ArrayList<chucvu>)request.getAttribute("cv"); %>
<% @SuppressWarnings("unchecked") ArrayList<nguoidung> nd = (ArrayList<nguoidung>)request.getAttribute("nd"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ủy Ban Nhân Dân Vọng Đông</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/fontawesome.css">
</head>
<body style="background-image: url('images/hethong/background.png');">
	<br>
	<h2 style="color: #8A0808">Danh Sách Người Dùng</h2>
	<h4><a href="nguoidung_insert" style="text-decoration: none;color: #3A01DF;"><i class="fad fa-plus" ></i> Thêm người dùng</a></h4>
	<hr>
	<table  class="table table-striped table-hover" style="width: 95%;margin: 10px auto;text-align: center;background-color: white;box-shadow: 2px 2px 2px gray">
	  <thead>
	    <tr>
	      <th scope="col" style="width: 5%">#</th>
	      <th scope="col">Họ Tên </th>
	      <th scope="col">Địa Chỉ</th>
	      <th scope="col">Ngày Sinh</th>
	      <th scope="col">SDT</th>
	      <th scope="col">Chức Vụ</th>
	      <th scope="col" style="width: 5%">Sửa</th>
	      <th scope="col" style="width: 5%">Xóa</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<%
	  		for(int i=0;i<nd.size();i++)
	  		{
	  	%>
  			<tr>
  				<td>
  					<%=i+1 %>
  				</td>
  				<td>
  					<%=nd.get(i).getTennguoidung() %>
  				</td>
  				<td>
  					<%=nd.get(i).getDiachi() %>
  				</td>
  				<td>
  					<%=nd.get(i).getNgaysinh() %>
  				</td>
  				<td>
  					<%=nd.get(i).getSdt() %>
  				</td>
  				<td>	   		
  					<% 
  						for(int j=0;j<cv.size();j++)
  						{
  							int id_nd=nd.get(i).getId_chucvu();
  							int id_cv=cv.get(j).getId_chucvu();
  							if(id_nd==0)
  							{
  								out.write("<i>Trống</i>");
  								break;
  							}
  							if(id_nd==id_cv)
  							{
  								out.write(cv.get(j).getChucvu());
  								break;
  							}	
  						}
  					%>
  				</td>
  				<td>
  					<a href="nguoidung_edit?id=<%=nd.get(i).getId_nguoidung() %>"><i class="fad fa-edit" style="color:#0101DF;"></i></a>
  				</td>
  				<td>
  					<a href="nguoidung_delete?id=<%=nd.get(i).getId_nguoidung() %>"  onclick="return confirm('Bạn có muốn xóa người dùng <%=nd.get(i).getTennguoidung()%> không?')"><i class="fad fa-trash-alt" style="color:#B40404;"></i></a>
  				</td>
  			</tr>
	  	
	  	<%
	  		}
	  	%>
	  
	  </tbody>
	 </table>
</body>
</html>
