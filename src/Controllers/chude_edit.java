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


import Models.chude;

/**
 * Servlet implementation class chude_edit
 */
@WebServlet("/chude_edit")
public class chude_edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id").toString());
		Models.chude model_cd = new Models.chude();
		ArrayList<Objects.chude> cd = model_cd.getchudeX(id);
		request.setAttribute("cd",cd);
		RequestDispatcher rd = request.getRequestDispatcher("chude_edit.jsp");
		rd.forward(request , response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			int id_chude = Integer.parseInt(request.getParameter("txtid_chude"));
			String tenchude = request.getParameter("txttenchude");
			Models.chude model_cd = new Models.chude();
			Objects.chude object_cd = new Objects.chude(id_chude,tenchude);
			int result = model_cd.editChude(object_cd);
			if(result==1)
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Cập nhật chủ đề thành công!');");
				out.println("location='chude';");
				out.println("</script>");
			}
			else
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Cập nhật chủ đề không thành công!');");
				out.println("location='chude_edit.jsp';");
				out.println("</script>");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
