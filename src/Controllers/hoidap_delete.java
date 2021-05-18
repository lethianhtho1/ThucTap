package Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class hoidap_delete
 */
@WebServlet("/hoidap_delete")
public class hoidap_delete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Models.hoidap hd = new Models.hoidap();
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out= response.getWriter();
		int id= Integer.parseInt(request.getParameter("id").toString());
		if(hd.hoidapdelete(id)==1)
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Xóa thành công!');");
			out.println("location='hoidap';");
			out.println("</script>");
			out.close();
		}
		else
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Xóa không thành công!');");
			out.println("location='hoidap';");
			out.println("</script>");
			out.close();
		}
		response.sendRedirect("hoidap");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
