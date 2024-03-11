package member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.UserDAO;

/**
 * Servlet implementation class userOutServlet
 */
@WebServlet("/userOut.do")
public class userOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userOutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String userid = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		UserDAO uDao = UserDAO.getInstance();
		int result = uDao.deleteMember(userid, pwd);
		
		HttpSession session = request.getSession();
		
		if(result == 1) {
			System.out.println("회원탈퇴 완료");
			session.invalidate();
			request.setAttribute("outCheck", "success");
			
		}
		else {
			System.out.println("회원탈퇴 실패");
			request.setAttribute("outCheck", "nomatch");
		}
		RequestDispatcher rd = request.getRequestDispatcher("userOut.jsp");
		rd.forward(request, response);
	}	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
