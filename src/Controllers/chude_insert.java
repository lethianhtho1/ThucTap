package Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/chude_insert")
public class chude_insert extends HttpServlet {
	private static final long serialVersionUID = 1L;       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			String tenchude = request.getParameter("txttenchude");
			Models.chude model_cd = new Models.chude();
			Objects.chude object_cd = new Objects.chude(0,tenchude);
			int result = model_cd.insertChude(object_cd);
			if(result==1)
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Thêm chủ đề thành công!');");
				out.println("location='chude';");
				out.println("</script>");
			}
			else
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Thêm chủ đề không thành công!');");
				out.println("location='chude';");
				out.println("</script>");
			}
			out.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
