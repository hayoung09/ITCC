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

public class CbtAnswerCheck implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "/cbt/cbtResult.jsp";

		String answer = request.getParameter("answer");
		System.out.println(answer);
		
		String[] ans = answer.split(",");

		for (int i = 0; i < ans.length; i++) {
			System.out.print(ans[i]);
		}
		
		System.out.println();

		CbtQuDAO cbtquDAO = CbtQuDAO.getInstance();
		CorrectDAO correctDAO = CorrectDAO.getInstance();

		List<CbtQuVO> cbtCheckList = cbtquDAO.selectAnswerCheck();
		List<CorrectVO> correctList = correctDAO.selectCorrect(); 
		
		System.out.println(cbtCheckList);
		System.out.print(correctList);	

		request.setAttribute("cbtCheckList", cbtCheckList);
		request.setAttribute("correctList", correctList);
		request.setAttribute("ans", ans);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
