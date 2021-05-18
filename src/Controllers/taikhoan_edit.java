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

import Objects.taikhoan;

/**
 * Servlet implementation class taikhoan_edit
 */
@WebServlet("/taikhoan_edit")
public class taikhoan_edit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String taikhoan = request.getParameter("tk");
		Models.taikhoan model_tk = new Models.taikhoan();
		ArrayList<Objects.taikhoan> tk = model_tk.getTaikhoanX(taikhoan);
		request.setAttribute("tk", tk);

		Models.nguoidung model_nd = new Models.nguoidung();
		ArrayList<Objects.nguoidung> nd = model_nd.getNguoidung();
		request.setAttribute("nd", nd);

		RequestDispatcher rd = request.getRequestDispatcher("taikhoan_edit.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String taikhoan = request.getParameter("txttaikhoan");
		String matkhau = request.getParameter("txtmatkhau");
		String xacnhanmatkhau = request.getParameter("txtxacnhanmatkhau");
		String quyenhan = request.getParameter("quyenhan");
		int id_nguoidung = Integer.parseInt(request.getParameter("id_nguoidung").toString());
		Models.taikhoan model_tk = new Models.taikhoan();
		String matkhausha1=function.function.encryptPassword(matkhau);
		Objects.taikhoan object_tk = new Objects.taikhoan(taikhoan, matkhausha1, 0, quyenhan, id_nguoidung);

		if (matkhau != "" && xacnhanmatkhau != "") 
		{
			if (matkhau.equals(xacnhanmatkhau)) {
				int result = model_tk.updateTaiKhoanHasPass(object_tk);
				if (result != 0) {
					out.println("<script type=\"text/javascript\">");
					out.println("alert('Cập nhật tài khoản thành công!');");
					out.println("location='taikhoan';");
					out.println("</script>");
				} else {
					out.println("<script type=\"text/javascript\">");
					out.println("alert('Cập nhật tài khoản không thành công!');");
					out.println("location='taikhoan_edit?tk=" + taikhoan + "';");
					out.println("</script>");
				}
			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Xác nhận mật khẩu không chính xác!');");
				out.println("location='taikhoan_edit?tk=" + taikhoan + "';");
				out.println("</script>");
			}
		} else if (matkhau != "" || xacnhanmatkhau != "") {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Xác nhận mật khẩu không chính xác!');");
			out.println("location='taikhoan_edit?tk=" + taikhoan + "';");
			out.println("</script>");
		} else {
			int result = model_tk.updateTaiKhoanNoPass(object_tk);
			if (result == 1) {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Cập nhật tài khoản thành công!');");
				out.println("location='taikhoan';");
				out.println("</script>");
			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Cập nhật tài khoản không thành công!');");
				out.println("location='taikhoan_edit?tk=" + taikhoan + "';");
				out.println("</script>");
			}
		}

		out.close();
	}

}
