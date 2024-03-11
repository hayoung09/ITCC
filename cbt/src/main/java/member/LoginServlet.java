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
import user.UserDTO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url= "login.jsp";
		HttpSession session = request.getSession();
		if(session.getAttribute("loginUser")!=null) { //이미 로그인된 사용자라면
			url="main.jsp";	
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "login.jsp";
		String userid = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		UserDAO uDao = UserDAO.getInstance();
		int result = uDao.userCheck(userid, pwd);
		
		if(result==1) {
		
			UserDTO uDto = uDao.getUser(userid);
			
			HttpSession session = request.getSession(); 
			
			session.setAttribute("loginUser", uDto);
			
			url="membermain.jsp";
		}
		else if(result==0){
			request.setAttribute("message", "비밀번호가 맞지 않습니다");
			request.setAttribute("loginCheck", "nopwd");
		}
		else if(result==-1){
			request.setAttribute("message", "존재하지 않는 회원입니다");
			request.setAttribute("loginCheck", "no");
		}
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}

}