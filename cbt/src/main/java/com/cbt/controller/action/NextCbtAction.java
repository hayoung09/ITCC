package com.cbt.controller.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cbt.dao.CbtQuDAO;
import com.cbt.dto.CbtVO;
import com.cbt.dto.PageVO;
import com.cbt.dto.Status;

public class NextCbtAction implements Action{
    
    
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/cbt/section.jsp";
		
        
		int pageNum = 1;
		int amount = 5;
		
		
		// 페이지번호를 클릭하는 경우(고쳐야함)
		if (request.getParameter("pageNum") != null && request.getParameter("amount") != null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
			amount = Integer.parseInt(request.getParameter("amount"));
		}
		/*dao 생성*/
		CbtQuDAO cbtquDAO = CbtQuDAO.getInstance();
		CbtQuDAO cbtqusDAO = CbtQuDAO.getInstance();

		List<CbtVO> cbtList = cbtquDAO.selectOddCbt(pageNum, amount);
		List<CbtVO> cbtevenList = cbtqusDAO.selectEvenCbt(pageNum, amount);
		int total = cbtquDAO.getTotal();

		PageVO pageVO = new PageVO(pageNum, amount, total);
		
		
	        String begin_num = request.getParameter("begin_num");
	        request.setAttribute("begin_num",begin_num);
	        
	        String odd_begin_num = request.getParameter("odd_begin_num");
	        request.setAttribute("odd_begin_num", odd_begin_num);
			
		
		/*status.setCount(pageNum * amount);*/
		
		request.setAttribute("pageVO", pageVO);
		if(pageNum%2==0) {
		request.setAttribute("cbtquList", cbtevenList);
		request.setAttribute("cbtevenList", cbtList);
		}else if(pageNum%2==1) {
			request.setAttribute("cbtquList", cbtList);
			request.setAttribute("cbtevenList", cbtevenList);
		}
		/*session.setAttribute("status", status);*/
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}
	
}
