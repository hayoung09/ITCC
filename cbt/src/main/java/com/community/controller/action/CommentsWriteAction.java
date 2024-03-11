package com.community.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.community.dao.CommentsDAO;
import com.community.dto.CommentsVO;

import user.UserDTO;

public class CommentsWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
	    UserDTO loginUser = (UserDTO) session.getAttribute("loginUser");
		
		CommentsVO bvo = new CommentsVO();
		bvo.setComments(request.getParameter("comments"));
		
		CommentsDAO bdao = CommentsDAO.getInstance();
		bdao.insertComments(bvo, loginUser.getId());
		
		new CommunityListAction().execute(request,response);
		
	}
	
}
