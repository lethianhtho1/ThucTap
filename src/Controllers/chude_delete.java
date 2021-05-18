package Controllers;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class chude_delete
 */
@WebServlet("/chude_delete")
public class chude_delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id").toString());
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			Models.baiviet model_bv1 = new Models.baiviet();
			ArrayList<Objects.baiviet> bv = model_bv1.getBaivietXByMaCD(id);
			for (int i = 0; i < bv.size(); i++) {
				Models.baiviet model_bv = new Models.baiviet();
				model_bv.deleteBaivietByMaCD(id);
				String hinhanh = bv.get(i).getHinhanh();
				File file = new File("F:\\workspace\\WebsiteUyBan\\WebContent\\images\\" + hinhanh);

				if (file.delete()) {
				} else {
					System.out.println("Khong the xoa anh thu: " + i);
				}
			}

			Models.chude model_cd = new Models.chude();
			int result = model_cd.deleteChude(id);
			if (result == 1) {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Xóa chủ đề thành công!');");
				out.println("location='chude';");
				out.println("</script>");
			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Xóa chủ đề không thành công!');");
				out.println("location='chude';");
				out.println("</script>");
			}
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
