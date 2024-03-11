<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/cbtOne.css?after">
<script>
   function change(a){
      //console.log(a);
      //console.log(a.value);
      location.href="list.board?pageNum=1&amount=" + a.value;
   }
   
   function showInfo() {
        document.getElementById("infoDiv").style.display = "block";
    }

    function hideInfo() {
        document.getElementById("infoDiv").style.display = "none";
    }
</script>
</head>
<body>
   <div class="board_wrap">
        <div class="board_title">
            <strong>기출문제(1문제씩)정보처리기사 : 2023년 04월 25일 기출문제</strong>
            <form>
                <select name="change" class="pl" onchange="window.open(this.value);">
                    <option>선택</option>
                    <option value="02.html" selected>1과목 : 소프트웨어 설계</option>
                    <option value="07.html">2과목 : 소프트웨어 개발</option>
                    <option value="12.html">3과목 : 데이터베이스 구축</option>
                    <option value="16.html">4과목 : 프로그래밍 언어 활용</option>
                    <option value="21.html">5과목 : 정보시스템 구축관리</option>
                </select>
              </form>

        </div>
        <form name="frm" method="post" action="CbtServlet">
           <div class="board_view_wrap">
           <c:forEach var="cbt" items="${list}" varStatus="status">
               <div class="board_view">
                  <table>
                  
                        <tr>
                        <th>${cbt.qcode}.&nbsp;&nbsp;${cbt.question }</th>
                         </tr>
                         <tr>
                               <td style="font-weight:bold; font-size:1.6em;"><input type="radio" value="4" class="test1" name="q+${status.count }" id="one+${status.count }"
                              onclick="checkOtherRadio('q+${status.count }','number+${status.count *2}')">
                              <label for="one+${status.count }">1</label> ${cbt.ans1 }</td>
                            </tr>
                            <tr>
                               <td style="font-weight:bold; font-size:1.6em;"><input type="radio" value="4" class="test1" name="q+${status.count }" id="two+${status.count }"
                              onclick="checkOtherRadio('q+${status.count }','number+${status.count *2}')">
                              <label for="two+${status.count }">2</label> ${cbt.ans2 }</td>
                            </tr>
                            <tr>
                               <td style="font-weight:bold; font-size:1.6em;"><input type="radio" value="4" class="test1" name="q+${status.count }" id="three+${status.count }"
                              onclick="checkOtherRadio('q+${status.count }','number+${status.count *2}')">
                              <label for="three+${status.count }">3</label> ${cbt.ans3 }</td>
                            </tr>
                            <tr>
                              <td style="font-weight:bold; font-size:1.6em;"><input type="radio" value="4" class="test1" name="q+${status.count }" id="four+${status.count }"
                              onclick="checkOtherRadio('q+${status.count }','number+${status.count *2}')">
                              <label for="four+${status.count }">4</label> ${cbt.ans4 }</td>
                           </tr>
                              
                      
                 </table>
                 <div class="correct">
                 <input type="button" class="btn3" value="시험보기" onclick="location.href='./cbtstart.jsp'" />
                 <input type="button" class="btn4" value="홈으로" onclick="location.href = './membermain.jsp'" />
                 <input type="button" class="btn4" value="해설보기" onclick="showInfo()" />
               <input type="button" class="btn4" value="해설닫기" onclick="hideInfo()" />               
                 </div><br><br><br><br><br><br><br>
                 <div id="infoDiv" style="display: none; font-size: 1.6em;">
                   <!-- 여기에 해설 정보를 출력합니다 -->
                   <p style="color: red; font-weight:bold;">정답: ${cbt.answer}번</p><br>
                   <p style="font-weight:bold;">${cbt.info}</p>
               </div>
                 <div class="clear"></div>
                 <div class="bt_wrap">
                     <input type="button" class="btn1" value="◀이전" onclick="location.href='CbtServlet?command=onecbt&pageNum=${onepageVO.startPage - 1 }&amount=${onepageVO.amount}'" />
                     <input type="button" class="btn2" value="다음▶" onclick="location.href='CbtServlet?command=onecbt&pageNum=${onepageVO.endPage + 1 }&amount=${onepageVO.amount}'" />
                 </div>
              </div>
              </c:forEach>
          </div>
       </form>
    </div>
</body>
</html>