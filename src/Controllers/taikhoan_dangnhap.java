package Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

/**
 * Servlet implementation class dangnhap
 */
@WebServlet("/dangnhap")
public class taikhoan_dangnhap extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "";
		try {

			String taikhoan = request.getParameter("txttaikhoan");
			String matkhau = request.getParameter("txtmatkhau");
			Models.taikhoan dn = new Models.taikhoan();
			String matkhausha1=function.function.encryptPassword(matkhau);
			Objects.taikhoan tk = dn.dangnhap(taikhoan, matkhausha1);

			if (tk != null) {
				if (dn.kt(taikhoan)) {
					HttpSession session = request.getSession(true);
					session.setAttribute("taikhoan", tk.getTaikhoan());
					session.setAttribute("quyenhan", tk.getQuyenhan());
					session.setAttribute("id_nguoidung", tk.getId_nguoidung());
					url = "trangchu";
				} else {
					response.setContentType("text/html; charset=UTF-8");
					PrintWriter out = response.getWriter();
					out.println("<script type=\"text/javascript\">");
					out.println("alert('Tài khoản của bạn đã bị khóa!');");
					out.println("location='dangnhap.jsp';");
					out.println("</script>");
					out.close();
				}
			} else {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Tài khoản hoặc mật khẩu không hợp lệ!');");
				out.println("location='dangnhap.jsp';");
				out.println("</script>");
				out.close();
			}
			RequestDispatcher rd = request.getRequestDispatcher(url);
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
