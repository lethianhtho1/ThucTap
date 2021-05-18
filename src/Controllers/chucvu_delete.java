package Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class chucvu_delete
 */
@WebServlet("/chucvu_delete")
public class chucvu_delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		int id = Integer.parseInt(request.getParameter("id").toString());
		try {
			Models.nguoidung model_nd = new Models.nguoidung();
			model_nd.resetChucvu(id);

			Models.chucvu model_cv = new Models.chucvu();
			int rs = model_cv.deleteChucvu(id);
			if (rs == 1) {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Xóa chức vụ thành công!');");
				out.println("location='chucvu';");
				out.println("</script>");
			} else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Xóa chức vụ không thành công!');");
				out.println("location='chucvu';");
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
