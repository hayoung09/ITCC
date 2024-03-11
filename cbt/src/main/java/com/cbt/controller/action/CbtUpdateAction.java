package com.cbt.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cbt.dao.CbtDAO;
import com.cbt.dto.CbtVO;

public class CbtUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CbtVO cbtVO = new CbtVO();

		cbtVO.setSubject(request.getParameter("subject"));
		cbtVO.setQsubject(request.getParameter("qsubject"));
		cbtVO.setQuestion(request.getParameter("question"));
		cbtVO.setQcode(Integer.parseInt(request.getParameter("qcode")));
		cbtVO.setAns1(request.getParameter("ans1"));
		cbtVO.setAns2(request.getParameter("ans2"));
		cbtVO.setAns3(request.getParameter("ans3"));
		cbtVO.setAns4(request.getParameter("ans4"));
		CbtDAO cbtDAO = CbtDAO.getInstance();
		cbtDAO.updateCbt(cbtVO);
		new CbtListAction().execute(request, response);

	}

}
