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

/**
 * Servlet implementation class hoso
 */
@MultipartConfig
@WebServlet("/hoso_update")
public class hoso_update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		String tkUse = session.getAttribute("taikhoan").toString();

		Models.chucvu model_cv = new Models.chucvu();
		ArrayList<Objects.chucvu> cv = model_cv.getchucvu();
		Models.nguoidung model_nd = new Models.nguoidung();
		ArrayList<Objects.nguoidung> nd = model_nd.getNguoidung();
		Models.taikhoan model_tk = new Models.taikhoan();
		ArrayList<Objects.taikhoan> tk = model_tk.gettaikhoan();
		String chucvu = null;

		Objects.nguoidung nd_dn = new Objects.nguoidung();
		Objects.taikhoan tk_dn = new Objects.taikhoan();
		for (int i = 0; i < nd.size(); i++) {
			for (int j = 0; j < tk.size(); j++) {
				if (nd.get(i).getId_nguoidung() == tk.get(j).getId_nguoidung()
						&& (tk.get(j).getTaikhoan()).equals(tkUse)) {
					nd_dn.setId_nguoidung(nd.get(i).getId_nguoidung());
					nd_dn.setId_chucvu(nd.get(i).getId_chucvu());
					nd_dn.setDiachi(nd.get(i).getDiachi());
					nd_dn.setNgaysinh(nd.get(i).getNgaysinh());
					nd_dn.setSdt(nd.get(i).getSdt());
					nd_dn.setTennguoidung(nd.get(i).getTennguoidung());
					nd_dn.setHinhanh(nd.get(i).getHinhanh());

					tk_dn.setId_nguoidung(tk.get(j).getId_nguoidung());
					tk_dn.setMatkhau(tk.get(j).getMatkhau());
					tk_dn.setQuyenhan(tk.get(j).getQuyenhan());
					tk_dn.setTaikhoan(tk.get(j).getTaikhoan());
					tk_dn.setTrangthai(tk.get(j).getTrangthai());

					break;
				}
			}
		}
		for (int i = 0; i < cv.size(); i++) {
			if (cv.get(i).getId_chucvu() == nd_dn.getId_chucvu()) {
				chucvu = cv.get(i).getChucvu();
				break;
			}
		}

		request.setAttribute("chucvu", chucvu);
		request.setAttribute("nd", nd);
		request.setAttribute("nd_dn", nd_dn);
		request.setAttribute("tk_dn", tk_dn);
		RequestDispatcher rd = request.getRequestDispatcher("hoso_update.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String matkhau = (String) request.getParameter("txtmatkhau");
		String matkhau2 = (String) request.getParameter("txtxacnhanmatkhau");
		String s = (String) request.getParameter("idnguoidung");
		Integer id = null;
		if (s != null) {
			id = Integer.parseInt(s);
		}
		String taikhoan = (String) request.getParameter("taikhoan");
		String hoten = (String) request.getParameter("txthoten");
		String diachi = (String) request.getParameter("txtdiachi");
		String ngaysinh = (String) request.getParameter("txtngaysinh");
		String sdt = (String) request.getParameter("txtsdt");
		Part part = request.getPart("file");
		int size = (int) part.getSize();
		String realPath = "F:\\workspace\\WebsiteUyBan\\WebContent\\images\\nhansu";
		String filename = taikhoan + ".png";

		Objects.nguoidung obNguoiDung = new Objects.nguoidung(id, hoten, diachi, ngaysinh, sdt, filename, 0);
		Models.nguoidung nd = new Models.nguoidung();
		Models.taikhoan tk = new Models.taikhoan();

		if (matkhau.equals("") && matkhau2.equals("")) {
			if (nd.editNguoidungCaNhan(obNguoiDung) == 1) {
				if (size > 0) {
					if (!Files.exists(Path.of(realPath))) {
						Files.createDirectory(Path.of(realPath));
					}
					part.write(realPath + "/" + filename);
				}
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Cập nhật thành công!');");
				out.println("location='hoso';");
				out.println("</script>");
				out.close();
			} else {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Cập nhật không thành công!');");
				out.println("location='hoso_update';");
				out.println("</script>");
				out.close();
			}
		} else {
			if (matkhau.equals(matkhau2)) {
				int kq = nd.editNguoidungCaNhan(obNguoiDung);
				String matkhausha1 = function.function.encryptPassword(matkhau);
				int kq1 = tk.updatePass(taikhoan, matkhausha1);
				if (size > 0) {
					if (!Files.exists(Path.of(realPath))) {
						Files.createDirectory(Path.of(realPath));
					}
					part.write(realPath + "/" + filename);
				}

				if (kq == 1 && kq1 == 1) {
					response.setContentType("text/html; charset=UTF-8");
					PrintWriter out = response.getWriter();
					out.println("<script type=\"text/javascript\">");
					out.println("alert('Cập nhật thành công!');");
					out.println("location='hoso';");
					out.println("</script>");
					out.close();
				} else if (kq == 0 && kq1 == 1) {
					response.setContentType("text/html; charset=UTF-8");
					PrintWriter out = response.getWriter();
					out.println("<script type=\"text/javascript\">");
					out.println("alert('Thông tin chưa được cập nhật!');");
					out.println("location='hoso';");
					out.println("</script>");
					out.close();
				} else {
					response.setContentType("text/html; charset=UTF-8");
					PrintWriter out = response.getWriter();
					out.println("<script type=\"text/javascript\">");
					out.println("alert('Mật khẩu chưa được cập nhật!');");
					out.println("location='hoso';");
					out.println("</script>");
					out.close();
				}

			} else {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Cập nhật tài khoản không thành công!');");
				out.println("location='taikhoan_edit?tk=" + taikhoan + "';");
				out.println("</script>");
				out.close();
			}
		}
	}

}
