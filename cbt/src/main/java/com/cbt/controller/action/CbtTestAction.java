package com.cbt.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cbt.dao.testDAO;
import com.cbt.dto.CbtVO;
import com.cbt.dto.PageVO;

public class CbtTestAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/test.jsp";
		int pageNum = 1;
		int amount = 5;

		// 페이지번호를 클릭하는 경우
		if (request.getParameter("pageNum") != null && request.getParameter("amount") != null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
			amount = Integer.parseInt(request.getParameter("amount"));
		}

		// DAO생성
		testDAO dao = testDAO.getInstance();

		// 2. pageVO생성
		List<CbtVO> list = dao.getList(pageNum, amount);
		int total = dao.getTotal(); // 전체게시글수
		PageVO pageVO = new PageVO(pageNum, amount, total);

		// 3. 페이지네이션을 화면에 전달
		request.setAttribute("pageVO", pageVO);

		// 화면에 가지고 나갈 list를 request에 저장 !!
		request.setAttribute("list", list);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
