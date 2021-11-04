

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormPostServlet
 */
@WebServlet("/formPost")
public class FormPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormPostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String temperature = request.getParameter("temperature");
		String age = request.getParameter("age");
		String email = request.getParameter("email");
		String color = request.getParameter("color");
		String homepage = request.getParameter("homepage");
		String birthday = request.getParameter("Birthday");
		String gender = request.getParameter("gender");
		String job = request.getParameter("job");
		String boardType = request.getParameter("boardType");
		String memo = request.getParameter("memo");
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<h1>name = "+ name + "</h1>");
		out.println("<h1>temperature = "+ temperature + "</h1>");
		out.println("<h1>number = "+ age + "</h1>");
		out.println("<h1>email = "+ email + "</h1>");
		out.println("<h1>color = "+ color + "</h1>");
		out.println("<h1>homepage = "+ homepage + "</h1>");
		out.println("<h1>Birthday = "+ birthday + "</h1>");
		out.println("<h1>gender = "+ gender + "</h1>");
		out.println("<h1>job = "+ job + "</h1>");
		out.println("<h1>boardType = "+ boardType + "</h1>");
		out.println("<h1>memo = "+ memo + "</h1>");


	}

}
