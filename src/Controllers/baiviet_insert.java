package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import function.function;

@MultipartConfig
@WebServlet("/baiviet_insert")
public class baiviet_insert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Models.chude model_cd = new Models.chude();
		ArrayList<Objects.chude> cd = model_cd.getchude();
		request.setAttribute("cd", cd);
		RequestDispatcher rd = request.getRequestDispatcher("baiviet_insert.jsp");
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
			String tieude = request.getParameter("txttieude");
			String noidung = request.getParameter("txtnoidung");
			String hinhanh = function.convertStr(tieude);
			String tieude_khongdau = function.convertStr(tieude);
			String ngaydang = java.time.LocalDate.now().toString();
			int trangthai = 1;
			String taikhoan = session.getAttribute("taikhoan").toString();
			int machude = Integer.parseInt(request.getParameter("machude"));
			Part part = request.getPart("file");
			String realPath = "F:\\workspace\\WebsiteUyBan\\WebContent\\images";
			String filename = hinhanh + ".png";

			Models.baiviet model_bv = new Models.baiviet();
			Objects.baiviet object_bv = new Objects.baiviet(0, tieude, tieude_khongdau, noidung, ngaydang, machude,
					trangthai, taikhoan, filename, 0);
			int result = model_bv.insertBaiviet(object_bv);
			if (result == 1) {
				if (!Files.exists(Path.of(realPath))) {
					Files.createDirectory(Path.of(realPath));
				}
				part.write(realPath + "/" + filename);
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Thêm bài viết thành công!');");
				out.println("location='baiviet';");
				out.println("</script>");
			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Thêm bài viết không thành công!');");
				out.println("location='baiviet_insert';");
				out.println("</script>");
			}
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
