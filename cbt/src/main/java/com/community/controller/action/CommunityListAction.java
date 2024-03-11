package com.community.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.community.dao.CommunityDAO;
import com.community.dto.CommunityVO;

import user.UserDTO;

public class CommunityListAction implements Action {

	@Override //인터페이스의 모듈을 여기서 재정의를 이렇게 해주어야함
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/community/communityList.jsp";
		
		HttpSession session = request.getSession();
	    UserDTO loginUser = (UserDTO) session.getAttribute("loginUser");
	    
		CommunityDAO bdao = CommunityDAO.getInstance();
		
		List<CommunityVO> communitylist = bdao.listCommunity(loginUser.getId()); //전체 정보를 가져와서 리스트로 BoardList로 담는다.
		
		request.setAttribute("communitylist", communitylist); //페이지에 값을 담겠다(저장). 그래야 다른 페이지로 넘겨줄 때 값을 넘길 수 있음
		
		RequestDispatcher rd = request.getRequestDispatcher(url); //url페이지로 넘어가라
		rd.forward(request, response);
		
	}
	
}
