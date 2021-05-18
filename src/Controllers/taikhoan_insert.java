package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/taikhoan_insert")
public class taikhoan_insert extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Models.nguoidung model_nd = new Models.nguoidung();
		ArrayList<Objects.nguoidung> nd = model_nd.getNguoidung();
		request.setAttribute("nd", nd);
		RequestDispatcher rd = request.getRequestDispatcher("taikhoan_insert.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			String taikhoan = request.getParameter("txttaikhoan");
			String matkhau = request.getParameter("txtmatkhau");
			String xacnhanmatkhau = request.getParameter("txtxacnhanmatkhau");
			String quyenhan = request.getParameter("quyenhan");
			int id_nguoidung = Integer.parseInt(request.getParameter("id_nguoidung").toString());
			
			if(function.function.Rangbuoc(matkhau)==1)
			{
				if (matkhau.equals(xacnhanmatkhau)) {
					Models.taikhoan model_tk = new Models.taikhoan();
					String matkhausha1=function.function.encryptPassword(matkhau);
					Objects.taikhoan tk = new Objects.taikhoan(taikhoan, matkhausha1, 0, quyenhan, id_nguoidung);
					if(model_tk.checkAddTK(taikhoan))
					{
						int result = model_tk.inserttaikhoan(tk);
						if (result == 1) {
							out.println("<script type=\"text/javascript\">");
							out.println("alert('Thêm tài khoản thành công!');");
							out.println("location='taikhoan';");
							out.println("</script>");
							out.close();
						} else {
							out.println("<script type=\"text/javascript\">");
							out.println("alert('Thêm tài khoản không thành công!');");
							out.println("location='taikhoan_insert';");
							out.println("</script>");
							out.close();
						}
					}
					else
					{
						out.println("<script type=\"text/javascript\">");
						out.println("alert('Tài khoản bị trùng!');");
						out.println("location='taikhoan_insert';");
						out.println("</script>");	
						out.close();
					}
					response.sendRedirect("taikhoan");
				} else {
					out.println("<script type=\"text/javascript\">");
					out.println("alert('Xác nhận mật khẩu không chính xác!');");
					out.println("location='taikhoan_insert';");
					out.println("</script>");
				}
			}
			else
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Mật khẩu phải hơn 6-15 kí tự!');");
				out.println("location='taikhoan_insert';");
				out.println("</script>");
				out.close();
			}

			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
