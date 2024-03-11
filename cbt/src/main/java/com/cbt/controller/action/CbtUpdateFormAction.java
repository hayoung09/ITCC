package com.cbt.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cbt.dao.CbtDAO;
import com.cbt.dto.CbtVO;



public class CbtUpdateFormAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/cbt_manager/cbtUpdate.jsp";
		String qcode = request.getParameter("qcode");
		CbtDAO cbtDAO = CbtDAO.getInstance();
		CbtVO cbtVO = cbtDAO.selectOneCbtByNum(qcode);
		request.setAttribute("cbt", cbtVO);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
