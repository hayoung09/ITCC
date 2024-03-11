package com.cbt.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cbt.dao.CbtDAO;
import com.cbt.dto.CbtVO;

public class CbtListFormAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/cbt_manager/cbtListForm.jsp";
		CbtDAO cbtDAO = CbtDAO.getInstance();
		List<CbtVO> cbtList = cbtDAO.selectAllBoards();
		request.setAttribute("cbtList", cbtList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}
	
}
