package com.cbt.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cbt.dao.CbtQuDAO;
import com.cbt.dao.CorrectDAO;
import com.cbt.dto.CbtQuVO;
import com.cbt.dto.CorrectVO;

public class CbtWrongComment implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "/cbt/wrongComment.jsp";
		CbtQuDAO cbtquDAO = CbtQuDAO.getInstance();
		CorrectDAO correctDAO = CorrectDAO.getInstance();
		
		List<CbtQuVO> cbtwrongList = cbtquDAO.selectAnswerCheck();
		List<CorrectVO> correctList = correctDAO.selectCorrect(); 
		
		
		request.setAttribute("cbtwrongList", cbtwrongList);
		request.setAttribute("correctList", correctList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
