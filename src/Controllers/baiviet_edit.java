package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import function.function;

@WebServlet("/baiviet_edit")
public class baiviet_edit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Models.baiviet model_bv = new Models.baiviet();
		int id = Integer.parseInt(request.getParameter("id").toString());
		ArrayList<Objects.baiviet> bv = model_bv.getBaivietX(id);
		request.setAttribute("bv", bv);

		Models.chude model_cd = new Models.chude();
		ArrayList<Objects.chude> cd = model_cd.getchude();
		request.setAttribute("cd", cd);

		RequestDispatcher rd = request.getRequestDispatcher("baiviet_edit.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			HttpSession session = request.getSession(true);
			String quyen =(String) session.getAttribute("quyenhan");
			int id = Integer.parseInt(request.getParameter("id_bv").toString());
			String tieude = request.getParameter("txttieude");
			String noidung = request.getParameter("txtnoidung");
			String tieude_khongdau = function.convertStr(tieude);
			String ngaydang = java.time.LocalDate.now().toString();
			int trangthai = 0;
			if (quyen != null) {
				if (quyen.equals("Admin")) {
					trangthai=1;
				}
			}
			int machude = Integer.parseInt(request.getParameter("machude"));

			Models.baiviet model_bv = new Models.baiviet();
			Objects.baiviet object_bv = new Objects.baiviet(id, tieude, tieude_khongdau, noidung, ngaydang, machude,
					trangthai, "", "", 0);

			int result = model_bv.editBaiviet(object_bv);
			if (result == 1) {
				String url="";
				if (quyen != null) {
					if (quyen.equals("Admin")) {
						url="baiviet";
					} else {
						url="hoso_baivietdang";
					}
				} else
					url="hoso_baivietdang";

				out.println("<script type=\"text/javascript\">");
				out.println("alert('Cập nhật bài viết thành công!');");
				out.println("location='"+url+"';");
				out.println("</script>");
			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Cập nhật bài viết thành công!');");
				out.println("location='baiviet_edit?id='" + id + ";");
				out.println("</script>");
			}
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
