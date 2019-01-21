package cafe24project;

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
        initArrayList();
        // TODO Auto-generated constructor stub
    }

    private void initArrayList(){
        subjects = new ArrayList();
        subjects.add(new SubjectVO(1, 5132,"JAVA"
              ,Days.Monday.getKr_days(),Days.Wednesday.getKr_days(), Days.Thursday.getKr_days()
              , "1/2교시", "1/2교시", "4/5교시"
              , 2));
        subjects.add(new SubjectVO(2, 2351,"C++"
              ,Days.Tuesday.getKr_days(),Days.Wednesday.getKr_days(),Days.Friday.getKr_days()
              , "4/5교시", "1/2교시", "4/5교시"
              , 3));
        subjects.add(new SubjectVO(3, 9633,"Node.js"
              ,Days.Tuesday.getKr_days(),Days.Thursday.getKr_days(),Days.Friday.getKr_days()
              , "7/8교시", "3/4교시", "1/2교시"
              , 1));
        subjects.add(new SubjectVO(4, 4613,"Python"
              ,Days.Monday.getKr_days(),Days.Tuesday.getKr_days(),Days.Wednesday.getKr_days()
              , "3/4교시", "1/2교시", "3/4교시"
              , 2));
        subjects.add(new SubjectVO(5, 7012,"Angular.js"
              ,Days.Wednesday.getKr_days(),Days.Thursday.getKr_days(),Days.Friday.getKr_days()
              , "4/5교시", "6/7교시", "7/8교시"
              , 1));
        subjects.add(new SubjectVO(6, 3758,"PHP"
                ,Days.Wednesday.getKr_days(),Days.Thursday.getKr_days(),Days.Thursday.getKr_days()
                , "1/5교시", "6/8교시", "7/8교시"
                , 2));
        subjects.add(new SubjectVO(7, 2784,"ASP"
                ,Days.Wednesday.getKr_days(),Days.Monday.getKr_days(),Days.Friday.getKr_days()
                , "3/4교시", "1/3교시", "4/5교시"
                , 2));
        subjects.add(new SubjectVO(8, 3647,"자료구조론"
                ,Days.Monday.getKr_days(),Days.Thursday.getKr_days(),Days.Tuesday.getKr_days()
                , "4/5교시", "2/8교시", "1/7교시"
                , 3));
        subjects.add(new SubjectVO(9, 3434,"확률통계론"
                ,Days.Friday.getKr_days(),Days.Wednesday.getKr_days(),Days.Monday.getKr_days()
                , "1/3교시", "1/2교시", "5/6교시"
                , 2));
        subjects.add(new SubjectVO(10, 8789,"컴퓨터구조"
                ,Days.Thursday.getKr_days(),Days.Thursday.getKr_days(),Days.Friday.getKr_days()
                , "4/5교시", "6/7교시", "7/8교시"
                , 1));
     
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		request.setCharacterEncoding("UTF-8");
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html; charset=UTF-8");
		request.setAttribute("subjects", subjects);
		PrintWriter out = response.getWriter();
		System.out.print(subjects.toString());
		request.getRequestDispatcher("/Course.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
