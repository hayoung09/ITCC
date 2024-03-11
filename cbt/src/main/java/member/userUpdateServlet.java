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
 * Servlet implementation class PwdchangeServlet
 */
@WebServlet("/userUpdate.do")
public class userUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String userId = request.getParameter("userId");
		String currentPassword = request.getParameter("currentPassword");
		String newPassword = request.getParameter("pwd2");

		System.out.println("아이디 : "+userId);
		System.out.println("현재 pw: "+currentPassword);
		System.out.println("변경할 pw : "+newPassword);
		
//		UserDTO uDto = new UserDTO();
//		uDto.setId(userId);
//		uDto.setPwd(userPwd);
//		uDto.setUpdatePwd(updatePwd);
//		
//		
		UserDAO uDao = UserDAO.getInstance();
		int result = uDao.updateMember(userId,currentPassword,newPassword);
		
		HttpSession session = request.getSession();
		
		if(result == 1) {
//			session.setAttribute("loginUser", uDto);
			System.out.println("변경됨");
		} 
		else {
			System.out.println("변경안됨");
		}
		RequestDispatcher rd = request.getRequestDispatcher("mypage.jsp");
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
