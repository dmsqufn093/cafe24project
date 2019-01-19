package src.cafe24project;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cafe24project.Days;
import cafe24project.SubjectVO;

/**
 * Servlet implementation class coursemain
 */
@WebServlet("/coursemain")
public class coursemain extends HttpServlet {
	private static final long serialVersionUID = 1L;
      private ArrayList<SubjectVO> subjects ;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public coursemain() {
        super();
        // TODO Auto-generated constructor stub
    }

    private void initArrayList(){
    	subjects = new ArrayList();
    	subjects.add(new SubjectVO(1, "JAVA",Days.Monday.toString(), "1교시"));
    	subjects.add(new SubjectVO(2, "C++",Days.Tuesday.toString(), "2교시"));
    	subjects.add(new SubjectVO(3, "Node.js",Days.Wednesday.toString(), "3교시"));
    	subjects.add(new SubjectVO(4, "Python",Days.Thursday.toString(), "4교시"));
    	subjects.add(new SubjectVO(5, "Angular.js",Days.Friday.toString(), "5교시"));
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html;charset=UTF-8");
		
		request.setAttribute("subjects", subjects);
		PrintWriter out = response.getWriter();
		out.println("<h1>Hello World</h1>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
