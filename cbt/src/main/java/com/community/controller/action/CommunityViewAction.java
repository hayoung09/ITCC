package com.community.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.community.dao.CommentsDAO;
import com.community.dao.CommunityDAO;
import com.community.dto.CommentsVO;
import com.community.dto.CommunityVO;

import user.UserDTO;

public class CommunityViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "community/communityView.jsp";
		
		HttpSession session = request.getSession();
	    UserDTO loginUser = (UserDTO) session.getAttribute("loginUser");
	    
	    CommentsDAO cdao = CommentsDAO.getInstance();
		
		List<CommentsVO> commentslist = cdao.listComments(loginUser.getId()); //전체 정보를 가져와서 리스트로 BoardList로 담는다.
		request.setAttribute("commentslist", commentslist); //페이지에 값을 담겠다(저장). 그래야 다른 페이지로 넘겨줄 때 값을 넘길 수 있음
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		CommunityDAO bdao = CommunityDAO.getInstance();
		bdao.updateReadCount(num);
		
		CommunityVO bvo = bdao.getCommunity(num);
		
		request.setAttribute("community", bvo);
		
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
		
	}

}
