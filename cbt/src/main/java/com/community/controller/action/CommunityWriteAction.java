package com.community.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.community.dao.CommunityDAO;
import com.community.dto.CommunityVO;

import user.UserDTO;

public class CommunityWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
	    UserDTO loginUser = (UserDTO) session.getAttribute("loginUser");
		
		CommunityVO bvo = new CommunityVO();
		bvo.setTitle(request.getParameter("title"));
		bvo.setContent(request.getParameter("content"));
		
		CommunityDAO bdao = CommunityDAO.getInstance();
		bdao.insertCommunity(bvo, loginUser.getId());
		
		new CommunityListAction().execute(request,response);
		
	}
	
}
