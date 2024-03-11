package com.cbt.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cbt.dao.CbtQuDAO;
import com.cbt.dao.CorrectDAO;
import com.cbt.dao.OneCbtDAO;
import com.cbt.dto.CbtQuVO;
import com.cbt.dto.CbtVO;
import com.cbt.dto.CorrectVO;
import com.cbt.dto.OnePageVO;

public class OneCbtAction implements Action {

   @Override
   public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String url = "/cbt_one/cbtOne.jsp";
      int pageNum = 1;
      int amount = 1;

      // 페이지번호를 클릭하는 경우
      if (request.getParameter("pageNum") != null && request.getParameter("amount") != null) {
         pageNum = Integer.parseInt(request.getParameter("pageNum"));
         amount = Integer.parseInt(request.getParameter("amount"));
      }

       String one_num = request.getParameter("one_num");
        request.setAttribute("one_num",one_num);
        System.out.println(one_num);

      
      // DAO생성
      //neCbtDAO onecbtdao = OneCbtDAO.getInstance();
      CbtQuDAO onecbtdao = CbtQuDAO.getInstance();

      // 2. pageVO생성
      /*
       * List<CbtVO> list = onecbtdao.getList(pageNum, amount); int total =
       * onecbtdao.getTotal(); // 전체게시글수 OnePageVO onepageVO = new OnePageVO(pageNum,
       * amount, total);
       */
      
      List<CbtQuVO> list = onecbtdao.getList(pageNum, amount);
      int total = onecbtdao.getTotal(); // 전체게시글수
      OnePageVO onepageVO = new OnePageVO(pageNum, amount, total);
      
      CbtQuDAO cbtquDAO = CbtQuDAO.getInstance();
      CorrectDAO correctDAO = CorrectDAO.getInstance();
      
      List<CbtQuVO> cbtwrongList = cbtquDAO.selectAnswerCheck();
      List<CorrectVO> correctList = correctDAO.selectCorrect(); 
      
      
      request.setAttribute("cbtwrongList", cbtwrongList);
      request.setAttribute("correctList", correctList);

      // 3. 페이지네이션을 화면에 전달
      request.setAttribute("onepageVO", onepageVO);

      // 화면에 가지고 나갈 list를 request에 저장 !!
      request.setAttribute("list", list);
      
      RequestDispatcher dispatcher = request.getRequestDispatcher(url);
      dispatcher.forward(request, response);
   }

}