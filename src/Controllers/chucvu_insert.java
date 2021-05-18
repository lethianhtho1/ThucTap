package Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Models.chucvu;

/**
 * Servlet implementation class chucvu_add
 */
@WebServlet("/chucvu_insert")
public class chucvu_insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			String chucvu = request.getParameter("txtchucvu");
			Models.chucvu model_cv = new Models.chucvu();
			Objects.chucvu object_cv = new Objects.chucvu(0,chucvu);
			int result = model_cv.insertChucvu(object_cv);
			if(result!=0)
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Thêm chức vụ thành công!');");
				out.println("location='chucvu';");
				out.println("</script>");
			}
			else
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Thêm chức vụ không thành công!');");
				out.println("location='chucvu_insert.jsp';");
				out.println("</script>");
			}
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
