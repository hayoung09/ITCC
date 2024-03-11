package com.cbt.controller.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cbt.dao.ScoreDAO;
import com.cbt.dto.ScoreVO;
import com.community.dao.CommentsDAO;
import com.community.dto.CommunityVO;

import user.UserDTO;

public class CbtScoreGraph implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	       
		String url = "cbt/cbtResult.jsp";
	
		
		int score = Integer.parseInt(request.getParameter("score"));
		System.out.println(score);
		
		HttpSession session = request.getSession();
	    UserDTO loginUser = (UserDTO) session.getAttribute("loginUser");
	    
	    
	    ScoreVO svo = new ScoreVO();
	    svo.setUserId(loginUser.getId());
	    svo.setTestday(new Timestamp(System.currentTimeMillis()));
	    svo.setTestscore(Integer.parseInt(request.getParameter("score")));
	    
		ScoreDAO sdao = ScoreDAO.getInstance();
		sdao.insertScore(svo, loginUser.getId(), new Timestamp(System.currentTimeMillis()) , score);
		
	    List<ScoreVO> scorelist = sdao.listScore(loginUser.getId());
	    System.out.println(scorelist);
	    
	    request.setAttribute("scorelist", scorelist);
	    
	    RequestDispatcher rd = request.getRequestDispatcher(url); //url페이지로 넘어가라
		rd.forward(request, response);
	}

}
