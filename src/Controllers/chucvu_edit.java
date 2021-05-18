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

@WebServlet("/chucvu_edit")
public class chucvu_edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id").toString());
		Models.chucvu model_cv = new Models.chucvu();
		ArrayList<Objects.chucvu> cv = model_cv.getchucvuX(id);
		request.setAttribute("cv",cv);
		RequestDispatcher rd = request.getRequestDispatcher("chucvu_edit.jsp");
		rd.forward(request , response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			int id_chucvu = Integer.parseInt(request.getParameter("txtid_chucvu"));
			String chucvu = request.getParameter("txtchucvu");
			Models.chucvu model_cv = new Models.chucvu();
			Objects.chucvu object_cv = new Objects.chucvu(id_chucvu,chucvu);
			int result = model_cv.editChucvu(object_cv);
			if(result==1)
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Cập nhật chức vụ thành công!');");
				out.println("location='chucvu';");
				out.println("</script>");
			}
			else
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Cập nhật chức vụ không thành công!');");
				out.println("location='chucvu_edit?id='"+id_chucvu+"';");
				out.println("</script>");
			}
			out.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
