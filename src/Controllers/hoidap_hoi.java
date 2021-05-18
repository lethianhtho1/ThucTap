package Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class hoidap_hoi
 */
@WebServlet("/hoidap_hoi")
public class hoidap_hoi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			String cauhoi = request.getParameter("cauhoi");
			String ngayhoi = java.time.LocalDate.now().toString();
			Models.hoidap hoidap = new Models.hoidap();
			Objects.hoidap object_hd = new Objects.hoidap(0,cauhoi,"",ngayhoi,"","");
			int result = hoidap.insertHoidap(object_hd);
			if(result==1)
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Đã đặt câu hỏi vui lòng đợi trả lời!');");
				out.println("location='hoidap';");
				out.println("</script>");
				out.close();
			}
			else
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Đặt câu hỏi không thành công!');");
				out.println("location='hoidap';");
				out.println("</script>");
				out.close();
			}
			response.sendRedirect("hoidap");
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
