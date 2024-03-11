package com.cbt.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cbt.dao.CbtDAO;



public class CbtDeleteAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String qcode=request.getParameter("qcode");
		CbtDAO cbtDao=CbtDAO.getInstance();
		cbtDao.deleteCbt(qcode);
		new CbtListAction().execute(request, response);
		
	}

}
