<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% response.setHeader("Pragma", "no-cache"); 
response.setHeader("Cache-Control", "no-cache"); 
response.setHeader("Cache-Control", "no-store"); 
response.setDateHeader("Expires", 0L); 
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <!--          meta 선언          -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--          link 선언          -->
    
    <link rel="stylesheet" href="css/samplequestion.css?v=1">

    <!--          script 선언          -->
    <script src="https://kit.fontawesome.com/e1bd1cb2a5.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>

   <script type="text/javascript" src="javascript/script.js"></script>
    <title>ITCC</title>
</head>
<body>
	<div class = "wrapper">
   <header>
        <div class="header_container">
            <div class="logo_container">
                <a href="./membermain.jsp">ITCC</a>
            </div>
            <div class="nav_container" id="nav_menu">
                <div class="menu_container">
                    <ul class="menu">
                        <li class="menu_1">
                            <a class="menu_title">문제풀기</a>
                            <ul class="menu_1_content">
                                <li><a class="menu_index" href="cbtstart.jsp">실전 모의고사</a></li>
                                <li><a class="menu_index" href="cbt_choose.jsp">기출문제 풀이</a></li>
                            </ul>
                        </li>
                        <li class="menu_2">
                            <a class="menu_title">자료</a>
                            <ul class="menu_2_content">
                                <li><a class="menu_index" href="samplequestion.jsp">기출문제 모음</a></li>
                                <li><a class="menu_index" href="itstudymovie.jsp">IT 영상 자료</a></li>
                            </ul>
                        </li>
                        <li class="menu_3">
                            <a class="menu_title" href = "./community/communityList.jsp">자유게시판</a>
                        </li>
                    </ul>
                </div>
                <form action = "logout.do" method = "post" name = "frm">
                <div class="member_container">
                    <ul class="member">
                    	<a class = "menu_title">${loginUser.username} 님</a>
                    	<li class="menu_logout"><a class="menu_title" href="mypage.jsp">마이페이지</a></li>
                    	<input type = "submit" class = "logout" value = "로그아웃">
                    </ul>
                </div>
                
            </div>
        </div>
    </header>

   <div class="board_wrap">
        <div class="board_title">
            <strong>기출문제 모음</strong>
        </div>
        <div class="board_list_wrap">
            <div class="board_list">
                <div class="top">
                    <div class="num">번호</div>
                    <div class="title">제목</div>
                    <div class="writer">글쓴이</div>
                    <div class="date">작성일</div>
                    <div class="count">조회</div>
                </div>
                <div>
                    <div class="num">1</div>
                    <div class="title"><a href="questiondownload.jsp">정보처리기사 필기 기출문제2022년04월24일</a></div>
                    <div class="writer">박현우</div>
                    <div class="date">2023.03.10</div>
                    <div class="count">42</div>
                </div>
                <div>
                    <div class="num">2</div>
                    <div class="title"><a href="questiondownload1.jsp">정보처리기사 필기 기출문제2022년03월05일</a></div>
                    <div class="writer">박현우</div>
                    <div class="date">2023.03.10</div>
                    <div class="count">42</div>
                </div>
                <div>
                    <div class="num">3</div>
                    <div class="title"><a href="questiondownload2.jsp">정보처리기사 필기 기출문제2021년08월14일</a></div>
                    <div class="writer">박현우</div>
                    <div class="date">2023.03.10</div>
                    <div class="count">42</div>
                </div>
                <div>
                    <div class="num">4</div>
                    <div class="title"><a href="questiondownload3.jsp">정보처리기사 필기 기출문제2021년05월15일</a></div>
                    <div class="writer">박현우</div>
                    <div class="date">2023.03.10</div>
                    <div class="count">42</div>
                </div>
                <div>
                    <div class="num">5</div>
                    <div class="title"><a href="questiondownload4.jsp">정보처리기사 필기 기출문제2021년03월07일</a></div>
                    <div class="writer">박현우</div>
                    <div class="date">2023.03.10</div>
                    <div class="count">42</div>
                </div>
                <div>
                    <div class="num">6</div>
                    <div class="title"><a href="questiondownload5.jsp">정보처리기사 필기 기출문제2020년09월26일</a></div>
                    <div class="writer">박현우</div>
                    <div class="date">2023.03.10</div>
                    <div class="count">42</div>
                </div>
            </div>
            <div class="search">
                <input type="text" placeholder="검색어 입력">
            </div>
        <div class="board_page">
            <a href="#" class="bt first"><<</a>
            <a href="#" class="bt prev"><</a>
            <a href="#" class="num on">1</a>
            <a href="#" class="num">2</a>
            <a href="#" class="num">3</a>
            <a href="#" class="num">4</a>
            <a href="#" class="num">5</a>
            <a href="#" class="bt next">></a>
            <a href="#" class="bt last">>></a>
        </div>
        <div class="bt_wrap">
            <a href="write.html" class="on">등록</a>
            <!--<a href="#">수정</a>-->
        </div>

        </div>
    </div>


    <footer>
	<div class="footer">
	    <ul class="nav">
	        <li class="stipulation"><a href="#" a2s="click" obj="P_MAIN" opt="{&quot;Name&quot;:&quot;Footer&quot;,&quot;Type&quot;:&quot;FM_Stipualtion&quot;}"><span>이용약관</span></a></li>
	        <li class="privacy"><a href="#" a2s="click" obj="P_MAIN" opt="{&quot;Name&quot;:&quot;Footer&quot;,&quot;Type&quot;:&quot;FM_Privacy&quot;}"><span>개인정보처리방침</span></a></li>
	        <li class="youth"><a href="#" a2s="click" obj="P_MAIN" opt="{&quot;Name&quot;:&quot;Footer&quot;,&quot;Type&quot;:&quot;FM_Youthprotection&quot;}"><span>개인정보보호정책</span></a></li>
	        <li class="gameIp"><a href="#" a2s="click" obj="P_MAIN" opt="{&quot;Name&quot;:&quot;Footer&quot;,&quot;Type&quot;:&quot;FM_GameIPguide&quot;}"><span>시험IP사용가이드</span></a></li>
	        <li class="gameTime"><a href="#" a2s="click" obj="P_MAIN" opt="{&quot;Name&quot;:&quot;Footer&quot;,&quot;Type&quot;:&quot;FM_Timekeeper&quot;}"><span>응시과목선택제</span></a></li>
	        <li class="help"><a href="#" a2s="click" obj="P_MAIN" opt="{&quot;Name&quot;:&quot;Footer&quot;,&quot;Type&quot;:&quot;FM_Help&quot;}"><span>고객센터</span></a></li>
	        <li class="totalSrv"><a href="#" a2s="click" obj="P_MAIN" opt="{&quot;Name&quot;:&quot;Footer&quot;,&quot;Type&quot;:&quot;FM_Sitemap&quot;}"><span>전체서비스</span></a></li>
	    </ul>
	    <ul class="nav">
	        <li class="company"><a href="#" target="_blank" a2s="click" obj="P_MAIN" opt="{&quot;Name&quot;:&quot;Footer&quot;,&quot;Type&quot;:&quot;FM_Company&quot;}"><span>회사소개</span></a></li>
	        <li class="recruit"><a href="#" target="_blank" a2s="click" obj="P_MAIN" opt="{&quot;Name&quot;:&quot;Footer&quot;,&quot;Type&quot;:&quot;FM_Career&quot;}"><span>시험안내</span></a></li>
	        <li class="ethics"><a href="#" target="_blank" a2s="click" obj="P_MAIN" opt="{&quot;Name&quot;:&quot;Footer&quot;,&quot;Type&quot;:&quot;FM_Ethics&quot;}"><span>윤리경영</span></a></li>
	        <li class="font"><a href="#" target="_blank" a2s="click" obj="P_MAIN" opt="{&quot;Name&quot;:&quot;Footer&quot;,&quot;Type&quot;:&quot;FM_NexonFont&quot;}"><span>과목확인</span></a></li>
	        <li class="advertise"><a href="#" target="_blank" a2s="click" obj="P_MAIN" opt="{&quot;Name&quot;:&quot;Footer&quot;,&quot;Type&quot;:&quot;FM_Advertise&quot;}"><span>광고문의</span></a></li>
	        <li class="pcroom"><a href="#" target="_blank" a2s="click" obj="P_MAIN" opt="{&quot;Name&quot;:&quot;Footer&quot;,&quot;Type&quot;:&quot;FM_PCbang&quot;}"><span>ICBT</span></a></li>
	    </ul>
	    <address class="address">
	        <span>㈜ICBT-KOREA 대표이사 이승훈, 장하영, 정유림, 박현우</span>
	        <span>경기도 안양시 동안구 시민대로 327번길 55</span>
	        <span>전화 : 1234-5678</span>
	        <span>팩스 : 0502-258-8322</span><br>
	        <span>E-mail : contact-us@seoil.co.kr</span>
	        <span>사업자등록번호 : 220-87-17483호</span>
	        <span>통신판매업 신고번호 : 제2013-경기안양-1659호</span>
	        <a href="#" class="bizinfo" target="_blank" onclick="window.open(this.href, 'ftc', 'width=750, height=700, scrollbars=yes');return false;"><span>사업자정보확인</span></a>
	    </address>
	    <p class="copyright">© ICBT-KOREA Corporation All Rights Reserved.</p>
	</div>
	</footer>
	</div>
</body>
</html>