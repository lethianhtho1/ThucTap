package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class banner_upload
 */
@MultipartConfig
@WebServlet("/banner_upload")
public class banner_upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s = request.getParameter("id"); 
		Part part = request.getPart("file");
		String realPath = "F:\\workspace\\WebsiteUyBan\\WebContent\\images\\quangcao\\banner"+s+".png";
		if(part!=null)
		{
			int size = (int) part.getSize();
			if(size>0)
			{
				if (!Files.exists(Path.of(realPath))) {
					Files.createDirectory(Path.of(realPath));
				}
				part.write(realPath);
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Cập nhật thành công!');");
				out.println("location='quanly_anhbia.jsp';");
				out.println("</script>");
				out.close();
			}
		}
		request.getRequestDispatcher("quanly_anhbia.jsp").forward(request, response);
	}

}
